package mybatis.movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;

public class ApiGetAllMoviesController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper objmapper = new ObjectMapper();
		MovieDao dao = MovieDao.getInstance();
		List<Movie> list = dao.selectAll();

		String jsonData = objmapper.writeValueAsString(list);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonData);
	}
}
