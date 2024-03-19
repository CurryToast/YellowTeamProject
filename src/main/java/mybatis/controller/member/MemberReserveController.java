package mybatis.controller.member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Member;
import mybatis.vo.ReserveList;

public class MemberReserveController implements Controller {

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			HttpSession session = request.getSession();
			String member_code = ((Member)session.getAttribute("user")).getCode();
			
			int sTime = 60*60; 
			session.setMaxInactiveInterval(sTime);
			
			ReserveDao dao = new ReserveDao(); 
			List<ReserveList> list= dao.reserveAll(member_code); 
			String strNewFormatDate =null;
			if (!list.isEmpty()) {
			    ReserveList firstReserve = list.get(0); // 첫 번째 ReserveList 객체 가져오기
			    Date reserveDate = firstReserve.getReserve_date(); // reserve_date 속성 가져오기
			    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			    strNewFormatDate = formatter.format(reserveDate); // 포맷팅된 예약 날짜
			}
			
			ReserveList firstReserve = list.get(0);
			String temp = firstReserve.getMname();
			String mname=null;
					
			for(int i = 0; i < temp.length(); i++) {
				if(temp.charAt(i) != ' ')
					mname += temp.charAt(i);
			}		
					
			request.setAttribute("list", list);
			request.setAttribute("strNewFormatDate", strNewFormatDate);
			request.setAttribute("mname", mname);
			System.out.println(mname);
			 
            RequestDispatcher dispatcher = request.getRequestDispatcher("reserve.jsp");
            dispatcher.forward(request, response);
		}
	}
		
