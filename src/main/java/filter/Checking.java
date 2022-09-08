package filter;
import java.io.*;  
import javax.servlet.*; 
import javax.servlet.http.*;
public class Checking implements Filter{  
	 public void init(FilterConfig arg0) throws ServletException {}  
	  
	    public void doFilter(ServletRequest req, ServletResponse res,  
	            FilterChain chain) throws IOException, ServletException {  
	      HttpServletRequest request = (HttpServletRequest)req;
	        PrintWriter out=res.getWriter();  

	        StringBuffer url = new StringBuffer();
	         url = request.getRequestURL();
	       
	        int l = url.length();
	        String a = url.substring(l-3,l);
	        String b = "jsp";
	        if(b.equals(a)){
out.print("NOOOOO");
RequestDispatcher rd=request.getRequestDispatcher("./VIEW/404.html");  
rd.forward(req, res); 
	        }
	        else{
	        	 chain.doFilter(req,res);  
	        }
         
	        out.close();  
	          
	    }  
	    
	    public void destroy() {
	    	
	    }  
	}  