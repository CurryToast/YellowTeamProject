package mybatis.dao;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;
import mybatis.vo.Schedule;

@Slf4j
public class MovieDao {
	private static MovieDao dao = new MovieDao();
	private MovieDao() {}
	public static MovieDao getInstance() {
		return dao;
	}
	
	// 영화 전체 보기
	public List<Movie> selectAllMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectAll");
		sqlSession.close();
		return movies;
	}
	
		// 현재 상영 중
	public List<Movie> selectCurrentMovies() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<Movie> movies = sqlSession.selectList("movies.selectCurrentMovies");
        sqlSession.close();
        return movies;
    }
	
	 public List<Schedule> getCurrentMovies() {
	        SqlSession sqlSession = SqlSessionBean.getSession();
	        List<Schedule> schedules = sqlSession.selectList("movies.getCurrentMovies");
	        sqlSession.close();
	        return schedules;
	    }
	
	// 상영 예정작
	public List<Movie> selectUpcomingMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectUpcomingMovies");
		sqlSession.close();
		return movies;
	}
	public List<Schedule> getUpcomingMovies() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<Schedule> schedules = sqlSession.selectList("movies.getUpcomingMovies");
        sqlSession.close();
        return schedules;
    }
	
	// 상영 종료작
	public List<Movie> selectEndMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectEndMovies");
		sqlSession.close();
		return movies;
	}
	
	public List<Schedule> getEndMovies() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<Schedule> schedules = sqlSession.selectList("movies.getEndMovies");
        sqlSession.close();
        return schedules;
    }
	
	// mcode(클릭하게 되면) -> 영화 정보 가져오기
	public Movie selectMovieById(long mcode) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		Movie movie = sqlSession.selectOne("movies.selectMovieById", mcode);
		sqlSession.close();
		return movie;
	}
	
	public int count() {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.selectOne("movies.count");
		mapperSession.close();
		return result;
	}
	
	// 영화 한 번에 10개씩 가져오도록 변경
	public List<Movie> pagelist(Map<String, Integer> map) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<Movie> list = mapperSession.selectList("movies.pagelist", map);
		mapperSession.close();
		return list;
	}
	
}
