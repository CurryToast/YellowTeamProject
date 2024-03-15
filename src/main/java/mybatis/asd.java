package mybatis;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;

public class asd {
    public static void main(String[] args) throws ServletException {
    	String temp2="2024-03-13";
    	Date schedule = null;
        try {
            schedule = new SimpleDateFormat("yyyy-MM-dd").parse(temp2);
        } catch (ParseException e) {
            throw new ServletException("Error parsing schedule date", e);
        }
        System.out.println(schedule);
}
}