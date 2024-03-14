package mybatis.controller.api;

import java.io.BufferedReader;
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
import mybatis.controller.service.Memberservice;
import mybatis.vo.Member;

public class ApiMemberJoinController implements Controller {

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
		ObjectMapper objMapper = new ObjectMapper();
		Member member = objMapper.readValue(sb.toString(), Member.class);
		
		Memberservice pas = new Memberservice();
		pas.join(member);
		
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("회원가입이 완료되었습니다.");
	}

}
