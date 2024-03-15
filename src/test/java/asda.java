import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.Test;

import mybatis.dao.ReserveDao;
import mybatis.vo.ReserveList;

class asda {

	@Test
	void test() {

	ReserveDao dao = new ReserveDao();
	Map<String, String> map = new HashMap<>();
	map.put("movie_code", "admin");
	map.put("member_code", "100036");
	List<ReserveList> list = dao.select(map);
	
	System.out.println(map);
	System.out.println(list);
	list.toArray();
	list.toString();
	
	}

}
