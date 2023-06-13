package edu.kosa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/info")
public class information extends HttpServlet {
	
	//DB 대체
	public String name = "zoo";
	public String tel = "1234";
	public String address="동탄";
	
	/* private static final long serialVersionUID = 1L; */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("info call~~");
		
		response.setCharacterEncoding("EUC-KR");
		request.setCharacterEncoding("UTF-8");	
		
		String user = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
	
		
	
		PrintWriter pw  = response.getWriter();
		
		pw.write("<html><head><title>InfoResult</title></head><body><b><br>");
	
		if(user.equals(name) && !tel.equals(tel) ) {	
			pw.println("전화번호가 일치 하지 않습니다  <br />");
			pw.println("<a href='html/infoForm.html'> Login </a> ");			
		}
		else if( user.equals(name) && tel.equals(tel) ){
			pw.println("반갑습니다 ㅎㅇ. <br />");
			pw.println("너의 이름은" + name + "이군요~<br/>");
			pw.println("<a href='html/loginForm.html'> Login </a> ");								
		}else {	
			pw.println("등록안됨 회원가입 가입 ㄱㄱ");
			pw.println("<a href='html/infoForm.html'> Login </a> ");									
		}
		
		System.out.println(name + ", " + tel + ", " + address);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
