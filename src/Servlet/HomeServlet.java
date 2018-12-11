package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Home
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HomeServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String redirect = req.getParameter("action");
    	
    	if(redirect.equals("con")) {
    		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/connection.jsp");
    		dispatcher.forward(req, resp);
    	}
    	if(redirect.equals("discon")) {
    		HttpSession session = req.getSession(true);
    		session.invalidate();
    		resp.sendRedirect(req.getContextPath() + "/index.jsp");
    		//RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/index.jsp");
    		//dispatcher.forward(req, resp);
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
