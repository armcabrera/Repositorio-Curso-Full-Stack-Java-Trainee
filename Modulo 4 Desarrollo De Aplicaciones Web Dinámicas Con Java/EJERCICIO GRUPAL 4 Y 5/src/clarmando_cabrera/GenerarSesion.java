package clarmando_cabrera;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GenerarSesion
 */
@WebServlet("/GenerarSesion")
public class GenerarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerarSesion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nombre = request.getParameter("txtusuario");
		  if(nombre.equals("admin")) {
		  
		  HttpSession misesion = request.getSession();
		  misesion.setAttribute("nombresesion", nombre);
		  request.getRequestDispatcher("inicio").forward(request,
		  response);
		  
		  }else {
		  
		  request.getRequestDispatcher("errorlogin").forward(request, response); }
		 
		}
			
			
		
		
		
		
	}



