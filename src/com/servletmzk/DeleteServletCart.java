package com.servletmzk;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.str.CartStr;

/**
 * Servlet implementation class DeleteServletCart
 */
@WebServlet("/DeleteServletCart")
public class DeleteServletCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServletCart() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
    	ArrayList<CartStr> list=new ArrayList<CartStr>();
 		
			try {
				HttpSession session = request.getSession(false);
			    	if(session.getAttribute("uname") == null)
			    	{
			    		response.sendRedirect("login.html");
			    		
			    	}
			    	else{	
				CatererDao ob=new CatererDao();
				int oid = Integer.parseInt((String) request.getParameter("oid"));
				
				String s="delete from order_item where order_id="+oid;
				ob.insertSql(s);
				
				response.sendRedirect("CartServlet");
				
			    	}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    }

}
