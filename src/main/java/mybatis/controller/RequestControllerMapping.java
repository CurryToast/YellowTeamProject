package mybatis.controller;

import java.util.HashMap;
import java.util.Map;

import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.controller.member.MemberReserveController;
import mybatis.controller.movie.MovieReserveController;
import mybatis.controller.movie.MoviecompleteController;


public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();

	public static void init() {
		mapping.put(new RequestKeyValue("/api/member", "POST"), new ApiGetAllMembersController());
		mapping.put(new RequestKeyValue("/movie/list", "GET"), new MovieListController() );
		mapping.put(new RequestKeyValue("/movie/list", "POST"), new MovieListController() );
		mapping.put(new RequestKeyValue("/movie/reserve", "GET"), new MovieReserveController() );
		mapping.put(new RequestKeyValue("/movie/reserve", "POST"), new MovieReserveController() );
		mapping.put(new RequestKeyValue("/movie/complete", "GET"), new MoviecompleteController() );
		mapping.put(new RequestKeyValue("/member/reserve","GET"), new MemberReserveController());
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
