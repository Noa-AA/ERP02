package admin.model;

import java.util.Date;

public class Admin {

	private String name;	//이름
	private int number;		//전화번호
	private Date user_br;	//생년월일
	private int user_code; //사원번호

	
	public Admin() {		//기본생성자
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Admin [name=" + name + ", number=" + number + ", user_br=" + user_br + ", user_code=" + user_code + "]";
	}


	public Admin(String name, int number, Date user_br, int user_code) {
		super();
		this.name = name;
		this.number = number;
		this.user_br = user_br;
		this.user_code = user_code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public Date getUser_br() {
		return user_br;
	}


	public void setUser_br(Date user_br) {
		this.user_br = user_br;
	}


	public int getUser_code() {
		return user_code;
	}


	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	
}