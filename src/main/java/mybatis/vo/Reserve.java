package mybatis.vo;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import java.util.Date;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Reserve {
	private int rcode;
	private String member_code;
	private int theater;
	private String movie_code;
	private Date reserve_date;
	private Date schedule;
	private String seat;
	
}
