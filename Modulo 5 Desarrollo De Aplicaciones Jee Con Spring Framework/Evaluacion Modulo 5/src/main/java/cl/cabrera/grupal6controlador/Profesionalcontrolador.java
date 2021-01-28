package cl.cabrera.grupal6controlador;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.cabrera.grupal6dao.ProfesionalDao;
import cl.cabrera.grupal6dao.UsuarioDao;

import cl.cabrera.grupal6modelo.Profesional;
import cl.cabrera.grupal6modelo.Usuario;

@Controller
public class Profesionalcontrolador {
	
	@Autowired
	ProfesionalDao pd;
	@Autowired
	UsuarioDao ud;

	@RequestMapping(value="Linklistaprofesional", method = RequestMethod.GET)
	public String listaprof(Model model) {
		
		List<Profesional> listadoprofesional = new ArrayList<Profesional>();
		listadoprofesional = pd.obtenerProfesional();
		model.addAttribute("profe",listadoprofesional);
		return "Listaprof";
	}
	
	
	@RequestMapping(value="Linkcrearprofesional", method = RequestMethod.POST)
    public String Crearprof(Model model, 
            @RequestParam ("txtrunprof") String run,
            @RequestParam("txtnombreprof") String nombre,
            @RequestParam("txtapellidoprof") String apellido,
            @RequestParam("txtfechaprof") String fechanacimiento,
            @RequestParam("txttipousuario") String tipousuario,

            @RequestParam("txttelfono")String telefono,
            @RequestParam("txttitulo")String titulo,
            @RequestParam("txtproyecto")String proyecto,
            @RequestParam("txtrunprof") String runusuario){


            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.crearUsuario(usu);

            Profesional prof = new Profesional(run,nombre,apellido,telefono,titulo,proyecto,runusuario);
            pd.crearProfesional(prof);
            return listaprof(model);

    }
	
	@RequestMapping(value="Linkeliminarpro/{Runusuario}", method = RequestMethod.GET)
    public String Eliminarusuario(Model model, @PathVariable ("Runusuario")String Runusuario) {

        Usuario usu = new Usuario();
       
        usu.setRun(Runusuario);
       
        ud.eliminarUsuario(usu);
  
        return listaprof(model);
    }
	
	@RequestMapping(value="Linkeditarprofesional/{Runusuario}", method = RequestMethod.GET)
	public String Editarprof(Model model, @PathVariable ("Runusuario")String Runusuario) {
		
		Usuario usu = new Usuario();
		usu = ud.obtenerrun(Runusuario);
		model.addAttribute("editusuprof", usu);
		
		Profesional pro = new Profesional();
		pro = pd.obtenerRunprofesional(Runusuario);
		model.addAttribute("editprof", pro);
		return "editarprofesional";
	
	}
	
	@RequestMapping(value="Linkupdateprof", method = RequestMethod.POST)
    public String insertprof(Model model, 
            @RequestParam ("hdnusuarioprof") String run,
            @RequestParam("textnombreusuario") String nombre,
            @RequestParam("textapellidousuario") String apellido,
            @RequestParam("textfechausuario") String fechanacimiento,
            @RequestParam("texttipousuario") String tipousuario,

            @RequestParam("texttelefono")String telefono,
            @RequestParam("texttitulo")String titulo,
            @RequestParam("textproyecto")String proyecto,
            @RequestParam("hdnusuarioprof") String runusuario){
		
		
            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.editarUsuario(usu);
            
            Profesional prof = new Profesional(run,nombre,apellido,telefono,titulo,proyecto,runusuario);
            pd.editarProfesional(prof);
        
            return listaprof(model);
    }
	
}
