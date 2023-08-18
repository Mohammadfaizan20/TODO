package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Notetaker;
import com.helper.FactoryProvider;
import com.mysql.cj.xdevapi.SessionFactory;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
   
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			// title and content fetch code..
			
			String title = request.getParameter("title");
			String content  = request.getParameter("content");
			
			
			Notetaker note = new Notetaker(title,content,new Date());
			
			//System.out.println(note.getId()+" : "+note.getTitle()+" : "+note.getContent());
			
			// hibernate save function calling...
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center; color:green'>note added successfully</h1>");
			out.println("<h1 style='text-align:center;color:red'><a href='all_note.jsp'>click here to see all notes</a></h1>");
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

}
