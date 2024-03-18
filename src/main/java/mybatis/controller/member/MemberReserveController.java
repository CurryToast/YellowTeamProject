package mybatis.controller.member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.ReserveList;

public class MemberReserveController implements Controller {

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			//@@수정필요@@@로그인 후에는 세션에 남아있는 멤버 코드를 가져오도록함 , 현재는 url에서 가져오기
			//HttpSession session = request.getSession();
			//String member_code = (String)session.getAttribute("member_code");
			String member_code = request.getParameter("member_code"); 
				
			ReserveDao dao = new ReserveDao(); 
			List<ReserveList> list= dao.reserveAll(member_code); 
			String strNewFormatDate =null;
			if (!list.isEmpty()) {
			    ReserveList firstReserve = list.get(0); // 첫 번째 ReserveList 객체 가져오기
			    Date reserveDate = firstReserve.getReserve_date(); // reserve_date 속성 가져오기
			    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			    strNewFormatDate = formatter.format(reserveDate); // 포맷팅된 예약 날짜
			    
			    System.out.println(strNewFormatDate); // 포맷팅된 예약 날짜 출력
			    
			}
			request.setAttribute("list", list);
			request.setAttribute("strNewFormatDate", strNewFormatDate);
			 
            RequestDispatcher dispatcher = request.getRequestDispatcher("reserve.jsp");
            dispatcher.forward(request, response);
		}
	}
		
