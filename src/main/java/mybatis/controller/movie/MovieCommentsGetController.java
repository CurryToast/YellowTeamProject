package mybatis.controller.movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.controller.Controller;
import mybatis.dao.MovieCommentsDao;
import mybatis.vo.MovieComments;

public class MovieCommentsGetController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieCommentsDao dao = MovieCommentsDao.getInstance();
		List<MovieComments> list = dao.selectAll();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("comments.jsp");
		dispatcher.forward(request, response);
	}
}
