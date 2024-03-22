package mybatis.vo;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import java.util.Date;
@Getter
@AllArgsConstructor
@EqualsAndHashCode

public class Reserve {
	private int rcode;
	private String member_code;
	private int theater;
	private String movie_code;
	private String scheduleDate;
	private Date reserve_date;
	private Date schedule;
	private String seat;
	private int price;
	
	public Reserve(int rcode, String member_code, int theater, String movie_code, String scheduleDate,
			Date reserve_date, String seat,int price) {
		super();
		this.rcode = rcode;
		this.member_code = member_code;
		this.theater = theater;
		this.movie_code = movie_code;
		this.scheduleDate = scheduleDate;
		this.reserve_date = reserve_date;
		this.seat = seat;
		this.price = price;
	}
}