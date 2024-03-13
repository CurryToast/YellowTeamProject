package mybatis.controller;

import java.util.HashMap;
import java.util.Map;

import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.controller.movie.MovieReserveController;
import mybatis.controller.movie.MovieReservePostController;


public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();

	public static void init() {
		// 테스트를 위해 매핑 : 모든 멤버 가져오는 비동기 api
		mapping.put(new RequestKeyValue("/api/member", "POST"), new ApiGetAllMembersController());
		mapping.put(new RequestKeyValue("/movie/reserve", "GET"), new MovieReserveController() );
		mapping.put(new RequestKeyValue("/movie/reserve", "POST"), new MovieReservePostController() );
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
