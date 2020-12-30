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
		// TODO Auto-generated method stub
		
		 HttpSession misesion = request.getSession();
		if(null == misesion.getAttribute("nombresesion")){  
			
			request.getRequestDispatcher("loginsesion").forward(request,response);
			
		}else {
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
		String duracion=request.getParameter("txtduracion");
		
		Capacitacion nuevacapa = new Capacitacion(idcapa,dia,hora,lugar,duracion);
		
		Listacapa listacapa3 = new Listacapa();
		listacapa3.insertar(nuevacapa);
		

		 request.getRequestDispatcher("listarcapacitaciones").forward(request,response);
		 
	}

}
