package com.servletmzk;

import java.io.IOException;
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
 * Servlet implementation class TrustedServlet
 */
@WebServlet("/TrustedServlet")
public class TrustedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrustedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
   	 ArrayList<Catererstr> list=new ArrayList<Catererstr>();
		
			try {
				
String s="select* from product p,reviews r,occupation o "+"where p.occu_no=o.occu_no and p.product_id=r.product_id group by p.product_id order by sum(stars) desc limit 5";
				CatererDao ob=new CatererDao();
				ResultSet rs=ob.check(s);
				//rs.next();
				//String d = rs.getString("description");
				String r;
 				
 				
 				ResultSet tmp = null;
				while(rs.next()){
					 Catererstr Emp=new Catererstr();
					 Emp.pid=rs.getInt("product_id");
					r = "select avg(stars) from reviews where product_id="+Emp.pid;
					tmp = ob.check(r);
					if(tmp.next())
						Emp.star = tmp.getInt(1);
					else
						Emp.star=3; 
					 Emp.value=rs.getDouble("value"); 
					 Emp.descp=rs.getString("description"); 
					 Emp.occ=rs.getString("occu_name");
					  
					 Emp.name=rs.getString("name"); 
					 Emp.mesure=rs.getString("mesurements"); 
				     Emp.img=rs.getString("img");
				     
				     
                list.add(Emp);}
				
				//HttpSession session = request.getSession();
				//session.setAttribute("uname", "1");
				
				
				request.setAttribute("emp",list);
				//request.setAttribute("emp1",d);
				//PrintWriter p = response.getWriter();
				RequestDispatcher rd=request.getRequestDispatcher("jsps/catererlist.jsp");
		
						rd.forward(request,response);
		     //p.println(d);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
   }

}
