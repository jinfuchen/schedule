package com.back;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.bean.Doctor;
import com.dao.DoctorDao;

public class searchServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public searchServlet() {
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
		
		DoctorDao doctordao = new DoctorDao();
		List<Doctor> selectdoctors = doctordao.SelectDoctors(gender,language);
		List<Doctor> doctors = new ArrayList<Doctor>();
		for(Doctor doctor: selectdoctors)
		{
			boolean serviceMatch = true;
			String servicelist = doctor.getService();
			//match the service
			for(int i=0;i<services.length;++i)
			{
				if(servicelist.indexOf(services[i]) == -1){
					serviceMatch = false;
					break;
				}
			}
			//the service is match
			if(serviceMatch){
				String timelist = doctor.getTime();
				//time is match
				for(int j=0;j<timesection.length;++j){
					if(timelist.indexOf(timesection[j]) != -1){
						doctors.add(doctor);
					}
				}
			}
		}
		
		request.getSession().setAttribute("doctors", doctors);
		//request.getSession().setAttribute("results", results);
		//response.sendRedirect("doctorslist.jsp");
		response.sendRedirect("doctorlist.jsp");
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
