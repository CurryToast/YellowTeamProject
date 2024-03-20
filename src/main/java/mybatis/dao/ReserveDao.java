package mybatis.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Reserve;
import mybatis.vo.ReserveList;
import mybatis.vo.SalePayDetails;

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
	
	
	public int saleOne(SalePayDetails movie) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		int result=0;	
		try{
			result = sqlSession.insert("movie.saleOne",movie);
			sqlSession.commit();
		}catch(Exception e) {
			log.warn("영화 결제 오류 : {}",e.getMessage());
			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}	
		return result;
	}

	public static ReserveDao getInstance() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	
	
	
	
}