package com.mzk.dao;

import java.sql.*;

public class CatererDao {
public ResultSet check(String s){
	ResultSet rt = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/shaadiMubarak";
	   String uname="root";
	   String pass="password";
	   String query=s;
	   
	  Connection con=DriverManager.getConnection(url,uname,pass);
	   Statement st=con.createStatement();
	   rt=st.executeQuery(query);
	   }
	  catch(Exception e){
		  e.printStackTrace();
	  }
	   
	  
	  return rt;
}
public boolean insertSql(String s){
	int i = 0;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost:3306/shaadiMubarak";
	   String uname="root";
	   String pass="password";
	   String query=s;
	   
	  Connection con=DriverManager.getConnection(url,uname,pass);
	   Statement st=con.createStatement();
	   i = st.executeUpdate(query);
	   }
	  catch(Exception e){
		  e.printStackTrace();
	  }
	if(i < 0)
		return false;
	else
		return true;
	
}
}
