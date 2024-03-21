package mybatis.controller.movie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.dao.ScheduleDao;
import mybatis.vo.Movie;
import mybatis.vo.Schedule;

public class MovieDetailController implements Controller {
   @Override
    public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   MovieDao dao = MovieDao.getInstance();
	   ScheduleDao schedule = ScheduleDao.getInstance();
	   long mcode = Long.parseLong(request.getParameter("mcode"));
        
	   	Movie movie = dao.selectByIdx(mcode);
	   	int rating = movie.getRating();
	   	
	   Schedule date = schedule.selectDate(mcode);
        
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
		request.setAttribute("date", date);

        RequestDispatcher dispatcher = request.getRequestDispatcher("showMovieDetail.jsp");
        dispatcher.forward(request, response);
    }
}
