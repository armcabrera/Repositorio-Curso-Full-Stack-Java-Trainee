package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import implementacion.Listacapa;
import modelo.Capacitacion;

/**
 * Servlet implementation class eliminarCliente
 */
@WebServlet("/eliminarCapacitacion")
public class eliminarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eliminarCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int idcapacitacion = Integer.parseInt(request.getParameter("idcapa"));
		
		Capacitacion cap = new Capacitacion();
		cap.setIdcapa(idcapacitacion);
		
		Listacapa eli = new Listacapa();
		eli.eliminar(cap);
		
		request.getRequestDispatcher("listarcapacitaciones").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
