package cl.cabrera.grupal6controlador;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import cl.cabrera.grupal6dao.UsuarioDao;

import cl.cabrera.grupal6modelo.Usuario;

@Controller
public class Usuariocontrolador {
	
	@Autowired
	UsuarioDao us;

	@RequestMapping(value="Linklistausuario", method = RequestMethod.GET)
	public String Listausu(Model model) {
		
		List<Usuario> listadousuario = new ArrayList<Usuario>();
		listadousuario = us.obtenerUsuario();	
		model.addAttribute("usua",listadousuario);	
		
		return "Listadousuario";
	}
	@RequestMapping(value="Linkcrearusuario", method = RequestMethod.GET)
	public String Crearusu() {
		
		return "Crearusuario";
	}
	
}
