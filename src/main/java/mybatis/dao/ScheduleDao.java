package mybatis.dao;


import org.apache.ibatis.session.SqlSession;
import lombok.extern.slf4j.Slf4j;
import mybatis.SqlSessionBean;
import mybatis.vo.Schedule;

@Slf4j
public class ScheduleDao {
	
	public Schedule selectDate(long mcode){
	    SqlSession sqlSession = SqlSessionBean.getSession();
	    Schedule schedule = sqlSession.selectOne("schedules.selectDate", mcode);
	    log.info("schedule 정보: {}", schedule);
	    sqlSession.close();
	    return schedule;
	}

}
