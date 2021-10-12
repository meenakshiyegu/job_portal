package com.example.job.search;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.job.bean.JobTitle;
import com.example.job.helper.DBHelper;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetJobTitle
 */
@WebServlet(name = "getJobtitle", urlPatterns = { "/getJobtitle" })
public class GetJobTitle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetJobTitle() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jtitle = request.getParameter("title");
		JobTitle jobTitle = new JobTitle();
		jobTitle.setTitle( new DBHelper().getValues ("select * from job_title where title like '%"+jtitle+"%'"));

		Gson gson = new Gson();

		PrintWriter output = response.getWriter();
		output.println(gson.toJson(jobTitle));

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
