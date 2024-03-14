package mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Movie;

@Slf4j
public class MovieDao {
	
	// 영화 전체 보기
	public List<Movie> selectAllMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectAll");
		log.info("전체 영화: {}", movies);
		sqlSession.close();
		return movies;
	}
	
	// 현재 상영 중
	public List<Movie> selectCurrentMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectCurrentMovies");
		log.info("현재 상영 중인 영화: {}", movies);
		sqlSession.close();
		return movies;
	}
	
	// 상영 예정작
	public List<Movie> selectUpcomingMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectUpcomingMovies");
		log.info("상영 예정 영화: {}", movies);
		sqlSession.close();
		return movies;
	}
	
	// 상영 종료작
	public List<Movie> selectEndMovies(){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Movie> movies = sqlSession.selectList("movies.selectEndMovies");
		log.info("상영 종료 영화: {}", movies);
		sqlSession.close();
		return movies;
	}
	
	// mcode(클릭하게 되면) -> 영화 정보 가져오기
	public Movie selectMovieById(long mcode) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		Movie movie = sqlSession.selectOne("movies.selectMovieById", mcode);
		log.info("영화 정보: {}", movie);
		sqlSession.close();
		return movie;
	}
	
	
}
