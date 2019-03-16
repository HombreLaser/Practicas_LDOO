package fcfm.ldoo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

@Controller
public class ControladorCliente {
	@RequestMapping(value = "/cliente", method = RequestMethod.GET)
	public ModelAndView cliente() {
		return new ModelAndView("cliente", "command", new Cliente());
	}
	
	@RequestMapping(value = "/addCliente", method = RequestMethod.POST)
	public String addCliente(@ModelAttribute("SpringWeb")Cliente cliente, ModelMap model)
	{
		model.addAttribute("nombre", cliente.getNombre());
		model.addAttribute("correo", cliente.getCorreo());
		model.addAttribute("direccion", cliente.getDireccion());
		model.addAttribute("edad", cliente.getEdad());
		
		return "resultado";
	}
	
}
