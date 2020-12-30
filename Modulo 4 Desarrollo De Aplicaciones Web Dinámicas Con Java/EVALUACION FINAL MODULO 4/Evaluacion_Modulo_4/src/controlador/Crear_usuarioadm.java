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
 * Servlet implementation class Crear_usuarioadm
 */
@WebServlet("/Crear_usuarioadm")
public class Crear_usuarioadm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crear_usuarioadm() {
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
		
		String correo = request.getParameter("textcorreo");
		String area = request.getParameter("textarea");
		String runusuario = request.getParameter("textrunusuario");
		
		Usuario usu = new Usuario(run,nombre,apellido,fechanacimiento,tipousuario);
		
		Listausuario list = new Listausuario();
		list.insertar(usu);
		
		Administrativo adm = new Administrativo(run,nombre,apellido,correo,area,runusuario);
		
		Listaadministrativo listadm = new Listaadministrativo();
		listadm.insertar(adm);
		
		 request.getRequestDispatcher("Listado_de_usuario").forward(request,response);
	}

}
