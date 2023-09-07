package notice.model;

import java.util.Date;

public class NoticeVO {
	
	private int noticeNo;
	private String notice_ttl;
	private Date noticeDate;
	private int noticeHit;
	private String notice_content;
	private int adminNo;	
	
	public NoticeVO() {	}

	public NoticeVO(int noticeNo, String notice_ttl, Date noticeDate, int noticeHit, String notice_content,
			int adminNo) {
		super();
		this.noticeNo = noticeNo;
		this.notice_ttl = notice_ttl;
		this.noticeDate = noticeDate;
		this.noticeHit = noticeHit;
		this.notice_content = notice_content;
		this.adminNo = adminNo;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", notice_ttl=" + notice_ttl + ", noticeDate=" + noticeDate
				+ ", noticeHit=" + noticeHit + ", notice_content=" + notice_content + ", adminNo=" + adminNo + "]";
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNotice_ttl() {
		return notice_ttl;
	}

	public void setNotice_ttl(String notice_ttl) {
		this.notice_ttl = notice_ttl;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public int getNoticeHit() {
		return noticeHit;
	}

	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	
	
	
}
