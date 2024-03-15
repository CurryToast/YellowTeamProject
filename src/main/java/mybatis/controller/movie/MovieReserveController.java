package mybatis.controller.movie;

import java.io.IOException;
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

		int result;
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
			  String seat= request.getParameter("seat");
			  logger.info("reserve POST : {} {} {} {} {}"
					  ,member_code,temp2,movie_code,scheduleDate,seat);
			  int theater = 0;
			  if (temp2.length() != 0)
				  theater = Integer.parseInt(temp2);
			  
			

			ReserveDao dao = new ReserveDao();
			Reserve reserve = new Reserve(0, member_code, theater, movie_code, scheduleDate, null, seat);
			result = dao.insert(reserve);
			request.setAttribute("reserve", reserve);
			
			
			/*
			 * Map<String, String> map = new HashMap<>(); map.put("movie_code", movie_code);
			 * map.put("member_code", member_code);
			 * 
			 * List<ReserveList> list= dao.select(map); request.setAttribute("list", list);
			 * request.setAttribute("list.scheduleDate", scheduleDate);
			 * request.setAttribute("list.movie_code", movie_code);
			 * 
			 */
			
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
