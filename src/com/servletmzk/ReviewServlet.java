package com.servletmzk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mzk.dao.CatererDao;
import com.str.Catererstr;
import com.str.ReviewStr;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
		// TODO Auto-generated method stub
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    	
			 try {
					HttpSession session = request.getSession(false);
					if(session.getAttribute("uname") == null){
						response.sendRedirect("login.html");
					}
				else{	
					String session_id = String.valueOf(session.getAttribute("uname"));
					CatererDao ob=new CatererDao();
						if(request.getParameter("pid") == null){
						PrintWriter p = response.getWriter();
						p.println("pid problem");
					}
					else{
						
					String var = request.getParameter("pid");
					int p_id = Integer.parseInt(var);
					int cid = Integer.parseInt(session_id);
					String s = "select* from reviews where product_id="+p_id+" and cus_id="+cid;
	   				Class.forName("com.mysql.jdbc.Driver");
	   				String url="jdbc:mysql://localhost:3306/shaadiMubarak";
	   				   String uname="root";
	   				   String passw="password";
	   				  
	   				   
	   				  Connection con=DriverManager.getConnection(url,uname,passw);
	   				   java.sql.PreparedStatement st= con.prepareStatement(s);
	   				
	   				ResultSet rs = st.executeQuery();
	   				if(rs.next())
	   				{
	   					PrintWriter p = response.getWriter();
	   					p.println("One customer can review a product only once");
	   				}
	   				else{
	   				String pass = request.getParameter("stars");
	   				String msg = request.getParameter("message");
	   				int star = Integer.parseInt(pass);
	   				s = "insert into reviews values(?,?,?,?)";
	   			 java.sql.PreparedStatement str= con.prepareStatement(s);
	   				   str.setInt(1,cid);
	   				   str.setInt(2,p_id);
	   				   str.setString(3, msg);
	   				   str.setInt(4,star);
	   				
	   				   int i = str.executeUpdate();
	               
					if(i > 0){
						response.sendRedirect("ProductServlet?pid="+p_id);
					//PrintWriter p = response.getWriter();
						//p.println("succesfully added to Reviews");
					}
					else{
						PrintWriter p = response.getWriter();
						p.println("Unsuccessfull");
					}
					
					
				//	request.setAttribute("emp1",cid);
				//PrintWriter p = response.getWriter();
				//response.sendRedirect("CartServlet");
				}
				}
				}}
				catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
	    }
		
	}


