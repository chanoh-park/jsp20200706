package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;

/**
 * Servlet implementation class ThreadServletEx1
 */
@WebServlet("/thread1")
public class ThreadServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private int i = 0;
	
	private Member member = new Member();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreadServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /*
     
     request 말고는 session, application에는 쓰는 작업을 하지말자(but, 불가피하게 session에는 작업할 때도 있다)
     request - Thread에 안전하다(쓰고 읽는 것이 안전), Thread에 오는 요청은 서로 다른 요청이기 때문에 안전
     session - Thread에 안전하지 않다(쓰고 읽는 것 불안전)
     application - application에는 쓰는 작업을 웬만해서는 안하는게 좋다(중간에 Thread가 생성됐을 때 써야하는 경우), Thread에 안전하지 않다(쓰고 읽는 것 불안전)
     
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// i++;	 값 변경 위험
		// member.setName("name"); 	상태 변경 위험
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
