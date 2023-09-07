package notice.model;

import java.util.Date;

public class NoticeVO {
	
	private int noticeNo;
	private String title;
	private Date date;
	private int hit;
	private String content;
	private int adminNo;	
	
	public NoticeVO() {	}

	public NoticeVO(int noticeNo, String title, Date date, int hit, String content, int adminNo) {
		super();
		this.noticeNo = noticeNo;
		this.title = title;
		this.date = date;
		this.hit = hit;
		this.content = content;
		this.adminNo = adminNo;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", title=" + title + ", date=" + date + ", hit=" + hit + ", content="
				+ content + ", adminNo=" + adminNo + "]";
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	
	
	
	
}
