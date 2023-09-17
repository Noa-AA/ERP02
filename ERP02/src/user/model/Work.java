package user.model;

public class Work {

	private int workNo;
	private int work;
	private int absncWork;
	private int late;
	private int annualLeave;
	private int nightShitf;
	private int userCode;
	
	public Work() {
		
	}
	

	public Work(int workNo, int work, int absncWork, int late, int annualLeave, int nightShitf, int userCode) {
		super();
		this.workNo = workNo;
		this.work = work;
		this.absncWork = absncWork;
		this.late = late;
		this.annualLeave = annualLeave;
		this.nightShitf = nightShitf;
		this.userCode = userCode;
	}

	public int getWorkNo() {
		return workNo;
	}

	public int getWork() {
		return work;
	}

	public int getAbsncWork() {
		return absncWork;
	}

	public int getLate() {
		return late;
	}

	public int getAnnualLeave() {
		return annualLeave;
	}

	public int getNightShitf() {
		return nightShitf;
	}

	public int getUserCode() {
		return userCode;
	}

}
