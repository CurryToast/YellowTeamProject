package mybatis.controller;

import java.util.HashMap;
import java.util.Map;
import mybatis.controller.api.ApiAdminJoinController;
import mybatis.controller.api.ApiCheckIdController;
import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.controller.api.ApiGetAllMoviesController;
import mybatis.controller.api.ApiMemberJoinController;
import mybatis.controller.api.ApiMemberModifyController;
import mybatis.controller.api.ApiMovieSearchController;
import mybatis.controller.member.AdminJoinController;
import mybatis.controller.member.AdminSaveController;
import mybatis.controller.member.AuthCertSMSController;
import mybatis.controller.member.LoginActionController;
import mybatis.controller.member.LoginViewController;
import mybatis.controller.member.LogoutController;
import mybatis.controller.member.MemberDropController;
import mybatis.controller.member.MemberJoinController;
import mybatis.controller.member.MemberModifyController;
import mybatis.controller.member.MemberSaveController;
import mybatis.controller.member.MyPageController;
import mybatis.controller.movie.MovieDetailController;
import mybatis.controller.movie.MovieListController;
import mybatis.controller.movie.MovieReserveController;
import mybatis.controller.movie.MovieReserveGetController;
import mybatis.controller.movie.MoviecompleteController;


public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();

	public static void init() {
		// API
		mapping.put(new RequestKeyValue("/api/auth/checkId", "POST"), new ApiCheckIdController());
		mapping.put(new RequestKeyValue("/api/member", "POST"), new ApiGetAllMembersController()); // 메소드 수정 필요
		mapping.put(new RequestKeyValue("/api/auth/join", "POST"), new ApiMemberJoinController());
		mapping.put(new RequestKeyValue("/api/modify","POST"),new ApiMemberModifyController());
		mapping.put(new RequestKeyValue("/api/auth/adminJoin", "POST"), new ApiAdminJoinController());
		mapping.put(new RequestKeyValue("/api/movie", "GET"), new ApiGetAllMoviesController());
		mapping.put(new RequestKeyValue("/api/movie", "PUT"), new ApiMovieSearchController());
		
		//회원가입
		mapping.put(new RequestKeyValue("/admin/join","GET"), new AdminJoinController());
		mapping.put(new RequestKeyValue("/admin/join","POST"), new AdminSaveController());
		mapping.put(new RequestKeyValue("/join","GET"), new MemberJoinController());
		mapping.put(new RequestKeyValue("/join","POST"), new MemberSaveController());
		mapping.put(new RequestKeyValue("/auth/cert/sms","GET"), new AuthCertSMSController());

		// 회원 정보 | 탈퇴 | 마이페이지
		mapping.put(new RequestKeyValue("/member/modify","GET"),new MemberModifyController());
		mapping.put(new RequestKeyValue("/member/drop","GET"),new MemberDropController());
		mapping.put(new RequestKeyValue("/myPage","GET"), new MyPageController());
		
		//로그인
		mapping.put(new RequestKeyValue("/login", "GET"), new LoginViewController());
		mapping.put(new RequestKeyValue("/login", "POST"), new LoginActionController());
		mapping.put(new RequestKeyValue("/logout", "GET"), new LogoutController());

		// Movie
		mapping.put(new RequestKeyValue("/movie/list", "GET"), new MovieListController() );
		mapping.put(new RequestKeyValue("/movie/list", "POST"), new MovieListController() );
		mapping.put(new RequestKeyValue("/movie/showMovieDetail", "GET"), new MovieDetailController());
		mapping.put(new RequestKeyValue("/movie/reserve", "GET"), new MovieReserveGetController() );
		mapping.put(new RequestKeyValue("/movie/reserve", "POST"), new MovieReserveController() );
		mapping.put(new RequestKeyValue("/movie/complete", "GET"), new MoviecompleteController() );
		mapping.put(new RequestKeyValue("/movie/search", "GET"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/movie/search", "PUT"), new MovieSearchController());
		mapping.put(new RequestKeyValue("/movie/read", "GET"), new ReadController() );
		//mapping.put(new RequestKeyValue("/movie/list", "POST"), new MovieListController() );
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
