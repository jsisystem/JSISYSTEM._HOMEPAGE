package egovframework.com.cmm.service.impl;


import java.util.List;

import egovframework.com.cmm.service.OleumService;
import egovframework.com.cmm.service.OleumVo;
import egovframework.com.cmm.service.OpenApiService;
import egovframework.com.cmm.service.ResultSummary;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.ResultSummarys;
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
@Service("OpenApiService")
public class OpenApiServiceImpl extends EgovAbstractServiceImpl implements OpenApiService {

	@Resource(name = "openApiDAO")
	private OpenApiDAO openApiDAO;

	
	@Override
	public List<ResultSummary> getOleumADetailList(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumADetailList(result);
	}
	
	@Override
	public List<ResultSummary> getOleumRDetailList(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumRDetailList(result);
	}

	@Override
	public List<ResultSummarys> getOleumAStitchingImg(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumAStitchingImg(result);
	}

	@Override
	public List<ResultSummarys> getOleumRStitchingImg(ResultSummarySearch result) throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumRStitchingImg(result);
	}

	@Override
	public ResultSummarySearch getOleumADetailListCount() throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumADetailListCount();
	}

	@Override
	public ResultSummarySearch getOleumRDetailListCount() throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumRDetailListCount();
	}
	
	@Override
	public ResultSummarySearch getOleumAStitchingImgCount() throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumAStitchingImgCount();
	}

	@Override
	public ResultSummarySearch getOleumRStitchingImgCount() throws Exception {
		// TODO Auto-generated method stub
		return openApiDAO.getOleumRStitchingImgCount();
	}

	/*@Override
	public void noticeSave(NoticeVo vo) {
		oleumDAO.noteiceSave(vo);
		
	}*/

	
}
