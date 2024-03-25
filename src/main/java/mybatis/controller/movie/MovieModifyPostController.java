package mybatis.controller.movie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;
import mybatis.controller.Controller;
import mybatis.dao.MovieDao;

@Slf4j
public class MovieModifyPostController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		InputStream inputStream = request.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
		StringBuffer sb = new StringBuffer();
		String line = null;
		
		while((line = br.readLine()) != null) {
			sb.append(line);
		}
		log.info("json : {}",sb.toString());

		ObjectMapper objMapper = new ObjectMapper();
		@SuppressWarnings("unchecked")
		Map<String, Object> map = objMapper.readValue(sb.toString(), Map.class);
		log.info("map : {}", map);

		MovieDao dao = MovieDao.getInstance();
		int result = dao.modify(map);
		
		if (result == 1) {
			response.sendRedirect("");
		}
	}
}
