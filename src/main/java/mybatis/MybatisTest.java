package mybatis;

import lombok.extern.slf4j.Slf4j;
import mybatis.dao.MovieDao;
import mybatis.vo.Movie;

@Slf4j
public class MybatisTest {
	public static void main(String[] args) {
		MovieDao dao = MovieDao.getInstance();
		Movie vo = dao.getOne(100023);

		log.info("vo : {}", vo);
	}
}
