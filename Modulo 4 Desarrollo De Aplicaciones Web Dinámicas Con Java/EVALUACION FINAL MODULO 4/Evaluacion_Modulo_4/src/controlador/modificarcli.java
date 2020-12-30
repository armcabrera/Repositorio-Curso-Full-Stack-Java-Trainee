package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.Listacliente;
import implementacion.Listausuario;
import modelo.Cliente;
import modelo.Usuario;

/**
 * Servlet implementation class modificarcli
 */
@WebServlet("/modificarcli")
public class modificarcli extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modificarcli() {
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
		String afp = request.getParameter("textafp");
		int salud = Integer.parseInt(request.getParameter("textsalud"));
		String direccion = request.getParameter("textdireccion");
		String comuna = request.getParameter("textcomuna");
		int edad = Integer.parseInt(request.getParameter("textedad"));
		String tipousuario = request.getParameter("texttipousuario");
		
		Usuario usu= new Usuario ();
		usu.setRun(run);
		usu.setNombre(nombre);
		usu.setApellido(apellido);
		usu.setFechanacimiento(fechanaci);
		usu.setTipousuario(tipousuario);
		
		Listausuario newuser = new Listausuario();
		newuser.actualizar(usu);
		
		Cliente cli = new Cliente();
		cli.setRunusuario(run);
		cli.setNombre(nombre);
		cli.setApellido(apellido);
		cli.setTelefono(telefono);
		cli.setAfp(afp);
		cli.setSalud(salud);
		cli.setDireccion(direccion);
		cli.setComuna(comuna);
		cli.setEdad(edad);
		
		Listacliente newcli = new Listacliente();
		newcli.actualizar(cli);
		
		request.getRequestDispatcher("Listado_de_usuario").forward(request, response);
	}

}
