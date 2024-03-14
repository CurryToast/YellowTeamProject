package mybatis.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class Member {
	private String code;
   @Setter
	private String password;
	private String name;
	private String isadmin;
	private int age;
	private Date regdate;
}
