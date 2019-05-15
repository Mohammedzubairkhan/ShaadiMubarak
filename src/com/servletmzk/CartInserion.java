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
 * Servlet implementation class CartInserion
 */
@WebServlet("/CartInserion")
public class CartInserion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInserion() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
    	
 		
			try {
				HttpSession session = request.getSession(false);
				int qty = Integer.parseInt((String) request.getParameter("qty"));
			if(qty==0){
				PrintWriter p = response.getWriter();
				p.println("qty = 0");
			}
			else{	
				String session_id = String.valueOf(session.getAttribute("uname"));
				CatererDao ob=new CatererDao();
	if(request.getParameter("pid") == null){
					PrintWriter p = response.getWriter();
					p.println("pid problem");
				}
				else{
					if(session.getAttribute("uname") == null){
						PrintWriter p = response.getWriter();
						p.println("plzz login to shop");
					}
				String var = request.getParameter("pid");
				int p_id = Integer.parseInt(var);
				int cid = Integer.parseInt(session_id);
				String s="select* from cart where cus_id="+cid;
				ResultSet rs=ob.check(s);
				rs.next();
				int cartno = rs.getInt("cart_id");
				
				s = "select max(order_id) from order_item";
				rs = ob.check(s);
				rs.next();
				int orderno = rs.getInt(1)+1;
				
				s = "select value from product where product_id="+p_id;
				rs = ob.check(s);
				rs.next();
				double price = qty*rs.getDouble(1);
				String h = "update cart set total_cost=total_cost+"+price+" where cart_id="+cartno;
				ob.insertSql(h);
				s = "insert into order_item values("+orderno+","+price+","+qty+","+p_id+","+cartno+")";
				if(ob.insertSql(s)){
					response.sendRedirect("CartServlet");
					//PrintWriter p = response.getWriter();
					//p.println("succesfully added to cart");
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
			}
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
    }
}
