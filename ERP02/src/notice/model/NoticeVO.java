package notice.model;

import java.util.Date;

public class NoticeVO {

	private int notice_no; //공지 번호
	private String notice_ttl; //공지 제목
	private Date notice_date; //공지 작성일
	private int notice_hit; //공지 조회 수
	private String notice_content; //공지 내용
	
	public NoticeVO() {	}

	public NoticeVO(int notice_no, String notice_ttl, Date notice_date, int notice_hit, String notice_content) {
		super();
		this.notice_no = notice_no;
		this.notice_ttl = notice_ttl;
		this.notice_date = notice_date;
		this.notice_hit = notice_hit;
		this.notice_content = notice_content;
	}

	@Override
	public String toString() {
		return "NoticeVO [notice_no=" + notice_no + ", notice_ttl=" + notice_ttl + ", notice_date=" + notice_date
				+ ", notice_hit=" + notice_hit + ", notice_content=" + notice_content + "]";
	}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_ttl() {
		return notice_ttl;
	}

	public void setNotice_ttl(String notice_ttl) {
		this.notice_ttl = notice_ttl;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_hit() {
		return notice_hit;
	}

	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	
	
	
}
