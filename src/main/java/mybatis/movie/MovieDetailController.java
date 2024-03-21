package mybatis.movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;

public class MovieDetailController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(MovieDetailController.class);
	
	   @Override
	    public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   MovieDao dao = MovieDao.getInstance();
		   long mcode = Long.parseLong(request.getParameter("mcode"));
	        
	     Movie movie = dao.selectMovieById(mcode);
	     int rating = movie.getRating();
	        
		   String color=null;
		   
		   if (rating == 0) {
			   color = "green";
		   } else if (rating == 12) {
			   color = "orange";
		   } else if (rating == 15) {
			   color = "blue";
		   } else if (rating == 18) {
			   color = "red";
		   } else {
			   color = "";
		   }
	        
	        
	        request.setAttribute("color", color);
			request.setAttribute("movie", movie); 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("showMovieDetail.jsp");
	        dispatcher.forward(request, response);
	    }
	}
