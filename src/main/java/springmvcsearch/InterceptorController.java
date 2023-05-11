package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class InterceptorController {

	@RequestMapping("/InterceptorPage")
	public String displayRegistrationForm() {
		return "interceptorHomePage";
	}
	
	@RequestMapping("/interceptorHandler")
	public String search(@RequestParam("txtSearch") String searchQuery , Model model) {

		System.out.println(searchQuery);
		model.addAttribute("searchQueryName",searchQuery);
		return "interceptorSuccessPage";
	}
}
