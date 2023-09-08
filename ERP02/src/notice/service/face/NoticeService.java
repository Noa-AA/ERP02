package notice.service.face;

import javax.servlet.http.HttpServletRequest;

import notice.model.NoticeVO;

public interface NoticeService {

	NoticeVO getNoticeInfo(HttpServletRequest request);

}
