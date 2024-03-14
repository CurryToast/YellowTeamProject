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
public class Cinema {
	private int idx;
	private String name;
	private String address;
	private String phone;
	private int theater;
}
