package edu.kosa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login") //annotation 등록 방법 
public class LoginServlet extends HttpServlet {
	//DB 대체
	public String user = "kingsmile";
	public String pass = "1004";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("login call~~");
		/* PrintWriter pw = response.getWriter(); */
		
		String id = request.getParameter("id");
		String passwd  = request.getParameter("pwd");
		
		System.out.println(id + ", " + passwd);
		response.setCharacterEncoding("EUC-KR");
		PrintWriter pw = response.getWriter();
		
		pw.write("<html><head><title>Login Result</title></head><body><b><br>");
		
		if( user.equals(id) && !passwd.equals(pass) ) {
			pw.println("암호가 틀렸습니다. <br />");
			pw.println("<a href='html/loginForm.html'> Login </a> ");
		} else if( user.equals(id) && passwd.equals(pass) ){
			pw.println("반갑습니다 ㅎㅇ. <br />");
			pw.println("너의 id" + id + "이군요~<br/>");
			pw.println("<a href='html/loginForm.html'> Login </a> ");						
			
		}else {	
			pw.println("등록안됨 회원가입 가입 ㄱㄱ");
			pw.println("<a href='html/loginForm.html'> Login </a> ");									
		}

		
		/*
		 * pw.write("<html><head><title>HEllo Servlet</title></head>" +
		 * "<body><h1>Hello Servlet test</h1></body></html>");
		 */
		 
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

}
