package com.back;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Doctor;
import com.dao.DoctorDao;
import com.search.scheduleRequest;

public class issueServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public issueServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String gender = request.getParameter("gender");
		String language = request.getParameter("language");
		String city = request.getParameter("city");
		String[] services = request.getParameterValues("service");
		String[] timesection = request.getParameterValues("timesection");
		String name = (String) request.getSession().getAttribute("admin");
		Doctor doctor = new Doctor();
		doctor.setName(name);
		doctor.setGender(gender);
		doctor.setLanguage(language);
		doctor.setService(Arrays.toString(services).trim());
		doctor.setTime(Arrays.toString(timesection).trim());
		doctor.setCity(city);
		DoctorDao doctordao = new DoctorDao();
		doctordao.InsertDoctor(doctor);
		
		//schedule the patient requests
		scheduleRequest schedulereq = new scheduleRequest();
		schedulereq.scheduleProcess(0);
		//redirect the url
		response.sendRedirect("doctorSerhistory.jsp");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
