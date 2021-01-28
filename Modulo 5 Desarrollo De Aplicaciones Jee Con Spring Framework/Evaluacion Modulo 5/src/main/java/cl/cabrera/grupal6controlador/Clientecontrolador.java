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

import cl.cabrera.grupal6dao.ClienteDao;
import cl.cabrera.grupal6dao.UsuarioDao;

import cl.cabrera.grupal6modelo.Cliente;
import cl.cabrera.grupal6modelo.Usuario;


@Controller
public class Clientecontrolador {
	
	@Autowired
	ClienteDao cd;
	
	@Autowired
	UsuarioDao ud;

	@RequestMapping(value="Linklistacliente", method = RequestMethod.GET)
	public String listacli(Model model) {
		
		List<Cliente> listadocliente = new ArrayList<Cliente>();
		listadocliente = cd.obtenerCliente();
		model.addAttribute("clie",listadocliente);
		
		return "Listaclientes";
	}
	
	@RequestMapping(value="Linkcrearcliente", method = RequestMethod.POST)
    public String Crearcli(Model model, 
            @RequestParam ("txtruncli") String run,
            @RequestParam("txtnombreacli") String nombre,
            @RequestParam("txtapellidocli") String apellido,
            @RequestParam("txtfechacli") String fechanacimiento,
            @RequestParam("txttipousuario") String tipousuario,

            @RequestParam("txttelefono")String telefono,
            @RequestParam("txtafp")String afp,
            @RequestParam("txtsalud")int salud,
            @RequestParam("txtdireccion")String direccion,
            @RequestParam("txtcomuna")String comuna,
            @RequestParam("txtedad")int edad,
            @RequestParam("txtruncli") String runusuario){

		
            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.crearUsuario(usu);
            
            Cliente cli = new Cliente(run,nombre,apellido,telefono,afp,salud,direccion,comuna,edad,runusuario);
            cd.crearCliente(cli);
        
            return listacli(model);
    }
	
	
	@RequestMapping(value="Linkeliminarcli/{Runusuario}", method = RequestMethod.GET)
    public String Eliminarusuario(Model model, @PathVariable ("Runusuario")String Runusuario) {

        Usuario usu = new Usuario();    
        usu.setRun(Runusuario);  
        ud.eliminarUsuario(usu);
        return listacli(model);
    }
	
	@RequestMapping(value="Linkeditarcliente/{Runusuario}", method = RequestMethod.GET)
	public String editarcli(Model model, @PathVariable ("Runusuario")String Runusuario) {
		
		Usuario usu = new Usuario();
		usu = ud.obtenerrun(Runusuario);
		model.addAttribute("editusucli", usu);
		
		Cliente cl = new Cliente();
		cl = cd.obtenerRuncliente(Runusuario);
		model.addAttribute("editcli", cl);
		return "editarcliente";
	}
	
	@RequestMapping(value="Linkupdatecliente", method = RequestMethod.POST)
    public String insertcli(Model model, 
            @RequestParam ("hdnusuarioadm") String run,
            @RequestParam("textnombreusuario") String nombre,
            @RequestParam("textapellidousuario") String apellido,
            @RequestParam("textfechausuario") String fechanacimiento,
            @RequestParam("texttipousuario") String tipousuario,

            @RequestParam("texttelefono")String telefono,
            @RequestParam("textafp")String afp,
            @RequestParam("textsalud")int salud,
            @RequestParam("textdireccion")String direccion,
            @RequestParam("textcomuna")String comuna,
            @RequestParam("textedad")int edad,
            @RequestParam("hdnusuarioadm") String runusuario){
			
		
            Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
            ud.editarUsuario(usu);
            
            Cliente cli = new Cliente(run,nombre,apellido,telefono,afp,salud,direccion,comuna,edad,runusuario);
            cd.editarCliente(cli);
        
            return listacli(model);
    }
	
}
