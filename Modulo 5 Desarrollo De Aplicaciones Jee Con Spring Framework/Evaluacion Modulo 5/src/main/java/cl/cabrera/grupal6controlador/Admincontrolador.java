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

import cl.cabrera.grupal6dao.AdministrativoDao;
import cl.cabrera.grupal6dao.UsuarioDao;
import cl.cabrera.grupal6modelo.Administrativo;
import cl.cabrera.grupal6modelo.Usuario;


@Controller
public class Admincontrolador {
	
	@Autowired
	AdministrativoDao ad;
	@Autowired
	UsuarioDao ud;

	@RequestMapping(value="Linklistaadministrativo", method = RequestMethod.GET)
	public String listaadmin(Model model) {
		

		List<Administrativo> listadoadmin = new ArrayList<Administrativo>();
		listadoadmin = ad.obtenerAdministrativo();	
		model.addAttribute("admin",listadoadmin);	
		return "Listaadmin";
	}
	
	
	@RequestMapping(value="Linkcrearadmin", method = RequestMethod.POST)
    public String Crearadmin(Model model, 
            @RequestParam ("txtrunadmin") String run,
            @RequestParam("txtnombreadmin") String nombre,
            @RequestParam("txtapellidoadmin") String apellido,
            @RequestParam("txtfechaadmin") String fechanacimiento,
            @RequestParam("txttipousuario") String tipousuario,

            @RequestParam("txtcorreo")String correo,
            @RequestParam("txtarea")String area,
            @RequestParam("txtrunadmin") String runusuario){


            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.crearUsuario(usu);

            Administrativo adm = new Administrativo(run,nombre,apellido,correo,area,runusuario);
            ad.crearAdministrativo(adm);
            return listaadmin(model);

    }
	
	@RequestMapping(value="Linkeliminaradm/{Runusuario}", method = RequestMethod.GET)
    public String Eliminarusuario(Model model, @PathVariable ("Runusuario")String Runusuario) {

        Usuario usu = new Usuario();
       
        usu.setRun(Runusuario);
       
        ud.eliminarUsuario(usu);
  
        return listaadmin(model);
    }
	
	@RequestMapping(value="Linkeditaradministrativo/{Runusuario}", method = RequestMethod.GET)
	public String Editaradmin(Model model, @PathVariable ("Runusuario")String Runusuario) {
		
		Usuario usu = new Usuario();
		usu = ud.obtenerrun(Runusuario);
		model.addAttribute("editusucli", usu);
		
		Administrativo admin = new Administrativo();
		admin = ad.obtenerRunadmin(Runusuario);
		model.addAttribute("editadmin", admin);
		return "editaradministrativo";
	}
	
	@RequestMapping(value="Linkupdateadministrativo", method = RequestMethod.POST)
    public String insertcli(Model model, 
            @RequestParam ("hdnusuarioadm") String run,
            @RequestParam("textnombreusuario") String nombre,
            @RequestParam("textapellidousuario") String apellido,
            @RequestParam("textfechausuario") String fechanacimiento,
            @RequestParam("texttipousuario") String tipousuario,

            @RequestParam("textcorreo")String correo,
            @RequestParam("textarea")String area,
            @RequestParam("hdnusuarioadm") String runusuario){
			System.out.println(apellido);
		
            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.editarUsuario(usu);
            
            Administrativo adm = new Administrativo(run,nombre,apellido,correo,area,runusuario);
            ad.editarAdministrativo(adm);
        
            return listaadmin(model);
    }
	
}
