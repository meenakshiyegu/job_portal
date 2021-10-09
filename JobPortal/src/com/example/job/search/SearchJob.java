package com.example.job.search;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;

import com.example.job.bean.JobList;
import com.example.job.bean.JobProfile;
import com.google.gson.Gson;



/**
 * Servlet implementation class SearchJob
 */
@WebServlet(name = "searchJob", urlPatterns = { "/searchJob" })
public class SearchJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchJob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings({ "unused", "unchecked" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String jtitle = request.getParameter("jtitle");
		// String jloc = request.getParameter("jloc");
		 //String jskill = request.getParameter("jskill");
		 //String jcompany = request.getParameter("jcompany");
		Gson gson = new Gson();
		 JobProfile jobProfile = new JobProfile ();
		 jobProfile.setTitle("job1");
		 jobProfile.setLoc("asd");
		 
		 ArrayList<JobProfile> jobList= new ArrayList<JobProfile>();
		 jobList.add(jobProfile);
		 JobList job = new JobList();
		  job.setProfile(jobList);
		 
		  
		  
		  
		  PrintWriter output = response.getWriter();
		  output.println(gson.toJson(job));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
