package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

	@RequestMapping("/HomePage")
	public String homePage() {
		System.out.println("Home Page");
		String string = null;
		// System.out.println(string.length());
		return "homePage";
	}

	@RequestMapping("/searchHandler")
	public RedirectView search(@RequestParam("txtSearch") String searchQuery) {

		String url = "https://www.google.com/search?q=" + searchQuery;
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(url);
		return redirectView;
	}

	@RequestMapping("/UserDetails/{userId}/{userName}")
	public String getUserDetails(@PathVariable("userId") int userid, @PathVariable("userName") String username) {
		System.out.println(userid);
		return "homePage";
	}

	/*
	 * @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	 * 
	 * @ExceptionHandler(value = NullPointerException.class) public String
	 * exceptionHandletNull(Model model) { model.addAttribute("message",
	 * "Null Pointer Exception"); return "nullExceptionPage"; }
	 * 
	 * @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	 * 
	 * @ExceptionHandler(value = NumberFormatException.class) public String
	 * exceptionHandletNumber(Model model) { model.addAttribute("message",
	 * "Number Pointer Exception"); return "numberExceptionPage"; }
	 * 
	 * @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	 * 
	 * @ExceptionHandler(value = Exception.class) public String
	 * exceptionHandletGeneric(Model model) { model.addAttribute("message",
	 * "Exception occured"); return "numberExceptionPage"; }
	 */
}
