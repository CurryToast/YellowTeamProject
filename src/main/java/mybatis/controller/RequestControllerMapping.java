package mybatis.controller;

import java.util.HashMap;
import java.util.Map;

import mybatis.controller.RequestKeyValue;
import mybatis.controller.member.LoginActionController;
import mybatis.controller.member.LoginViewController;
import mybatis.controller.member.LogoutController;

import mybatis.controller.api.ApiCheckIdController;
import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.controller.api.ApiMemberJoinController;
import mybatis.controller.member.AuthCertSMSController;
import mybatis.controller.member.MemberJoinController;
import mybatis.controller.member.MemberSaveController;

import mybatis.movie.ApiGetAllMoviesController;
import mybatis.movie.ApiMovieSearchController;
import mybatis.movie.MovieSearchController;



public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();

	public static void init() {
		mapping.put(new RequestKeyValue("/api/auth/checkId", "POST"), new ApiCheckIdController());
		mapping.put(new RequestKeyValue("/api/member", "POST"), new ApiGetAllMembersController()); // 메소드 수정 필요
		mapping.put(new RequestKeyValue("/api/auth/join", "POST"), new ApiMemberJoinController());

		//회원가입
		mapping.put(new RequestKeyValue("/join","GET"), new MemberJoinController());
		mapping.put(new RequestKeyValue("/join","POST"), new MemberSaveController());
		mapping.put(new RequestKeyValue("/auth/cert/sms","GET"), new AuthCertSMSController());

		//로그인
		mapping.put(new RequestKeyValue("/login", "GET"), new LoginViewController());
		mapping.put(new RequestKeyValue("/login", "POST"), new LoginActionController());
		mapping.put(new RequestKeyValue("/logout", "GET"), new LogoutController());

		// Movie
		mapping.put(new RequestKeyValue("/movie/search", "GET"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/movie/search", "PUT"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/api/movie", "GET"), new ApiGetAllMoviesController());
		mapping.put(new RequestKeyValue("/api/movie", "PUT"), new ApiMovieSearchController());
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
