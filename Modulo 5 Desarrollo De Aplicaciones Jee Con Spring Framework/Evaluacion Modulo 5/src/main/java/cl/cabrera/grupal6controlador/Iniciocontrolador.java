package cl.cabrera.grupal6controlador;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Iniciocontrolador {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	
	public String indexinicio() {
		
		return "index"; //se llama al jsp
		
	}
	
	@RequestMapping(value = "Linkindex", method = RequestMethod.GET)
	public String index() {
	
		return "index";
	}
	
	
	
	
	
	@RequestMapping("/error")
    public String error(ModelMap model)
    {
        model.addAttribute("error", "true");
        return "login";
    }

    @RequestMapping("/login")
    public String login()
    {
       
        return "login";
    }
    
    @RequestMapping("logout")
    public String logout()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
        	SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/logout"; 
    }
    
    @RequestMapping("/accessdenied")
    public String accessdenied(Model model) {
        return "denegado";
    }
    
    
 

}
