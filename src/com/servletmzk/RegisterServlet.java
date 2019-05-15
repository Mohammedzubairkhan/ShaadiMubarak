package com.servletmzk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.mzk.dao.CatererDao;
import com.str.Catererstr;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
   				if(rs.next())
   				{
   					PrintWriter p = response.getWriter();
   					p.println("Email is present. Choose other one, REGISTER!!"+em_ail);
   				}
   				String pass = request.getParameter("password");
   				String phone = request.getParameter("phno");
   				String name = request.getParameter("name");
   				s = "select max(cus_id) from customer";
   				rs = ob.check(s);
				rs.next();
				int cus_id = rs.getInt(1)+1;		
   				s = "insert into customer values(?,?,?,?,?)";
   			 java.sql.PreparedStatement str= con.prepareStatement(s);
   				   str.setInt(1,cus_id);
   				   str.setString(2,phone);
   				   str.setString(3, name);
   				   str.setString(4,em_ail);
   				 str.setString(5,pass);
   				   int i = str.executeUpdate();
               
				
				s = "select max(cart_id) from cart";
				rs = ob.check(s);
				rs.next();
				int cartno = rs.getInt(1)+1;
				s="insert into cart values("+cartno+ ",0," + cus_id +")";
				ob.insertSql(s);
   				HttpSession session = request.getSession();
   				session.setAttribute("uname", cus_id);
   				//ob.insertSql(s);
   				
   				response.sendRedirect("index.jsp");
   				
   			} catch (Exception e) {
   				// TODO Auto-generated catch block
   				e.printStackTrace();
   			}
      }


}
