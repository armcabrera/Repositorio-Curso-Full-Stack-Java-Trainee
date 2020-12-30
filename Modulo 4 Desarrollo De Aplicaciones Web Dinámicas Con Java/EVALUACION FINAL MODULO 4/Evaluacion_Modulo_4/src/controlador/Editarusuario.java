package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.Listaadministrativo;
import implementacion.Listacliente;
import implementacion.Listaprofesional;
import implementacion.Listausuario;
import modelo.Administrativo;
import modelo.Cliente;
import modelo.Profesional;
import modelo.Usuario;

/**
 * Servlet implementation class Editarusuario
 */
@WebServlet("/Editarusuario")
public class Editarusuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editarusuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String run = request.getParameter("run");
		String tipo = request.getParameter("tipo");
		Listausuario editusu= new Listausuario();
		Usuario modiuse= new Usuario();
		modiuse.setRun(run);
		Usuario datouser= editusu.obtenerRun(modiuse);
		request.setAttribute("Edituse", datouser);
		
		if(tipo.equalsIgnoreCase("Administrativo")) {
			
			Listaadministrativo editadmin= new Listaadministrativo();
			Administrativo modiadmin = new Administrativo();
			modiadmin.setRunusuario(run);
			Administrativo datoadm= editadmin.obtenerRunadm(modiadmin);
			request.setAttribute("Editadmin", datoadm);
			request.getRequestDispatcher("editaradministrativo.jsp").forward(request, response);
			
		}
		else if(tipo.equalsIgnoreCase("Profesional")) {
			
			Listaprofesional editprof = new Listaprofesional();
			Profesional modprof = new Profesional();
			modprof.setRunusuario(run);
			Profesional datoprof = editprof.obtenerRunpro(modprof);
			request.setAttribute("Editprof", datoprof);
			request.getRequestDispatcher("editarprofesional.jsp").forward(request, response);
		}
		else  {
			
			Listacliente editcli = new Listacliente();
			Cliente modcli = new Cliente();
			modcli.setRunusuario(run);
			Cliente datocli = editcli.obteneRuncli(modcli);
			request.setAttribute("Editcli", datocli);
			request.getRequestDispatcher("editarcliente.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
