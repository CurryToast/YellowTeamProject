package mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;
import mybatis.vo.Paging;


@Slf4j
public class MovieSearchDao3 {
	private static MovieSearchDao3 dao = new MovieSearchDao3();
	private MovieSearchDao3() {}
	public static MovieSearchDao3 getInstance() {
		return dao;
	}

	public List<Movie> saleList(Map<String,String> map) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.saleList",map);
		log.info("saleList :{}",list);
		sqlSession.close();
		return list;
	}
	
	public Movie getOne(String mcode) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		Movie book = sqlSession.selectOne("movie.getOne", mcode);
		sqlSession.close();
		return book;
	}
	
}
