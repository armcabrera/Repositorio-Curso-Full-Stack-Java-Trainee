package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import implementacion.Listaprofesional;
import implementacion.Listausuario;
import modelo.Profesional;
import modelo.Usuario;

/**
 * Servlet implementation class modificarprof
 */
@WebServlet("/modificarprof")
public class modificarprof extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modificarprof() {
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
		String telefono = request.getParameter("texttelefono");
		String titulo = request.getParameter("texttitulo");
		String proyecto = request.getParameter("textproyecto");
		String tipousuario = request.getParameter("texttipousuario");
		
		Usuario usu= new Usuario ();
		usu.setRun(run);
		usu.setNombre(nombre);
		usu.setApellido(apellido);
		usu.setFechanacimiento(fechanaci);
		usu.setTipousuario(tipousuario);
		
		Listausuario newuser = new Listausuario();
		newuser.actualizar(usu);
		
		Profesional prof = new Profesional();
		prof.setRunusuario(run);
		prof.setNombre(nombre);
		prof.setApellido(apellido);
		prof.setTelefono(telefono);
		prof.setTitulo(titulo);
		prof.setProyecto(proyecto);
		
		Listaprofesional newprof = new Listaprofesional();
		newprof.actualizar(prof);
		
		request.getRequestDispatcher("Listado_de_usuario").forward(request, response);
	}

}
