import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mybatis.dao.ReserveDao;
import mybatis.vo.ReserveList;

public class asdsad {
	public static void main(String[] args) {
		ReserveDao dao = new ReserveDao();
		Map<String, String> map = new HashMap<>();
		map.put("movie_code", "100037");
		map.put("member_code", "admin");
		
		String member_code = "admin";
	//	String movie_code = "100036";
		
		
		List<ReserveList> list= dao.reserve(map);
		
		System.out.println(map);
		System.out.println(list.toString());
		
		
		List<ReserveList> list2= dao.reserveAll(member_code);
		System.out.println(list2.toString());
	}

}
