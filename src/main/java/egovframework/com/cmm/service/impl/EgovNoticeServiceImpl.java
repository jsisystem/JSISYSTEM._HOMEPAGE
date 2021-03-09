package egovframework.com.cmm.service.impl;


import java.util.List;

import egovframework.com.cmm.service.EgovNoticeService;
import egovframework.com.cmm.service.NoticeVo;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/**
 * @Class Name : EgovCmmUseServiceImpl.java
 * @Description : 공통코드등 전체 업무에서 공용해서 사용해야 하는 서비스를 정의하기위한 서비스 구현 클래스
 * @Modification Information
 *
 *    수정일       수정자         수정내용
 *    -------        -------     -------------------
 *    2009. 3. 11.     이삼섭
 *
 * @author 공통 서비스 개발팀 이삼섭
 * @since 2009. 3. 11.
 * @version
 * @see
 *
 */
@Service("EgovNoticeService")
public class EgovNoticeServiceImpl extends EgovAbstractServiceImpl implements EgovNoticeService {

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	public List<NoticeVo> selectList(NoticeVo vo) throws Exception {
		return noticeDAO.selectList(vo);
	}

	@Override
	public void noticeSave(NoticeVo vo) {
		noticeDAO.noteiceSave(vo);
		
	}

	
}
