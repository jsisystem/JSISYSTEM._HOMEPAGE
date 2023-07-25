package egovframework.com.cmm.service.impl;


import java.util.List;

import egovframework.com.cmm.service.OleumReNewVo;
import egovframework.com.cmm.service.OleumService;
import egovframework.com.cmm.service.OleumVo;
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
@Service("OleumService")
public class OleumServiceImpl extends EgovAbstractServiceImpl implements OleumService {

	@Resource(name = "oleumDAO")
	private OleumDAO oleumDAO;

	public List<OleumVo> selectList(OleumVo oleum) throws Exception {
		return oleumDAO.selectList(oleum);
	}
	
	public List<OleumVo> selectRoadList(OleumVo oleum) throws Exception {
		return oleumDAO.selectRoadList(oleum);
	}

	@Override
	public void coordInsert(OleumVo oleum) {
		// TODO Auto-generated method stub
		oleumDAO.coordInsert(oleum);
		
	}

	@Override
	public List<OleumVo> viewList(OleumVo oleum) {
		// TODO Auto-generated method stub
		return oleumDAO.viewList(oleum);
	}

	@Override
	public List<OleumReNewVo> panoramaData(OleumReNewVo OleumReNew) {
		// TODO Auto-generated method stub
		return oleumDAO.panoramaData(OleumReNew);
	}

	/*@Override
	public void noticeSave(NoticeVo vo) {
		oleumDAO.noteiceSave(vo);
		
	}*/

	
}
