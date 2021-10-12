package com.example.job.bean;

import java.util.ArrayList;

public class JobProfile {
	private String title;
	private String city_name;
	private String state_name;
	private String company_name;
	private String company_description;
	private String company_email;
	private String company_website;
	private String company_size;
	private String desc;
	private String job_skill;
	private String job_type;
	private Integer skill_matched;
	private ArrayList<String> skills = new ArrayList<String>();
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getJob_skill() {
		return job_skill;
	}
	public void setJob_skill(String job_skill) {
		this.job_skill = job_skill;
	}
	public String getJob_type() {
		return job_type;
	}
	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}
	public String getCompany_size() {
		return company_size;
	}
	public void setCompany_size(String company_size) {
		this.company_size = company_size;
	}
	public String getCompany_website() {
		return company_website;
	}
	public void setCompany_website(String company_website) {
		this.company_website = company_website;
	}
	public String getCompany_description() {
		return company_description;
	}
	public void setCompany_description(String company_description) {
		this.company_description = company_description;
	}
	public String getCompany_email() {
		return company_email;
	}
	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public ArrayList<String> getSkills() {
		return skills;
	}
	public void setSkills(ArrayList<String> skills) {
		this.skills = skills;
	}
	public Integer getSkill_matched() {
		return skill_matched;
	}
	public void setSkill_matched(Integer skill_matched) {
		this.skill_matched = skill_matched;
	}
	
}
