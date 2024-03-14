package mybatis.movie;

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


import mybatis.controller.Controller;

import mybatis.dao.MovieSearchDao3;
import mybatis.vo.Movie;



public class MovieSearchListController3 implements Controller {

	@Override
 	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		MovieSearchDao3 dao = MovieSearchDao3 .getInstance();
		List<Movie> list = dao.saleList(null);
		
		request.setAttribute("saleList", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("bookcase.jsp");
		dispatcher.forward(request, response);
	 
 	}	
}
