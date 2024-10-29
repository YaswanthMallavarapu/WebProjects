package com.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.*;
import com.helper.*;
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        // TODO Auto-generated constructor stub
    }

	
	
	protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request,response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noteId=Integer.parseInt(request.getParameter("noteId").trim());
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		Note note=(Note)s.get(Note.class, noteId);
		note.setTitle(title);
		note.setContent(content);
		note.setAddedDate(new Date());
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
		
 		
	}

}
