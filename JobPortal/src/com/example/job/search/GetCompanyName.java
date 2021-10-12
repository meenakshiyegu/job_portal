package com.example.job.search;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.job.bean.Company;
import com.example.job.helper.DBHelper;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetCompanyName
 */
@WebServlet(name = "getCompanyName", urlPatterns = { "/getCompanyName" })
public class GetCompanyName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetCompanyName() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jcompany = request.getParameter("company");
		Company company = new Company();
		company.setCompany( new DBHelper().getValues("select * from company where company_name like '%"+jcompany+"%'"));

		Gson gson = new Gson();

		PrintWriter output = response.getWriter();
		output.println(gson.toJson(company));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
