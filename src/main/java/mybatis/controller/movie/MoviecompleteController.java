package mybatis.controller.movie;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;
import mybatis.dao.ReserveDao;
import mybatis.vo.Reserve;

public class MoviecompleteController implements Controller {

	@Override
public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("complete.jsp");
			dispatcher.forward(request, response);
		
		}
	}
		
