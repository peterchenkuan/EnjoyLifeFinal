package com.message.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.message.model.MessageDAO;
import com.message.model.MessageService;
import com.message.model.MessageVO;

/**
 * Servlet implementation class AjaxMessage
 */
@WebServlet("/AjaxMessage")
public class AjaxMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AjaxMessage() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eno=request.getParameter("eno");
		String messageFrom=request.getParameter("messageFrom");
		String messageTo=request.getParameter("messageTo");
		String messageTitle="您有新的活動請求";
		String message=request.getParameter("message");
		
		System.out.println(messageFrom);
		System.out.println(messageTo);
		System.out.println(messageTitle);
		System.out.println(message);
		//MessageService service=new MessageService();
		MessageVO vo=new MessageVO();
		vo.setMessage(messageFrom+"想參加你的活動。他留給你的訊息："+message+"<br>是否同意一起呢？  <a href='http://enjoylife.cloudapp.net/EnjoyLife/partner/HiddenEventServlet?eno="+eno+"'><button>同意</button></a><button>拒絕</button>");
		vo.setMessageFrom(messageFrom);
		vo.setMessageTitle(messageTitle);
		vo.setMessageTo(messageTo);
		System.out.println(vo.getMessage());
		response.setContentType("text/html; charset=UTF-8");
		
		
		   MessageDAO dao = new MessageDAO();
		   int result = dao.insertmessage(vo);
		   if(result==1){
			response.getWriter().write("已替您送出請求");
			return;

		   }else{
			response.getWriter().write("活動已結束");
			return;
			}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
