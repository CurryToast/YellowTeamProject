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
   
   private int mcode;            // 영화 코드   
   private String mname;         // 영화 제목
   private String genre;         // 영화 장르
   private String director;         // 영화 감독
   private String release_date;   // 영화 개봉일
   private String producer;      // 제작사와 배급사
   private String running_time;   // 영화 상영 시간
   private int rating;            // 관람 등급
   private String synopsys;      // 줄거리
   private double mgrade;      // 평점
   private String country;         //   제작 나라
   private String mcast;         //   출연진
   private String poster;         // 포스터

}