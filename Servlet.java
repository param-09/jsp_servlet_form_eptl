package form.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Servlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String state = request.getParameter("state");

		String vehicle[] = request.getParameterValues("vehicle");
		List list = Arrays.asList(vehicle);
		
		if (vehicle != null)

		{
			for (String s : vehicle) {
				System.out.println(s);
			}
		
		}
		
		request.setAttribute("firstName", firstName);
		request.setAttribute("lastName", lastName);
		request.setAttribute("contact", contact);
		request.setAttribute("email", email);
		request.setAttribute("gender", gender);
		request.setAttribute("state", state);
		request.setAttribute("vehicle", vehicle);

		request.getRequestDispatcher("result.jsp").forward(request, response);
	}
}

/*
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { String
 * firstName=request.getParameter("first_name"); String
 * lastName=request.getParameter("last_name"); String
 * contact=request.getParameter("contact"); String
 * email=request.getParameter("email"); String
 * state=request.getParameter("state"); String
 * gender=request.getParameter("gender");
 * 
 * request.setAttribute(firstName, firstName);
 * request.getRequestDispatcher("result.jsp").forward(request, response);; }
 * 
 * 
 * String firstName = request.getParameter("firstName"); String lastName =
 * request.getParameter("lastName");
 * 
 * System.out.println("firstName: " + firstName);
 * System.out.println("lastName: " + lastName);
 * 
 * PrintWriter writer = response.getWriter();
 *
 * 
 */

/*
 * response.setContentType("text/html"); PrintWriter pw=response.getWriter();
 * pw.write("<h3> First Name: "+ firstName +" </h3>");
 * pw.write("<h3> Last Name: "+ lastName +" </h3>"); pw.write("<h3> Contact: "+
 * contact +" </h3>"); pw.write("<h3> Email: "+ email +" </h3>");
 * pw.write("<h3> Gender: "+ gender +" </h3>");
 * 
 * String vehicle[]= request.getParameterValues("vehicle"); if(vehicle != null)
 * { for(int i=0; i<vehicle.length; i++) {
 * 
 * pw.write("<h3> Vehicle: "+ vehicle[i] +" </h3>");
 * 
 * } } pw.write("<h3> State: "+ state +" </h3>");
 */
