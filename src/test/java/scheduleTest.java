import static org.junit.jupiter.api.Assertions.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.jupiter.api.Test;

import lombok.extern.slf4j.Slf4j;
import mybatis.dao.MovieDao;

@Slf4j
class scheduleTest {

	@Test
	void test() {
		MovieDao dao = MovieDao.getInstance();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mcode", 201);
		map.put("genre", "공포, 다큐멘터리");
		map.put("cidx", 2);
		map.put("schedule", "2024-03-16");
		dao.updateMovie(map);
	}

}
