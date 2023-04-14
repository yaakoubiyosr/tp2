package tp2isetj;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class FormulaireServlet
 */
@WebServlet("/FormulaireServlet")
public class FormulaireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormulaireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String operande1 = request.getParameter("operande1");
		 String operande2 = request.getParameter("operande1");
         String operation =request.getParameter("operation");
         String page="";
         Integer.parseInt(operande1);
         Integer.parseInt(operande2);
   if((operande1.equals(""))||(operande2.equals(""))||(!(operande1.matches("[0-9]*"))||(!(operande1.matches("[0-9]*"))
		   ||(operation==null)){
	   page="erreur.jsp";
	   
   }else {
       page="response.jsp";  
         
	}
   RequestDispatcher disp = request.getRequestDispatcher(page); 
   disp.forward(request, response);	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
