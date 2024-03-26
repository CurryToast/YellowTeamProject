package mybatis.controller.movie;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.MemberDao;
import mybatis.dao.MovieDao;
import mybatis.dao.ScheduleDao;
import mybatis.vo.Member;
import mybatis.vo.Movie;
import mybatis.vo.Schedule;

public class MovieDetailController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(MovieDetailController.class);
	
	   @Override
	    public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		   MovieDao dao = MovieDao.getInstance();
		   ScheduleDao schedule = ScheduleDao.getInstance();
		   long mcode = Long.parseLong(request.getParameter("mcode"));
		
		   List<Movie> list = null;
	        
		   	Movie movie = dao.selectMovieById(mcode);
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
		   
		   HttpSession session = request.getSession();
		   String member_code;
		try {
			member_code = ((Member)session.getAttribute("user")).getCode();
		    request.setAttribute("member_code", member_code);
		    MemberDao mdao = new MemberDao();
		    int age = mdao.getAge(member_code);
		    request.setAttribute("member_age", age);
		} catch (Exception e) {
			e.printStackTrace();
		}
		   
		   Calendar cal = Calendar.getInstance();
		   cal.add(Calendar.MONTH, 1);
		   
		   Date condate = new Date(cal.getTimeInMillis());
	        
	        request.setAttribute("color", color); // 관람가 색상 정보
			request.setAttribute("movie", movie); // movie
			request.setAttribute("date", date); //schedule (상영일자) 정보
			request.setAttribute("condition", condate); // 1달 기준 정보 

	        RequestDispatcher dispatcher = request.getRequestDispatcher("showMovieDetail.jsp");
	        dispatcher.forward(request, response);
	        
	    }
	}
