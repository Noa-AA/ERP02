package dept.model;

import java.util.Date;

public class DeptVO {
	
	private int tfNo;
	private Date tfDate;
	private String tfContent;
	private String tfMgr	;
	private int deptNo	;
	private int empNo;	
	private int adminNo;
	
	public DeptVO() {	}

	public DeptVO(int tfNo, Date tfDate, String tfContent, String tfMgr, int deptNo, int empNo, int adminNo) {
		super();
		this.tfNo = tfNo;
		this.tfDate = tfDate;
		this.tfContent = tfContent;
		this.tfMgr = tfMgr;
		this.deptNo = deptNo;
		this.empNo = empNo;
		this.adminNo = adminNo;
	}
	
	@Override
	public String toString() {
		return "DeptVO [tfNo=" + tfNo + ", tfDate=" + tfDate + ", tfContent=" + tfContent + ", tfMgr=" + tfMgr
				+ ", deptNo=" + deptNo + ", empNo=" + empNo + ", adminNo=" + adminNo + "]";
	}

	public int getTfNo() {
		return tfNo;
	}

	public void setTfNo(int tfNo) {
		this.tfNo = tfNo;
	}

	public Date getTfDate() {
		return tfDate;
	}

	public void setTfDate(Date tfDate) {
		this.tfDate = tfDate;
	}

	public String getTfContent() {
		return tfContent;
	}

	public void setTfContent(String tfContent) {
		this.tfContent = tfContent;
	}

	public String getTfMgr() {
		return tfMgr;
	}

	public void setTfMgr(String tfMgr) {
		this.tfMgr = tfMgr;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	
	
	
}
