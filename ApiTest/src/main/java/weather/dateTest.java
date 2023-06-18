package weather;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class dateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LocalDate nowDate = LocalDate.now();
		DateTimeFormatter formatterDate = DateTimeFormatter.ofPattern("yyyyMMdd");
		String formatedDate = nowDate.format(formatterDate);
		
		LocalTime nowTime = LocalTime.now();
		DateTimeFormatter formatterTime = DateTimeFormatter.ofPattern("HHmm");
		String formatedTime = nowTime.format(formatterTime);
		
		
		System.out.println(formatedDate);
		System.out.println(formatedTime);
	}

}
