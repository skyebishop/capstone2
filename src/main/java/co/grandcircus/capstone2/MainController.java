package co.grandcircus.capstone2;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MainController {
	
	@Autowired
	private UserRepository urep;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@PostMapping("/login")
	public String login(Integer id, String email, String password, Model model) {
		
		User user = urep.findFirstByEmail(email).orElse(null);
		if (user == null) {
			return "fail";
		}
		else {
			if (user.getPassword().compareTo(password) ==0) {
				session.setAttribute("user", user);
				model.addAttribute("user", user);
				return "profile";
			}
			else {
				return "fail";
			}
		}
		
	}
	

}
