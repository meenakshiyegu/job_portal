package com.example.job.search;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.job.bean.Location;
import com.example.job.helper.DBHelper;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetLocation
 */
@WebServlet(name = "getLocation", urlPatterns = { "/getLocation" })
public class GetLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetLocation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jloc = request.getParameter("location");
		Location loc = new Location();
		loc.setLocation( new DBHelper().getLocation("select * from location where city_name like '%"+jloc+"%' or state_name like '%"+jloc+"%'"));

		Gson gson = new Gson();

		PrintWriter output = response.getWriter();
		output.println(gson.toJson(loc));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
