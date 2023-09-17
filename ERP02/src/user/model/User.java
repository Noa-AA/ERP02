package user.model;

public class User {

	private int userCode;
	private String userPw;
	private String name;
	private String mail;
	private String rank;
	private String tel;
	private String empid;
	private int empBr;
	private int deptNo;

	public User(int userCode, String userPw, String name, String mail, String rank, String tel, String empid, int empBr,
			int deptNo) {
		super();
		this.userCode = userCode;
		this.userPw = userPw;
		this.name = name;
		this.mail = mail;
		this.rank = rank;
		this.tel = tel;
		this.empid = empid;
		this.empBr = empBr;
		this.deptNo = deptNo;
	}

	public int getUserCode() {
		return userCode;
	}
	
	public String getUserPw() {
		return userPw;
	}


	public String getName() {
		return name;
	}

	public String getMail() {
		return mail;
	}

	public String getRank() {
		return rank;
	}

	public String getTel() {
		return tel;
	}

	public String getEmpid() {
		return empid;
	}

	public int getEmpBr() {
		return empBr;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public boolean matchUserCode(String userCode) {
		return userCode.equals(userCode);
	}

	public boolean matchPassword(String userPw) {
		return userPw.equals(userPw);
	}
	
	public User() {
		
	}

	public User(String userPw, String empid) {
		super();
		this.userPw = userPw;
		this.empid = empid;
	}
	
	
	

}
