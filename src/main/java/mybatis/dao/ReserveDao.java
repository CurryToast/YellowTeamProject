package mybatis.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Reserve;
import mybatis.vo.ReserveList;

@Slf4j
public class ReserveDao {

	public int insert(Reserve vo){
		SqlSession sqlSession = SqlSessionBean.getSession();
		int result = 0;
		result = sqlSession.insert("reserves.insert",vo);
		log.info("insert :{}", result);
		sqlSession.commit();
		sqlSession.close();
		return result;
	}
	
	public int delete(Map<String, String> map) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		int result = 0;
		result = sqlSession.delete("reserves.delete",map);
		sqlSession.commit();
		sqlSession.close();
		log.info("delete :{}", result);
		return result;
	}

	public List<ReserveList> reserveAll(String member_code){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<ReserveList> list = sqlSession.selectList("reserves.reserveAll",member_code);
		log.info("reserveAll :{}", list);
		sqlSession.close();
		return list;
	}
	
	public List<ReserveList> reserve(Map<String,String> map){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<ReserveList> list = sqlSession.selectList("reserves.reserve",map);
		log.info("reserve :{}", list);
		sqlSession.close();
		return list;
	}
}