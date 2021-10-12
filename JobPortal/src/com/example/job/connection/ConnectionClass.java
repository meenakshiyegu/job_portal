package com.example.job.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
	public Connection getconnection(){
		Connection con= null;
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/job_portal","meenu","123456");  
			
		}
		catch(Exception e){ System.out.println(e);}  
		return con;
	}  
}
