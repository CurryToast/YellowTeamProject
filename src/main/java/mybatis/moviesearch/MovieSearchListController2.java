package mybatis.moviesearch;

import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.MovieSearchDao2;
import mybatis.vo.Paging;


public class MovieSearchListController2 implements Controller {

	private static final Logger logger = LoggerFactory.getLogger(MovieSearchListController2.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		logger.info(":::::::: 요청 {} 처리 시작 : {} ::::::::",this.getClass(),request.getServletPath());
		int currentPage = 1;	
		MovieSearchDao2 dao = MovieSearchDao2.getInstance();

		String page=request.getParameter("page");
		if(page != null) currentPage = Integer.parseInt(page);		
		int pageSize=10;		
		int totalCount =0;
	
		String findText = request.getParameter("findText");  
		String column = request.getParameter("column");		
		if(column!=null && (column.equals("none") || column.length()==0))
				column=null;
		
		Map<String, String> findMap = null;
		if(findText!=null) {   
			findMap = new HashMap<String, String>();
			findMap.put("findText", findText);
			findMap.put("column", column);
			
		}
		totalCount = dao.count(findMap);
		
		Paging paging = new Paging(currentPage, totalCount, pageSize);
		logger.info(":::::::: ListController paging : {} ::::::::",paging);
		paging.setFind(findMap);
		
	
		request.setAttribute("list", dao.list(paging));
		
		HttpSession session = request.getSession();
		session.setAttribute("paging", paging);
		
		request.setAttribute("today", LocalDate.now());
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("test_list2.jsp");
		dispatcher.forward(request, response);

	}

}
