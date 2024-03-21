package mybatis.controller.movie;

import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;


public class MovieListController implements Controller {

	@Override
 	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		MovieDao dao = MovieDao.getInstance();
		List<Movie> list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("search_list.jsp");
		dispatcher.forward(request, response);
	}

}
