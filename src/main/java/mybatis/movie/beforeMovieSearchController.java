package mybatis.movie;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mybatis.controller.Controller;



public class beforeMovieSearchController implements Controller {

   private static final Logger logger = LoggerFactory.getLogger(beforeMovieSearchController.class);

   @Override
   public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      RequestDispatcher dispatcher = request.getRequestDispatcher("search_list.jsp");
      dispatcher.forward(request, response);

   }

}