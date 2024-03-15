package mybatis.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
public class ReserveList {
	private String member_code;
	private String MNAME;
	private String schedule;
	private Date reserve_date;
	private int rating;
	private int theater;
	private int rcode;
	private String seat;
//	private String movie_code;
	
	
	
}
