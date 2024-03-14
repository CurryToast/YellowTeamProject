package mybatis.movie;

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


public class MovieSearchController implements Controller {

	private static final Logger logger = LoggerFactory.getLogger(MovieSearchController.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("test_list.jsp");
		dispatcher.forward(request, response);

	}

}
