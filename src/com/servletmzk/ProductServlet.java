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
import com.str.Catererstr;
import com.str.ReviewStr;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			
			Catererstr Emp = new Catererstr();
			CatererDao ob=new CatererDao();
			if(request.getParameter("pid") == null)
			{
				
					PrintWriter p = response.getWriter();
				p.println("pid problem");
				
			}
			else{
			String var = request.getParameter("pid");
			int p_id = Integer.parseInt(var);
			
			String s="select* from supplier s,product p,occupation o where s.supp_id=p.supp_id and p.occu_no=o.occu_no and p.product_id="+p_id;
			ResultSet rs=ob.check(s);
			ResultSet tmp= null;
			if(rs.next()){
				Emp.pid=rs.getInt("product_id");
					String r = "select avg(stars) from reviews where product_id="+Emp.pid;
					tmp = ob.check(r);
					if(tmp.next())
						Emp.star = (int)tmp.getFloat(1);
					else
						Emp.star=3; 
				 Emp.value=rs.getDouble("value"); 
				 Emp.descp=rs.getString("description"); 
				 Emp.occ=rs.getString("occu_name");
				  
				 Emp.name=rs.getString(11); 
				 Emp.mesure=rs.getString("mesurements"); 
			     Emp.img=rs.getString("img");
			    String suppName = rs.getString(2);
			     int suppNo = rs.getInt("supp_id");
			     int occu_no = rs.getInt("occu_no");
			     String suppCode = rs.getString("zip_code");
			    
			     s = "select count(*) from reviews r where r.product_id="+p_id;
			     rs = ob.check(s);
			     rs.next();
			     int no_reviews = rs.getInt(1);
			     if(no_reviews > 0)
			     {
			    	 ArrayList<ReviewStr> RvS = new ArrayList<ReviewStr>();
			     
			    	 s = "select* from customer c,reviews r where c.cus_id=r.cus_id and r.product_id="+p_id;
			    	 rs = ob.check(s);
				     
			    	 		while(rs.next())
						     {
						    	 ReviewStr emp = new ReviewStr();
						    	 emp.name = rs.getString("first_name");
						    	 emp.stars = rs.getInt("stars");
						    	 emp.text =  rs.getString("textd");
						    	 RvS.add(emp);			     
						     }
				     request.setAttribute("emp",RvS);
			     }
			     request.setAttribute("occu_no",occu_no);
			     request.setAttribute("supp_name",suppName);
			     request.setAttribute("supp_code",suppCode);
			     request.setAttribute("no_reviews",no_reviews);
			     request.setAttribute("employ",Emp);
			
		//PrintWriter p = response.getWriter();
		//response.sendRedirect("ProductInfo.jsp");
			     RequestDispatcher rd=request.getRequestDispatcher("jsps/ProductInfo.jsp");
			 		
					rd.forward(request,response);
			}
		}
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
}
    
}

