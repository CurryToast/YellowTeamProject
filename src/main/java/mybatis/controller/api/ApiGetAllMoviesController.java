package mybatis.controller.api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import mybatis.controller.Controller;
import mybatis.dao.MovieCommentsDao;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;
import mybatis.vo.MovieComments;

public class ApiGetAllMoviesController implements Controller {
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException {
		int num = 0;
		if (
			request.getParameter("comments") != null &&
			!request.getParameter("comments").isEmpty()
		) {
			num = Integer.parseInt(request.getParameter("comments"));
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("comments", num);

		ObjectMapper objmapper = new ObjectMapper();
		MovieDao dao = MovieDao.getInstance();
		List<Movie> list = dao.getSearch(map);
		
		if (
			request.getParameter("allComments") != null &&
			request.getParameter("allComments").equals("true")
		) {
			MovieCommentsDao comDao = MovieCommentsDao.getInstance();
			List<MovieComments> comments = comDao.selectAll();
			list.forEach((item) -> {
				if (item.getComments() > 0) {
					Map<String, String> cl = new HashMap<String, String>();
					comments.forEach(cm -> {
						if (cm.getMcode() == item.getMcode()) {
							cl.put(cm.getWriter(), cm.getContent());
						}
					});

					item.setCommentMap(cl);
				}
			});
		}

		String jsonData = objmapper.writeValueAsString(list);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonData);
	}
}
