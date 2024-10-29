package com.servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		int id=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Note note=(Note)s.get(Note.class, id);
		Transaction tx=s.beginTransaction();
		s.delete(note);
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
	}

}
