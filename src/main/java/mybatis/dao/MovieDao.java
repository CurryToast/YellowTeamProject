package mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;

@Slf4j
public class MovieDao {
	private static MovieDao dao = new MovieDao();
	private MovieDao() {}
	public static MovieDao getInstance() {
		return dao;
	}
	
	public List<Movie> selectAll() {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movies.selectAll");
		log.info("selectAll :{}", list);
		sqlSession.close();
		return list;
	}
}
