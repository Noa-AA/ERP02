package admin.command;

	


	import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.DuplicateIdException;
import admin.service.JoinRequest;
import admin.service.JoinService;
import mvc.command.CommandHandler;


	public class AdminHandler implements CommandHandler {
		private static final String FORM_VIEW = "/WEB-INF/view/admin/admin.jsp"; //회원가입 폼의 경로
		private JoinService joinService = new JoinService();		//회원가입 서비스 객체생성
		
		@Override
		public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception { //http요청 메서드에 따라 get과 post요청을 처리하는 역활을 합니다.
			if(req.getMethod().equalsIgnoreCase("GET")) { //get요청일 경우 processForm을 호출하여 회원가입 폼을 보여준다.
				return processForm(req, resp);
				
			} else if(req.getMethod().equalsIgnoreCase("POST")) { //post요청일 경우 processSubmit을 호출하여 회원가입 로직을 수행합니다.
				return processSubmit(req, resp);
			} else {
				
				resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); //그 외의 경우라면 405Method Not Allowed 응답상태코드와 함께 null을 반환한다.
				return null;
			}
		}

		private String processForm(HttpServletRequest req, HttpServletResponse resp) { //회원가입 폼 경로를 반환하여 해당 뷰를 보여준다.
			return FORM_VIEW;
		}

		private String processSubmit(HttpServletRequest req, HttpServletResponse resp) {  //회원가입 요청을 처리하고 유효성검사를 한다 
			JoinRequest joinReq = new JoinRequest();									//새로운 JoinRequest객체 생성
			joinReq.setName(req.getParameter("name"));									// 파라미터 설정 JinRequest 객체의 필드에 값을 설정
			joinReq.setNumber(req.getParameter("number"));
			joinReq.setNumber(req.getParameter("User_br"));
			joinReq.setNumber(req.getParameter("user_code"));
			
			Map<String, Boolean> errors = new HashMap<>();
			req.setAttribute("errors", errors);
			
			joinReq.validate(errors);
			
			if(!errors.isEmpty()) {
				return FORM_VIEW;
			}
			
			try {
				joinService.join(joinReq);
				return "/WEB-INF/view/admin/AdminSuccess.jsp";
			} catch(DuplicateIdException e) {
				errors.put("duplicateId", Boolean.TRUE);
				return FORM_VIEW;
			}
		}
		
		

	}


