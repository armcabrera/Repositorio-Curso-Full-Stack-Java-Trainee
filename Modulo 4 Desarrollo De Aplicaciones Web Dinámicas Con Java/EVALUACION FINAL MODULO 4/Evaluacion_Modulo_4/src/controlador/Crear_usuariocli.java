package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.Listacliente;
import implementacion.Listausuario;

import modelo.Cliente;
import modelo.Usuario;

/**
 * Servlet implementation class Crear_usuario
 */
@WebServlet("/Crear_usuariocli")
public class Crear_usuariocli extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crear_usuariocli() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession misesion = request.getSession();
			if(null == misesion.getAttribute("nombresesion")){  
				
				request.getRequestDispatcher("loginsesion").forward(request,response);
				
			}else {
				
				request.getRequestDispatcher("Crear_usuario.jsp").forward(request, response);
			}
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
		  String afp = request.getParameter("textafp"); 
		  int salud = Integer.parseInt(request.getParameter("textsalud")); 
		  String direccion = request.getParameter("textdireccion"); 
		  String comuna = request.getParameter("textcomuna"); 
		  int edad = Integer.parseInt(request.getParameter("textedad"));
		 
		 
		

		Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
		
		Listausuario list = new Listausuario();
		list.insertar(usu);
		
		
		
		  Cliente cli = new Cliente(run,nombre,apellido,telefono,afp,salud,direccion,comuna,edad,run);
		  
		  Listacliente listusu = new Listacliente(); 
		  listusu.insertar(cli);
		 
		 

		 request.getRequestDispatcher("Listado_de_usuario").forward(request,response);
		
	}

}
