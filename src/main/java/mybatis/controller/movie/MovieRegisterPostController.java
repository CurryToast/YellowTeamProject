package mybatis.controller.movie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import mybatis.controller.Controller;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;

public class MovieRegisterPostController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String path = "/opt/tomcat/upload";
		int maxSize = 8*1024*1024;

		MultipartRequest multiRequest = new MultipartRequest(
			request, 
			path,
			maxSize,
			"UTF-8",
			new DefaultFileRenamePolicy()
		);

		String mname = multiRequest.getParameter("mname");
		String genre = multiRequest.getParameter("genre");
		String director = multiRequest.getParameter("director");
		String release_date = multiRequest.getParameter("release_date");
		String producer = multiRequest.getParameter("producer");
		int rating = Integer.parseInt(multiRequest.getParameter("rating"));
		String running_time = multiRequest.getParameter("running_time");
		String synopsys = multiRequest.getParameter("synopsys");
		double mgrade = Double.parseDouble(multiRequest.getParameter("mgrade"));
		String country = multiRequest.getParameter("country");
		String mcast = multiRequest.getParameter("mcast");
		String poster = multiRequest.getFilesystemName("poster");

		MovieDao dao = MovieDao.getInstance();
		int result = dao.insert(new Movie(
			0, mname, genre, director, release_date,
			producer, rating, running_time, synopsys, mgrade,
			country, mcast, poster.replace(".jpg", ""), 0, null, 0, null
		));

		if (result == 1) {
			response.sendRedirect("modify");
		} else {
			response.setContentType("text/plain;charset=UTF-8");
			response.getWriter().print("<script>alert(\"등록 실패\")</script>");
		}
	}
}
