package mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;
import mybatis.vo.Paging;


@Slf4j
public class MovieSearchDao2 {
	private static MovieSearchDao2 dao = new MovieSearchDao2();
	private MovieSearchDao2() {}
	public static MovieSearchDao2 getInstance() {
		return dao;
	}

	public List<Movie> list(Paging paging) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Movie> list = mapperSession.selectList("movie.getList",paging);
		mapperSession.close();
		return list;
	}
	
	public int count(Map<String, String> map) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.selectOne("movie.count",map);
		mapperSession.close();
		return result;
	
	}
	public Movie read(int idx) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		Movie vo = mapperSession.selectOne("movie.getOne",idx);
		mapperSession.close();
		return vo;
	}
	
	public int write(Movie movie) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.insert("movie.insert",movie);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	
	public int update(Movie movie) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.update("movie.update",movie);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	
	public int delete(int idx) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.update("movie.delete",idx);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	
	public List<Movie> search(Map<String,Object> map){
		SqlSession sqlSession =  SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.search",map);
		sqlSession.close();
		return list;
	}
	
	
	
	
}
