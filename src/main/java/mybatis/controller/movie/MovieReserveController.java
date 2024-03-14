package mybatis.controller.movie;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Reserve;

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
			  Object temp2=request.getAttribute("theater"); 
			  String movie_code=request.getParameter("movie_code"); 
			  String temp3=request.getParameter("schedule"); 
			  String seat= request.getParameter("seat");
			  
			  int theater = 0;
			  if (((String) temp2).length() != 0)
				  theater = Integer.parseInt(((String) temp2));
			  
			  Date schedule = null;
	            try {
	                schedule = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(temp3);
	            } catch (ParseException e) {
	                logger.error("Error parsing schedule date", e);
	                throw new ServletException("Error parsing schedule date", e);
	            }
			

			ReserveDao dao = new ReserveDao();
			Reserve reserve = new Reserve(0, member_code, theater, movie_code, null, schedule, seat);
			request.setAttribute("reserve", reserve);
			result = dao.insert(reserve);
			
			List<Object> list= dao.select(member_code);
			request.setAttribute("list", list);

			
			logger.info("Reserve: {}", reserve);
            logger.info("Result: {}", result);
			System.out.println(reserve);
			System.out.println(result);

			if (result == 0) {
				response.setContentType("text/html; charset=UTF-8");
				response.sendRedirect("reserve");
			}
			response.sendRedirect("complete");
		}

	}
}
