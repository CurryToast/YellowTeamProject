package mybatis.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Movie {
	private int mcode;
	private String mname;
	private String genre;
	private String director;
	private String release_date;
	private String producer;
	private String running_time;
	private int rating;
	private String synopsys;
	private int mgrade;
	private String country;
	private String mcast;
	private String poster;

}
