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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
   	 ArrayList<Catererstr> list=new ArrayList<Catererstr>();
		
			try {
				CatererDao ob=new CatererDao();
				String em_ail = request.getParameter("email");
				String s = "select cus_id,cus_email,password from customer where cus_email = ?";
   				Class.forName("com.mysql.jdbc.Driver");
   				String url="jdbc:mysql://localhost:3306/shaadiMubarak";
   				   String uname="root";
   				   String passw="password";
   				  
   				   
   				  Connection con=DriverManager.getConnection(url,uname,passw);
   				   java.sql.PreparedStatement st= con.prepareStatement(s);
   				st.setString(1, em_ail);
   				ResultSet rs = st.executeQuery();
				
				if(!rs.next())
				{
					PrintWriter p = response.getWriter();
					p.println("Email isn't present, REGISTER!!"+em_ail);
				}
				else{	String pass = request.getParameter("password");
							String pass_in = rs.getString("password");
					if(!pass.equals(pass_in))
					{
						PrintWriter p = response.getWriter();
							p.println("Password incorrect, try again!!");
					}
				
					else{	String cus_id =String.valueOf(rs.getInt("cus_id"));
				
							HttpSession session = request.getSession();
									session.setAttribute("uname", cus_id);
										response.sendRedirect("index.jsp");
				}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
   }

}
