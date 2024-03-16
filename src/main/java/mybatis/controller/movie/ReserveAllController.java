package mybatis.controller.movie;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.ReserveList;

public class ReserveAllController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(ReserveAllController.class);

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			//@@수정필요@@@로그인 후에는 세션에 남아있는 멤버 코드를 가져오도록함 , 현재는 url에서 가져오기
			//HttpSession session = request.getSession();
			//String member_code = (String)session.getAttribute("member_code");
			String member_code = request.getParameter("member_code"); 
				
			ReserveDao dao = new ReserveDao(); 
			List<ReserveList> list= dao.reserveAll(member_code); 
			request.setAttribute("list", list);
			 
            RequestDispatcher dispatcher = request.getRequestDispatcher("complete.jsp");
            dispatcher.forward(request, response);
		}
	}
		
