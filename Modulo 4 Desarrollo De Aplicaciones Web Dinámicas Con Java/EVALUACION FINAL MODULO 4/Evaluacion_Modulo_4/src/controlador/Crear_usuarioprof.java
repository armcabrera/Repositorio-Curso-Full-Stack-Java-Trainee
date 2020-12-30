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
 * Servlet implementation class Crear_usuarioprof
 */
@WebServlet("/Crear_usuarioprof")
public class Crear_usuarioprof extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crear_usuarioprof() {
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
		String run = request.getParameter("textrunusuario");
		String nombre = request.getParameter("textnombreusuario");
		String apellido = request.getParameter("textapellidousuario");
		String fechanacimiento = request.getParameter("textfechausuario");
		String tipousuario = request.getParameter("texttipousuario");
		
		String telefono = request.getParameter("texttelefono");
		String titulo = request.getParameter("texttitulo");
		String proyecto = request.getParameter("textproyecto");
		String runusuario = request.getParameter("textrunusuario");
		
		
		Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
		
		Listausuario list = new Listausuario();
		list.insertar(usu);
		
		Profesional prof = new Profesional(run,nombre,apellido,telefono,titulo,proyecto,runusuario);
		
		Listaprofesional listaprof = new Listaprofesional();
		listaprof.insertar(prof);
		
		 request.getRequestDispatcher("Listado_de_usuario").forward(request,response);
	}

}
