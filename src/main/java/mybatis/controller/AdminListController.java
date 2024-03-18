package mybatis.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import mybatis.dao.MemberDao;
import mybatis.vo.Member;

public class AdminListController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = MemberDao.getInstance();
		List<Member> list = dao.selectAdmin();
		request.setAttribute("list", list);
		ObjectMapper objectMapper = new ObjectMapper();
		String jsonData = null;
		jsonData = objectMapper.writeValueAsString(list);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonData);
		
	}

}
