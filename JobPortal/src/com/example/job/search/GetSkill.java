package com.example.job.search;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.job.bean.JobSkill;
import com.example.job.helper.DBHelper;
import com.google.gson.Gson;

/**
 * Servlet implementation class GetCompanyName
 */
@WebServlet(name = "getSkill", urlPatterns = { "/getSkill" })
public class GetSkill extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetSkill() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jskill = request.getParameter("skill");
		JobSkill skill = new JobSkill();
		skill.setJobskill( new DBHelper().getValues("select * from job_skill where skill_name like '%"+jskill+"%'"));

		Gson gson = new Gson();

		PrintWriter output = response.getWriter();
		output.println(gson.toJson(skill));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
