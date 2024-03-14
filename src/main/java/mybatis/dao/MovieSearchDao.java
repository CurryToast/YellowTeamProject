package mybatis.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;


@Slf4j
public class MovieSearchDao {
	private static MovieSearchDao dao = new MovieSearchDao();
	public MovieSearchDao() {}
	public static MovieSearchDao getInstance() {
		return dao;
	}
	public List<Movie> saleList(Map<String,String> map) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.saleList",map);
		log.info("saleList :{}",list);
		sqlSession.close();
		return list;
	}
	
	public List<Movie> search(Map<String, Object> map){
		SqlSession sqlSession =  SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.search",map);
		log.info("search :{}", list);
		sqlSession.close();
		return list;
	}
	
	public List<Movie> selectAll() {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.selectAll");
		log.info("selectAll :{}", list);
		sqlSession.close();
		return list;
	}
	
	public List<Movie> selectBymname(String mname) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBymname", mname);
		log.info("selectBymname :{}", list);
		sqlSession.close();
		return list;
	
	}
	public List<Movie> selectBygenre(String genre) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBygenre", genre);
		log.info("selectBygenre :{}", list);
		sqlSession.close();
		return list;
	
	}
	public List<Movie> selectBydirector(String director) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBydirector", director);
		log.info("selectBydirector :{}", list);
		sqlSession.close();
		return list;
	
	}
	public List<Movie> selectByreleasedate(Date release_date) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBydate", release_date);
		log.info("selectByreleasedate :{}", list);
		sqlSession.close();
		return list;
	}
	public List<Movie> selectByproducer(String producer) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getByproducer", producer);
		log.info("selectByproducer :{}", list);
		sqlSession.close();
		return list;
	
	}
	
	
	public List<Movie> selectByrunning_time(Date running_time) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBytime", running_time);
		log.info("selectByrunning_time :{}", list);
		sqlSession.close();
		return list;
	
	}
	public List<Movie> selectByrating(String rating) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getByrating", rating);
		log.info("selectByrating :{}", list);
		sqlSession.close();
		return list;
	
	}
	
	public List<Movie> selectBymgrade(double mgrade) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBymgrade", mgrade);
		log.info("selectBymgrade :{}", list);
		sqlSession.close();
		return list;
	
	}
	
	public List<Movie> selectBycountry(String country) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBycountry", country);
		log.info("selectBycountry :{}", list);
		sqlSession.close();
		return list;
	
	}
	public List<Movie> selectBymcast(String mcast) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> list = sqlSession.selectList("movie.getBymcast", mcast);
		log.info("selectBymcast :{}", list);
		sqlSession.close();
		return list;
	
	}
	
	
}
