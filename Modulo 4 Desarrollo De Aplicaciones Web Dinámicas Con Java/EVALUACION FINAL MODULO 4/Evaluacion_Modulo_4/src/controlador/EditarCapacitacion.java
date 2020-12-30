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
 * Servlet implementation class EditarCapacitacion
 */
@WebServlet("/EditarCapacitacion")
public class EditarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idcapa = Integer.parseInt(request.getParameter("idcapa"));
		
		Listacapa editcap = new Listacapa();
		
		Capacitacion modificar = new Capacitacion();
		modificar.setIdcapa(idcapa);

		Capacitacion datodecap = editcap.obtenerIdcapa(modificar);
		
		request.setAttribute("Editcap", datodecap);
		
		request.getRequestDispatcher("editarcapcitacion.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
