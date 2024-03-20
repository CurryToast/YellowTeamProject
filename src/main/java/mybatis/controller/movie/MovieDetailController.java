package mybatis.controller.movie;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;

public class MovieDetailController implements Controller {
	
	   @Override
	    public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   MovieDao dao = MovieDao.getInstance();
	        long mcode = Long.parseLong(request.getParameter("mcode"));		// mcode 전달
	        
	        Movie movie = dao.selectMovieById(mcode);

	        request.setAttribute("movie", movie);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("showMovieDetail.jsp");
	        dispatcher.forward(request, response);
	    }
	}