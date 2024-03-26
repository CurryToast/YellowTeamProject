package mybatis.service;

import java.util.List;
import mybatis.dao.ReserveDao;
import mybatis.vo.Payment;
import mybatis.vo.Reserve;

public class MovieService {
	ReserveDao rdao = ReserveDao.getInstance();
	
	public int mService(List<Reserve> list,Payment movie) {
		int result1=0;
		int result2=0;
		try {
			result1 = rdao.insertArr(list);
			result2 = rdao.saleOne(movie);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result1+result2;
	}
}




