package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import implementacion.Listausuario;

import modelo.Usuario;

/**
 * Servlet implementation class eliminarUsuario
 */
@WebServlet("/eliminarUsuario")
public class eliminarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eliminarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String runusuarios = request.getParameter("run");
		/*String tipousuario = request.getParameter("tipo");*/
	
			/*
			 * Cliente cli = new Cliente(); cli.setRunusuario(runusuarios); Listacliente
			 * liscli = new Listacliente(); liscli.eliminar(cli);
			 */
			
			  Usuario usu = new Usuario(); 
			  usu.setRun(runusuarios);			  
			  Listausuario eli = new Listausuario();
			  eli.eliminar(usu);
			 
			 
			request.getRequestDispatcher("Listado_de_usuario").forward(request,response);
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
