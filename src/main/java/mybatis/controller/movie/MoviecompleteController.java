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

public class MoviecompleteController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(MovieReserveController.class);

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("---------------------------");
		
			request.setAttribute("list2", request.getAttribute("list"));
			/*
			 * String movie_code = request.getParameter("movie_code"); String member_code =
			 * request.getParameter("member_code");
			 * 
			 * ReserveDao dao = new ReserveDao(); Map<String, String> map = new HashMap<>();
			 * map.put("movie_code", movie_code); map.put("member_code", member_code);
			 * 
			 * List<String> list= dao.select(map); request.setAttribute("list", list);
			 */
			
			Object list = request.getAttribute("list");
			Object list2 = request.getAttribute("list2");
			
            logger.info("list: {}", list);
            logger.info("list2: {}", list2);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("complete.jsp");
			dispatcher.forward(request, response);
		
		}
	}
		