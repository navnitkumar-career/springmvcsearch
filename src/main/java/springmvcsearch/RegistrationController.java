package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {

	@RequestMapping("/registrationForm")
	public String displayRegistrationForm() {
		return "registration";
	}

	@RequestMapping(path="/registrationHandler", method = RequestMethod.POST)
	public String registrationHandler(@ModelAttribute("student") Student student , BindingResult result) {
		if(result.hasErrors())
		{
			return "registration";
		}
		System.out.println(student);
		System.out.println(student.getAddress());
		return "successRegistration";
	}
}
