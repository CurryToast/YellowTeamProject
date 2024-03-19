package mybatis.controller;

import java.util.HashMap;
import java.util.Map;

import mybatis.controller.api.ApiGetAllMembersController;
import mybatis.controller.member.LoginActionController;
import mybatis.controller.member.LoginViewController;
import mybatis.controller.member.LogoutController;
import mybatis.controller.member.MyPageController;
import mybatis.controller.movie.MovieCommentsGetController;
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
		mapping.put(new RequestKeyValue("/movie/comments", "GET"), new MovieCommentsGetController() );
		//mapping.put(new RequestKeyValue("/movie/comments", "POST"), new MovieCommentsPOSTController() );
		mapping.put(new RequestKeyValue("/movie/complete", "GET"), new MoviecompleteController() );
		
		//로그인
		mapping.put(new RequestKeyValue("/login", "GET"), new LoginViewController());
		mapping.put(new RequestKeyValue("/login", "POST"), new LoginActionController());
		mapping.put(new RequestKeyValue("/logout", "GET"), new LogoutController());
		
		//마이페이지
		mapping.put(new RequestKeyValue("/myPage","GET"), new MyPageController());
		//mapping.put(new RequestKeyValue("/member/modify","GET"), new MemberModifyController());
		//mapping.put(new RequestKeyValue("/api/modify","POST"), new ApiMemberModifyController());
		//mapping.put(new RequestKeyValue("/member/drop","GET"),new MemberDropController());
		//mapping.put(new RequestKeyValue("/admin/join","GET"),new AdminJoinController());
		//mapping.put(new RequestKeyValue("/admin/save","POST"),new AdminSaveController());
		//mapping.put(new RequestKeyValue("/api/auth/adminJoin","POST"),new ApiAdminJoinController());
		
		
	}

	// url,method 필드를 저장하는 key 를 전달받아 HashMap에서 value(컨트롤러)를 리턴
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
