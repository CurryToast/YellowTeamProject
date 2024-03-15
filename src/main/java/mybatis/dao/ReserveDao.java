package mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Reserve;

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

	public List<Reserve> searchId(String id){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Reserve> list = sqlSession.selectList("reserves.searchId",id);
		log.info("searchId :{}", list);
		sqlSession.close();
		return list;
	}
	
	public List<Object> select(String id){
		SqlSession sqlSession = SqlSessionBean.getSession();
		List<Object> list = sqlSession.selectList("reserves.select",id);
		log.info("select :{}", list);
		sqlSession.close();
		return list;
	}
	
	
	
	
	
	
	
	
	
	
}