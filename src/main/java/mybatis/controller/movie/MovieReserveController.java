package mybatis.controller.movie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.CinemaDao;
import mybatis.dao.ReserveDao;
import mybatis.vo.Cinema;
import mybatis.vo.Member;
import mybatis.vo.Reserve;

public class MovieReserveController implements Controller {

	private static final Logger logger = LoggerFactory.getLogger(MovieReserveController.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int result=0;
			request.setCharacterEncoding("UTF-8");
			HttpSession session = request.getSession();
			String member_code = ((Member)session.getAttribute("user")).getCode();
			  String temp2=request.getParameter("cinemas"); 
			  String movie_code=request.getParameter("movie_code"); 
			  String scheduleDate=request.getParameter("schedule"); 
			  String seatsAll= request.getParameter("seatsAll");
			  System.out.println("seatsAll:"+seatsAll);
			  logger.info(temp2);
			  int theater = 0;
			  if (temp2.length() != 0) {
				  theater = Integer.parseInt(temp2);}
			  
			  String[] seatarr= seatsAll.split(",");
			

			ReserveDao dao = new ReserveDao();
			Reserve reserve=null;
			List<Reserve> reservearr = new ArrayList<Reserve>();
			
			for (String seat : seatarr) {
			    System.out.println(seat);
			    reserve = new Reserve(0, member_code, theater, movie_code, scheduleDate, null, seat);
			    result = dao.insert(reserve);
			    reservearr.add(reserve);
			    System.out.println("reserve"+reserve);
			}
			
			request.setAttribute("reserve", reservearr);
			System.out.println("reservearr"+reservearr.toArray());
			
			logger.info("Reserve: {}", reserve);
            logger.info("Result: {}", result);
			System.out.println(reserve);
			
			if (result == 0) {
				response.setContentType("text/html; charset=UTF-8");
				response.sendRedirect("reserve");
			}
			
			response.sendRedirect("complete"+"?movie_code="+movie_code);
		}

	}
