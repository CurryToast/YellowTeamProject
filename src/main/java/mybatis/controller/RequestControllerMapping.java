package mybatis.controller;

import java.util.HashMap;
import java.util.Map;



import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.movie.ApiGetAllMoviesController;
import mybatis.movie.ApiMovieSearchController;
import mybatis.movie.MovieSearchController;
import mybatis.movie.ReadController;


public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();

	public static void init() {
		// 테스트를 위해 매핑 : 모든 멤버 가져오는 비동기 api
		mapping.put(new RequestKeyValue("/api/member", "POST"), new ApiGetAllMembersController());

		// Movie
		mapping.put(new RequestKeyValue("/movie/search", "GET"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/movie/search", "PUT"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/api/movie", "GET"), new ApiGetAllMoviesController());
		mapping.put(new RequestKeyValue("/api/movie", "PUT"), new ApiMovieSearchController());
		mapping.put(new RequestKeyValue("/movie/read", "GET"), new ReadController() );
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
