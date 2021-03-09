package egovframework.com.cmm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.NoticeVo;

/**
 * @Class Name : CmmUseDAO.java
 * @Description : 공통코드등 전체 업무에서 공용해서 사용해야 하는 서비스를 정의하기위한 데이터 접근 클래스
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
@Repository("noticeDAO")
public class NoticeDAO extends EgovComAbstractDAO {

	 @SuppressWarnings("unchecked")
	    public List<NoticeVo> selectList(NoticeVo vo) throws Exception {
		return (List<NoticeVo>) list("NoticeDAO.selectList", vo);
	    }

	public void noteiceSave( NoticeVo vo) {
		// TODO Auto-generated method stub
		update("NoticeDAO.noticeSave", vo);
	}

	

}
