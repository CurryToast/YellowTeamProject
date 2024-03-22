package mybatis.controller.movie;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lombok.extern.slf4j.Slf4j;
import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Reserve;

@Slf4j
public class MovieReserveController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result=0;
		request.setCharacterEncoding("UTF-8");
	    String member_code= request.getParameter("member_code"); 
	    String temp2=request.getParameter("theater"); 
	    String movie_code=request.getParameter("movie_code"); 
	    String scheduleDate=request.getParameter("schedule"); 
	    String seatsAll= request.getParameter("seatsAll");
	    int price = 10000;

	    int theater = 0;
	    if (temp2.length() != 0) {
	    	theater = Integer.parseInt(temp2);
	    }

		String[] seatarr= seatsAll.split(",");

		ReserveDao dao = new ReserveDao();
		Reserve reserve=null;
		List<Reserve> reservearr = new ArrayList<Reserve>();

		for (String seat : seatarr) {
			reserve = new Reserve(0, member_code, theater, movie_code, scheduleDate, null, seat, price);
		    result = dao.insert(reserve);
		    reservearr.add(reserve);
		}

		request.setAttribute("reserve", reservearr);
		log.info("Reserve: {}", reserve);
		log.info("Result: {}", result);

		if (result == 0) {
			response.setContentType("text/html; charset=UTF-8");
			response.sendRedirect("reserve");
		}

		response.sendRedirect("complete"+"?movie_code="+movie_code+"&member_code="+member_code);

	}
}
