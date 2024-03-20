package mybatis.controller.api;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.AwsCredentialsProvider;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3AsyncClient;
import software.amazon.awssdk.transfer.s3.S3TransferManager;
import software.amazon.awssdk.transfer.s3.model.CompletedFileUpload;
import software.amazon.awssdk.transfer.s3.model.FileUpload;
import software.amazon.awssdk.transfer.s3.model.UploadFileRequest;
import software.amazon.awssdk.transfer.s3.progress.LoggingTransferListener;

public class ApiMovieRegisterController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		InputStream inputStream = request.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
		StringBuffer sb = new StringBuffer();
		String line = null;
		while ((line = br.readLine()) != null) {
			sb.append(line);
		}

		ObjectMapper objMapper = new ObjectMapper();
		Movie movie = objMapper.readValue(sb.toString(), Movie.class);

		MovieDao dao = MovieDao.getInstance();
		int result = dao.insert(movie);

		StringBuffer responseStr = new StringBuffer("");
		if (result == 1) {
			String bucket = "https://yellows3.s3.ap-northeast-2.amazonaws.com/";
			String key = "share/poster/";
			String accessKey = "AKIAW3MD76D233OOFXJW";
			String secretKey = "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";
			AwsCredentialsProvider creds = StaticCredentialsProvider.create(AwsBasicCredentials.create(accessKey, secretKey));
			S3AsyncClient s3AsyncClient = S3AsyncClient.crtBuilder()
	                .credentialsProvider(creds)
	                .region(Region.AP_NORTHEAST_2)
	                .targetThroughputInGbps(20.0)
	                .minimumPartSizeInBytes((long) (10*1024*1024))
	                .build();

	        S3TransferManager transferManager = S3TransferManager.builder()
	                .s3Client(s3AsyncClient)
	                .build();

	        UploadFileRequest uploadFileRequest = UploadFileRequest.builder()
	                                                               .putObjectRequest(req -> req.bucket(bucket).key(key))
	                                                               .addTransferListener(LoggingTransferListener.create())
	                                                               .source(new File(movie.getPosterUrl()))
	                                                               .build();

	        FileUpload upload = transferManager.uploadFile(uploadFileRequest);
	        CompletedFileUpload uploadResult = upload.completionFuture().join();

			responseStr.append("등록 성공 : " + uploadResult);
		} else {
			responseStr.append("등록 실패");
		}

		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(responseStr.toString());
	}
}
