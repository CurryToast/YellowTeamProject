package mybatis.movie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Reserve;
import mybatis.vo.ReserveList;

public class MovieReserveController implements Controller {

	private static final Logger logger = LoggerFactory.getLogger(MovieReserveController.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int result=0;
		String method = request.getMethod();
		if (method.equals("GET")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("reserve.jsp");
			dispatcher.forward(request, response);
		} else if (method.equals("POST")) {
			request.setCharacterEncoding("UTF-8");
	  
			  String member_code= request.getParameter("member_code"); 
			  String temp2=request.getParameter("theater"); 
			  String movie_code=request.getParameter("movie_code"); 
			  String scheduleDate=request.getParameter("schedule"); 
			  String seatsAll= request.getParameter("seatsAll");
			  //String seats= request.getParameter("seats");
			  //logger.info("seat:{}",seats);
			  //System.out.println("seat:"+seats);
			  System.out.println("seatsAll:"+seatsAll);
				/*
				 * logger.info("reserve POST : {} {} {} {} {}"
				 * ,member_code,temp2,movie_code,scheduleDate,seat);
				 */			  
			  int theater = 0;
			  if (temp2.length() != 0)
				  theater = Integer.parseInt(temp2);
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
			
			//logger.info("list: {}", list);
			logger.info("Reserve: {}", reserve);
            logger.info("Result: {}", result);
			System.out.println(reserve);

			if (result == 0) {
				response.setContentType("text/html; charset=UTF-8");
				response.sendRedirect("reserve");
			}
			
			response.sendRedirect("complete"+"?movie_code="+movie_code+"&member_code="+member_code);
		}

	}
}
