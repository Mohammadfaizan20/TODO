package com.check;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
		try {
			
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			if (username.equals("faizan") & password.equals("faizan@123")){
				
				response.sendRedirect("index.jsp");
				
			} else {
				
				response.sendRedirect("error.jsp");
			}
			
			
		} catch (Exception e) {
			
			
			
			
		}
		
		
		
		
	}

}
