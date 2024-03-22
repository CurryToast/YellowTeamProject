package mybatis.vo;

import java.sql.Timestamp;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;
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
public class Payment {
	private int mcode;
	private String id;
	private int amount;
	@JsonFormat(shape = Shape.STRING,pattern = "yyyy-MM-dd'T'HH:mm:ssXXX")
	private Timestamp paydate;
	private String paytype;
	private String paymentkey;

}

enum PayType {
	Kakao, Toss
}