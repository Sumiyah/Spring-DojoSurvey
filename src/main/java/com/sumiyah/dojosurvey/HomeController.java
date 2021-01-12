package com.sumiyah.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}

	@RequestMapping(value = "/process", method = RequestMethod.POST)
	public String process(@RequestParam(value = "name") String name,
			@RequestParam(value = "dojo") String dojo,
			@RequestParam(value = "language") String language,
			@RequestParam(value="comment") String comment, 
			HttpSession session, 
			RedirectAttributes rAttributes
			) {
		if (!name.isEmpty() && !dojo.isEmpty() && !language.isEmpty()) {
			session.setAttribute("resultn", (name));
			session.setAttribute("resultd", (dojo));
			session.setAttribute("resultl", (language));
			session.setAttribute("resultc", (comment));
			return "redirect:/result";
		}

//		rAttributes.addFlashAttribute("nameError", "Name cannot be empty");
//		rAttributes.addFlashAttribute("dojoError", "Location cannot be empty");
//		rAttributes.addFlashAttribute("languageError", "Language cannot be empty");
		return "redirect:/";

	}

	@GetMapping("/result")
	public String result() {
		return "result.jsp";
	}

}
