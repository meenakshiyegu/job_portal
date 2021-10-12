package com.example.job.helper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import com.example.job.bean.JobProfile;
import com.example.job.connection.ConnectionClass;

public class DBHelper {
	public ArrayList<String> getValues(String sql){
		ArrayList<String> values = new ArrayList<String>();
		Connection con = null;
		try{
			con = new ConnectionClass().getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				values.add(rs.getString(2));
			}
			con.close();
		}
		catch(Exception e){

		}
		return values;
	}

	public ArrayList<String> getLocation(String sql) {
		// TODO Auto-generated method stub
		ArrayList<String> values = new ArrayList<String>();
		Connection con = null;
		try{
			con = new ConnectionClass().getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				values.add(rs.getString(2)+","+rs.getString(3));
				if(!values.contains(rs.getString(3)))
					values.add(rs.getString(3));
			}
			con.close();
		}
		catch(Exception e){

		}
		return values;
	}

	public ArrayList<JobProfile> getAvailaleJobBasedonFilter(String jtitle, String jloc, String jskill, String jcompany) {
		// TODO Auto-generated method stub

		ArrayList<JobProfile> jobProfile = new ArrayList<JobProfile>();
		
		Connection con = null;
		String sql = getQueryString(jtitle , jloc , jskill , jcompany);
		 
		try{
			con = new ConnectionClass().getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				JobProfile profile = new JobProfile();
				ArrayList<String> skillNames = new ArrayList<String>();
				profile.setTitle(rs.getString(1));
				profile.setCompany_name(rs.getString(2));
				profile.setCompany_description(rs.getString(3));
				profile.setCompany_email(rs.getString(4));
				profile.setCompany_website(rs.getString(5));
				profile.setCompany_size(rs.getString(6));
				profile.setCity_name(rs.getString(7));
				profile.setState_name(rs.getString(8));
				profile.setJob_type(rs.getString(9));
				profile.setDesc(rs.getString(11));
				skillNames.add(getSkillName(rs.getString(12)));
				skillNames.add(getSkillName(rs.getString(13)));
				skillNames.add(getSkillName(rs.getString(14)));
				skillNames.add(getSkillName(rs.getString(15)));
				skillNames.add(getSkillName(rs.getString(16)));
				profile.setSkills(skillNames);
				jobProfile.add(profile);
			}
			con.close();
		}
		catch(Exception e){

		}
		jobProfile = getBestFitSkill(jskill, jobProfile);
		return jobProfile;

	}

	private ArrayList<JobProfile> getBestFitSkill(String jskill, ArrayList<JobProfile> jobProfile) {
		// TODO Auto-generated method stub
		ArrayList<String> selectedskills = new ArrayList<String>();
		for(int i=0 ; i<jskill.split(",").length ;i++){
			selectedskills.add(jskill.split(",")[i]);
		}
		for(JobProfile job : jobProfile){
			int countSkill = 0;
			for(String selSkill : selectedskills){
				if(job.getSkills().contains(selSkill)){
					countSkill+=1;
				}
			}
			job.setSkill_matched(countSkill);
		}
		Comparator<JobProfile> compareById = new Comparator<JobProfile>() {
			@Override
			public int compare(JobProfile o1, JobProfile o2) {
				return o1.getSkill_matched().compareTo(o2.getSkill_matched());
			}
		};
		Collections.sort(jobProfile, compareById.reversed());
		return jobProfile;
	}

	

	private String getSkillName(String skill) {
		// TODO Auto-generated method stub
		String skill_name = "";
		Connection con = null;
		try{
			con = new ConnectionClass().getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from job_skill where skill_id ='"+skill+"'");
			while(rs.next()){
				skill_name = rs.getString(2);
			}
			con.close();
		}
		catch(Exception e){

		}
		return skill_name;
	}

	private String getQueryString(String jtitle, String jloc, String jskill, String jcompany) {
		// TODO Auto-generated method stub
		String finalsql = "SELECT title.title , com.company_name , com.company_description , com.company_email, com.company_website ,size.name,loc.city_name, loc.state_name,jobtype.type , skill.job_skill_map_id, job.job_description, skill.skill1_id, skill.skill2_id, skill.skill3_id, skill.skill4_id, skill.skill5_id FROM jobs job, job_title title, company com, job_skill_map skill, location loc , job_type jobtype , company_size size WHERE job.job_title_id=title.title_id and com.company_id = job.company_id and job.job_skill_list_id = skill.job_skill_map_id and loc.location_id = job.location_id and jobtype.job_type_id = job.job_type_id and size.company_size_id = com.company_size";
		if(jtitle.length()>0){
			finalsql += " and title.title = '"+jtitle+"'";
		}
		if(jloc.length()>0){
			finalsql += " and (loc.city_name = '"+jloc.split(",")[0]+"' or loc.state_name = '"+jloc+"')";
		}
		if(jcompany.length()>0){
			finalsql += "  and com.company_name = '"+jcompany+"'";
		}
		System.out.println(finalsql);
		return finalsql;
	}

}
