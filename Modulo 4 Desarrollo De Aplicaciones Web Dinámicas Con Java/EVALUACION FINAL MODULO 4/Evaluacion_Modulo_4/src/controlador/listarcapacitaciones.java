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
import modelo.Capacitacion;

/**
 * Servlet implementation class listarcapacitaciones
 */
@WebServlet("/listarcapacitaciones")
public class listarcapacitaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listarcapacitaciones() {
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
			
			Listacapa lcapa = new Listacapa();
			List<Capacitacion> listado = lcapa.obtener();
			request.setAttribute("capa", listado);
			request.getRequestDispatcher("listarCapacitaciones.jsp").forward(request, response);
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
