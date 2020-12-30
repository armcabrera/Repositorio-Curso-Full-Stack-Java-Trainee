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
 * Servlet implementation class modificarcapa
 */
@WebServlet("/modificarcapa")
public class modificarcapa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modificarcapa() {
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
		int idcapa = Integer.parseInt(request.getParameter("hdnidcapa"));
		String dia = request.getParameter("txtdia");
		String hora = request.getParameter("txthoracapa");
		String lugar = request.getParameter("txtlugar");
		int duracion = Integer.parseInt(request.getParameter("txtduracion"));
		String runcliente = request.getParameter("hdnrutcliente");
		
		
		Capacitacion cap = new Capacitacion();
		cap.setIdcapa(idcapa);
		cap.setDia(dia);
		cap.setHora(hora);
		cap.setLugar(lugar);
		cap.setDuracion(duracion);
		cap.setRuncliente(runcliente);
		
		Listacapa newcap = new Listacapa();
		newcap.actualizar(cap);

	
		request.getRequestDispatcher("listarcapacitaciones").forward(request, response);
		
		
	}

}
