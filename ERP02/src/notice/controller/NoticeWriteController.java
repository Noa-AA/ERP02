package notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.NoticeVO;
import notice.service.face.NoticeService;
import notice.service.impl.NoticeServiceImpl;
@WebServlet("/notice/write")
public class NoticeWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	NoticeService noticeService = new NoticeServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		System.out.println("/notice/write [GET]");
		
		NoticeVO notice = new NoticeVO();
		notice = noticeService.getNoticeInfo(req);
		
		resp.getWriter().append("Served at: ").append(req.getContextPath());
	}


}
