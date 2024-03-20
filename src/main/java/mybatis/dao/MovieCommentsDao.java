package mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import mybatis.SqlSessionBean;
import mybatis.vo.MovieComments;

public class MovieCommentsDao {
	private static MovieCommentsDao dao = new MovieCommentsDao();
	private MovieCommentsDao() {}
	public static MovieCommentsDao getInstance() {
		return dao;
	}

	public int insert(MovieComments vo) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int idx = mapperSession.insert("movieComments.insert",vo);
		mapperSession.commit();
		mapperSession.close();
		return idx;
	}
	
	public int delete(int idx) {
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result = mapperSession.delete("movieComments.delete",idx);
		mapperSession.commit();
		mapperSession.close();
		return result;
	}
	
	//idx 최대값 구하기
	public int maxOf() {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.selectOne("movieComments.maxOf");
		session.close();
		return result;
	}

	//메인글의 댓글 갯수 업데이트	
	public int setCommentCount(long idx) {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.update("movieComments.setCommentCount", idx);
		session.commit();
		session.close();
		return result;
	}
	
}
