package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import implementacion.Listacapa;
import modelo.Capacitacion;

/**
 * Servlet implementation class Crearcapacitaci�n
 */
@WebServlet("/Crearcapacitaci�n")
public class Crearcapacitaci�n extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crearcapacitaci�n() {
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
			request.getRequestDispatcher("Crearcapacitaci�n.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int idcapa = Integer.parseInt(request.getParameter("txtidcapacitacion"));
		String rutclte = request.getParameter("txtrut");
		String dia = request.getParameter("txtdia");
		String hora = request.getParameter("txthoracapa");
		String lugar = request.getParameter("txtlugar");
		String duracion=request.getParameter("txtduracion");
		int cantasist = Integer.parseInt(request.getParameter("txtcantasistente"));
		
		Capacitacion nuevacapa = new Capacitacion(idcapa,rutclte,dia,hora,lugar,duracion, cantasist);
		
		Listacapa listacapa3 = new Listacapa();
		listacapa3.crearCapacitacion(nuevacapa);
		
		
		  String mensaje = "Se ha creado una nueva capacitaci�n exitosamente";
		  request.setAttribute("msg", mensaje);
		  request.getRequestDispatcher("mostrarmensaje.jsp").forward(request,
		  response);
		 
	}

}
