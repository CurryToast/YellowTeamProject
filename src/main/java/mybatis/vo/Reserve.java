package mybatis.vo;
import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

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
