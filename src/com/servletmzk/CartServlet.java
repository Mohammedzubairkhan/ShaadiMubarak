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
import com.str.Catererstr;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
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
			    	else{	String session_id = String.valueOf(session.getAttribute("uname"));
			//PrintWriter p = response.getWriter();
			//p.println(session_id);
				CatererDao ob=new CatererDao();
				
				int cid = Integer.parseInt(session_id);
				String s="select* from cart where cus_id="+cid;
				ResultSet rs=ob.check(s);
				
				rs.next();
				int cartno = rs.getInt("cart_id");
				
				s = "select* from order_item o,product p where o.cart_id="+cartno+" and o.product_id=p.product_id order by total_price"; 
				rs = ob.check(s);int i=0;
				while(rs.next()){
					 CartStr Emp=new CartStr();
					 Emp.pid=rs.getInt("product_id");
					 Emp.oid=rs.getInt("order_id");
					 Emp.total=rs.getDouble("total_price");  
					 Emp.name=rs.getString("name"); 
				     Emp.img=rs.getString("img");
				     
             list.add(Emp);i++;}
				s = "select sum(total_price) from order_item where cart_id="+cartno;
				rs = ob.check(s);
				rs.next();
				double total = rs.getDouble(1);
				rs.next();
				if(i == 0){
					PrintWriter p = response.getWriter();
					p.print("Cart empty");
					p.close();
				}
				else{
					request.setAttribute("total",total);
				request.setAttribute("emp",list);
			//	request.setAttribute("emp1",cid);
			//PrintWriter p = response.getWriter();
			RequestDispatcher rd=request.getRequestDispatcher("jsps/cartList.jsp");
		
						rd.forward(request,response);
				}
			    	}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    }
    	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */



}
