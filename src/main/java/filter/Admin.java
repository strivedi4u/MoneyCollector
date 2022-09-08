package filter;
import java.io.*;  
import javax.servlet.*; 
import javax.servlet.http.*; 

import javax.servlet.http.HttpSession;
public class Admin implements Filter{  
	 public void init(FilterConfig arg0) throws ServletException {}  
	  
	    public void doFilter(ServletRequest req, ServletResponse res,  
	            FilterChain chain) throws IOException, ServletException {  
	      HttpServletRequest request = (HttpServletRequest)req;
	        PrintWriter out=res.getWriter();  
	        HttpSession session= request.getSession(false);  
	        String name=(String)session.getAttribute("session");  
	        if(name !=null) {
	            chain.doFilter(req,res);  
	          }
	        else {
	        	 RequestDispatcher rd = request.getRequestDispatcher("./VIEW/404.html");  
		            rd.forward(req, res); 
	        }
	        out.close();  
	          
	    }  
	    
	    public void destroy() {}  
	}  