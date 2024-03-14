package mybatis;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class asd {
    public static void main(String[] args) {
        String temp3 = "2009-12-24 12:00:42";
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // 한국 시간대 설정
        format.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));

        Date schedule;
        try {
            schedule = format.parse(temp3);
            System.out.println(schedule);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}