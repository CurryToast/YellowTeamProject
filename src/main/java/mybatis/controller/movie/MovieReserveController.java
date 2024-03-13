package mybatis.controller.movie;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Reserve;
public class MovieReserveController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int result;
		String method = request.getMethod();
		if(method.equals("GET")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("reserve.jsp");
			dispatcher.forward(request, response);
		}else if(method.equals("POST")) {
			request.setCharacterEncoding("UTF-8");
			
			
			String temp= "4";
			String member_code= "admin";
			String temp2= "2";
			String movie_code= "10037";
			String temp3= request.getParameter("2024-03-13");
			String seat= request.getParameter("seat");
			
			
			
//실제 적용용			
//			String temp= request.getParameter("rcode");
//			String member_code= request.getParameter("member_code");
//			String temp2= request.getParameter("theater");
//			String movie_code= request.getParameter("movie_code");
//			String temp3= request.getParameter("schedule");
//			String seat= request.getParameter("seat");
			
			int rcode = 0;
			if(temp.length() != 0) rcode= Integer.parseInt(temp);
			int theater = 0;
			if(temp2.length() != 0) theater= Integer.parseInt(temp2);
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분");
			java.util.Date schedule = null;
			try {
				schedule = formatter.parse(temp3);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			ReserveDao dao = new ReserveDao();
			Reserve vo = new Reserve(rcode, member_code, theater, movie_code, null, schedule, seat);
			result = dao.insert(vo);
			
			
			String message="예매가 완료되었습니다";
			if(result==0) {
				message="예매 오류가 생겼습니다.";
				response.setContentType("text/html; charset=UTF-8");
				System.out.println(message);
				response.sendRedirect("reserve");
			}
			response.sendRedirect("complete");}
		}
	}
		
