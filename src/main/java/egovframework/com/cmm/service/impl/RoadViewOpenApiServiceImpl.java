package egovframework.com.cmm.service.impl;


import java.util.List;

import egovframework.com.cmm.service.OleumService;
import egovframework.com.cmm.service.OleumVo;
import egovframework.com.cmm.service.OpenApiService;
import egovframework.com.cmm.service.ResultSummary;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.ResultSummarys;
import egovframework.com.cmm.service.RoadMetaSummary;
import egovframework.com.cmm.service.RoadListSummary;
import egovframework.com.cmm.service.RoadImgSummary;
import egovframework.com.cmm.service.RoadViewOpenApiService;
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
@Service("RoadViewOpenApiService")
public class RoadViewOpenApiServiceImpl extends EgovAbstractServiceImpl implements RoadViewOpenApiService {

	@Resource(name = "roadViewOpenApiDAO")
	private RoadViewOpenApiDAO roadViewOpenApiDAO;

	
	@Override
	public List<RoadListSummary> getJejuTouristList(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return roadViewOpenApiDAO.getJejuTouristList(result);
	}


	@Override
	public List<RoadImgSummary> getJejuTouristMeta(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return roadViewOpenApiDAO.getJejuTouristMeta(result);
	}


	@Override
	public List<RoadMetaSummary> getJejuTouristIMG(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return roadViewOpenApiDAO.getJejuTouristIMG(result);
	}
	

	
}
