package mybatis.moviesearch;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
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

import com.fasterxml.jackson.databind.ObjectMapper;


import lombok.extern.slf4j.Slf4j;
import mybatis.controller.Controller;
import mybatis.dao.MovieSearchDao;
import mybatis.vo.Movie;


@Slf4j
public class MovieSearchListController implements Controller {
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 json 읽어오기 
		request.setCharacterEncoding("UTF-8");
		InputStream inputStream=request.getInputStream();
		BufferedReader br=new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
		
		StringBuffer sb=new StringBuffer(); 
		String line=null;
		
		while((line=br.readLine())!=null) {
			sb.append(line);
			log.info("line : {}", line);
		}
		
	
		ObjectMapper objMapper=new ObjectMapper();
		@SuppressWarnings("unchecked")
		Map<String, Object> map=objMapper.readValue(sb.toString(), Map.class);
		log.info("map : {}", map);
		
		MovieSearchDao dao= new MovieSearchDao();
		List<Movie> list= dao.search(map);
		
		String jsonData=null;
		jsonData=objMapper.writeValueAsString(list);
		log.info("전송할 json 문자열 : {}", jsonData);
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonData);
		
	}
}
