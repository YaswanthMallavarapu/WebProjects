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
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// Hibernate operation to save the note
		Note note = new Note(title, content, new Date());
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(note);
		tx.commit();
		session.close();

		// Adding CSS and displaying success message
		out.println("<html>");
		out.println("<head>");
		out.println("<style>");
		out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; }");
		out.println("h1 { color: #28a745; text-align: center; }");
		out.println(".container { max-width: 600px; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1); }");
		out.println(".link { text-align: center; margin-top: 20px; }");
		out.println(".link a { text-decoration: none; color: #007bff; font-size: 16px; }");
		out.println(".link a:hover { text-decoration: underline; }");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<div class='container'>");
		out.println("<h1>Inserted Successfully!</h1>");
		out.println("<div class='link'><a href='all_notes.jsp'>View all notes</a></div>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
	}
}
