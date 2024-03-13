package mybatis.controller.movie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.controller.Controller;


public class MovieReservePostController implements Controller {

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title=request.getParameter("title");
		String writer=request.getParameter("writer");
		String content=request.getParameter("content");
		String ip = request.getRemoteAddr();
		
		/*vo 만들어서 저장
		 * Community vo = Community.builder()
				.title(title)
				.writer(writer)
				.content(content)
				.ip(ip)
				.build();*/
		
	/*	CommunityDao dao = CommunityDao.getInstance();
		long result = dao.insert(vo);*/
		
		//이후 삭제할 것
		int result =1 ;
		if(result!=0) {
			response.sendRedirect("complete");
		}else {
			//메인화면으로 이동
			response.sendRedirect(request.getContextPath());
		}
			
	}
		
		
		
	

}
