package mybatis.vo;

import java.sql.Date;
import java.sql.Timestamp;

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
	private String mcode; 	//코드
	private String mname;	//제목
	private String genre;	//장르
	private String director;	//감독
	private Date release_date;	//개봉일
	private String producer;	//제작사 및 배급사	
	private int rating;            // 관람 등급
	private String running_time;	//상영시간
	private String synopsys;	//줄거리	
	private double mgrade;	//평점
	private String country;	//국가
	private String mcast;	//배우
	private String poster;         // 포스터

	

}
