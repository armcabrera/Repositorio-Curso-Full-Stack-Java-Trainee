package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.Listacapa;
import implementacion.Listacliente;

import modelo.Capacitacion;
import modelo.Cliente;





/**
 * Servlet implementation class Crearcapacitación
 */
@WebServlet("/Crearcapacitación")
public class Crearcapacitación extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crearcapacitación() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 HttpSession misesion = request.getSession();
		if(null == misesion.getAttribute("nombresesion")){  
			
			request.getRequestDispatcher("loginsesion").forward(request,response);
			
		}else {
			
			Listacliente lcli = new Listacliente();
			List<Cliente> listadorutcli = lcli.obtener();
			request.setAttribute("lrut", listadorutcli);

			request.getRequestDispatcher("Crearcapacitación.jsp").forward(request, response);
			
		}
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int idcapa = Integer.parseInt(request.getParameter("txtidcapacitacion"));
		String dia = request.getParameter("txtdia");
		String hora = request.getParameter("txthoracapa");
		String lugar = request.getParameter("txtlugar");
		int duracion = Integer.parseInt(request.getParameter("txtduracion"));
		String runcliente = request.getParameter("txtrutcliente");
		
		Capacitacion nuevacapa = new Capacitacion(idcapa,dia,hora,lugar,duracion,runcliente);
		
		Listacapa listacapa3 = new Listacapa();
		listacapa3.insertar(nuevacapa);
		

		 request.getRequestDispatcher("listarcapacitaciones").forward(request,response);
		 
	}

}
