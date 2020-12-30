package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.Listaadministrativo;

import implementacion.Listausuario;
import modelo.Administrativo;

import modelo.Usuario;

/**
 * Servlet implementation class modificaradmin
 */
@WebServlet("/modificaradmin")
public class modificaradmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modificaradmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String run = request.getParameter("hdnusuarioadm");
		String nombre = request.getParameter("textnombreusuario");
		String apellido = request.getParameter("textapellidousuario");
		String fechanaci = request.getParameter("textfechausuario");
		String correo = request.getParameter("textcorreo");
		String area = request.getParameter("textarea");
		String tipousuario = request.getParameter("texttipousuario");
		
		Usuario usu= new Usuario ();
		usu.setRun(run);
		usu.setNombre(nombre);
		usu.setApellido(apellido);
		usu.setFechanacimiento(fechanaci);
		usu.setTipousuario(tipousuario);
		
		Listausuario newuser = new Listausuario();
		newuser.actualizar(usu);
		
		Administrativo admin = new Administrativo();
		admin.setRunusuario(run);
		admin.setNombre(nombre);
		admin.setApellido(apellido);
		admin.setCorreo(correo);
		admin.setArea(area);
		Listaadministrativo newadmin = new Listaadministrativo();
		newadmin.actualizar(admin);
			
		request.getRequestDispatcher("Listado_de_usuario").forward(request, response);
		
		
	}

}
