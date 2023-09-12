package admin.service;

import java.util.Map;

public class JoinRequest {
	private String name;		//사원의 이름저장
	private String number;		//사원의 전화번호저장
	private String user_br;		//사원의 생년월일저장
	private String user_code;	//사원의 사원번호저장

	public String getName() { //
		return name;
	}

	public void setName(String name) {		//사원이름을 저장하는 변수
		this.name = name;
	}

	public String getNumber() {				//사원전화번호를 반환하는 변수
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getUser_br() {
		return user_br;
	}

	public void setUser_br(String user_br) {
		this.user_br = user_br;
	}

	public String getUser_code() {
		return user_code;
	}

	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}

	
	public void validate(Map<String, Boolean> errors) {	//유효성 검사하는 기능
		checkEmpty(errors, name, "name");			//정보가 있는지 확인하고 비어있다면 errors를 맵에 추가
		checkEmpty(errors, number, "number");
		checkEmpty(errors, user_br, "user_br");
		checkEmpty(errors, user_code, "user_code");

		if(!errors.containsKey("confirmUser_code")) {	//만약 errors맵에 confirmPassword라는 키가 없다면
			if(!isUser_codeEqualToConfirm()) {			//isUser_codeEqalToConfirm을 사용하여 user_code가 일치하는지 확인
				errors.put("notMatch", Boolean.TRUE);	//일치하지 않을 경우 notMatch와 errors을 맵에 추가
			}
		}
	}

	private boolean isUser_codeEqualToConfirm() {	//user_code가 일치하는지 여부를 판단하는 메서드
		// TODO Auto-generated method stub
		return false;
	}

	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {	
		//주어진 값이 비어있는지 확인하는 메서드
		if(value == null || value.isEmpty()) //만약에 주어진 값이 null이거나 빈 문자열이면 예를 들어 name이 호출되었다면 name을 키로하고 
			errors.put(fieldName, Boolean.TRUE);	//값을 Boolean.TRUE로 설정하여 오류정보가 저장됩니다.
		
	}	
}
