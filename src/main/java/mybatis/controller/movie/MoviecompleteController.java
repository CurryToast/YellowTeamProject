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

public class MoviecompleteController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(MovieReserveController.class);

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("---------------------------");
			
			//@@수정필요@@@로그인 후에는 세션에 남아있는 멤버 코드를 가져오도록함 , 현재는 url에서 가져오기
				//HttpSession session = request.getSession();
				//String member_code = (String)session.getAttribute("member_code");
				
			String member_code = request.getParameter("member_code"); 
			String movie_code = request.getParameter("movie_code"); 
				
			ReserveDao dao = new ReserveDao(); 
			Map<String, String> map = new HashMap<>();
			map.put("movie_code", movie_code); 
			map.put("member_code", member_code);
			  
			List<ReserveList> list= dao.reserve(map); 
			request.setAttribute("list", list);
			 
			logger.info("movie_code: {}", movie_code);
			logger.info("member_code: {}", member_code);
            logger.info("list: {}", list);
			
			
            RequestDispatcher dispatcher = request.getRequestDispatcher("complete.jsp");
            dispatcher.forward(request, response);
		
		}
	}
		
