package kh.spring.fongdang.common;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:fongdang.properties")
public class MailSendUtil {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNumber;
	
	public void makeRandomNumber() {
		Random r= new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("-------------------------------");
		System.out.println("인증번호:\t" + checkNum + "\n");
		System.out.println("-------------------------------\n");
		authNumber = checkNum;
	}
	
	// 이메일 보낼 양식
	public String joinEmail(String email) {
		makeRandomNumber();
		String setFrom = "${email.account}";
		String toMail = email;
		String title= "[퐁당] 웹사이트 비밀번호 인증 안내[웹개발테스트]"; // 이메일 제목
		String content = "홈페이지를 방문해주셔서 감사합니다."
				+	"<br><br>"
				+	"인증 번호는 [" + authNumber + "]입니다."
				+	"<br>"
				+	"해당 인증번호를 인증번호 확인란에 입력해주세요.";
		mailSend(setFrom, toMail, title, content);		
		return Integer.toString(authNumber);
	}
	
	// 이메일 전송 메소드
	private void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		//true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content, true);
			mailSender.send(message);
		} catch(MessagingException e) {
			e.printStackTrace();
		}
		
	}
}
