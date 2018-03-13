package spring.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CookieController {
		
		@RequestMapping("/cookie/make.do")
		public String make(HttpServletResponse response) {
			response.addCookie(new Cookie("auth", "abc"));
			return "redirect:/cookie/view.do";
		}
		
		@RequestMapping("/cookie/view.do")
		public void view(@CookieValue(value="auth", defaultValue="0") String auth) {
			System.out.println("auth 쿠키 : " + auth);
			/*return "cookie/view";*/
	}

}
