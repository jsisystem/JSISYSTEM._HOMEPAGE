package egovframework.com.cmm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.OleumVo;
import egovframework.com.cmm.service.ResultSummary;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.ResultSummarys;

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
@Repository("openApiDAO")
public class OpenApiDAO extends EgovComAbstractDAO {

	 @SuppressWarnings("unchecked")

		public List<ResultSummary> getOleumADetailList(ResultSummarySearch result) {
			// TODO Auto-generated method stub
			return (List<ResultSummary>) list("OpenApiDAO.getOleumADetailList", result);
		}
	 	public List<ResultSummary> getOleumRDetailList(ResultSummarySearch result) {
			// TODO Auto-generated method stub
			return (List<ResultSummary>) list("OpenApiDAO.getOleumRDetailList", result);
		}
	 	public List<ResultSummarys> getOleumAStitchingImg(ResultSummarySearch result) {
		// TODO Auto-generated method stub
	 		return (List<ResultSummarys>) list("OpenApiDAO.getOleumAStitchingImg", result);
		}
	 	public List<ResultSummarys> getOleumRStitchingImg(ResultSummarySearch result) {
		// TODO Auto-generated method stub
	 		return (List<ResultSummarys>) list("OpenApiDAO.getOleumRStitchingImg", result);
	 	}
		public ResultSummarySearch getOleumADetailListCount() {
			// TODO Auto-generated method stub
			return (ResultSummarySearch) select("OpenApiDAO.getOleumADetailListCount");
		}
		
		public ResultSummarySearch getOleumRDetailListCount() {
			// TODO Auto-generated method stub
			return (ResultSummarySearch) select("OpenApiDAO.getOleumRDetailListCount");
			
		}
		
		public ResultSummarySearch getOleumAStitchingImgCount() {
			// TODO Auto-generated method stub
			return (ResultSummarySearch) select("OpenApiDAO.getOleumAStitchingImgCount");
		}
		
		public ResultSummarySearch getOleumRStitchingImgCount() {
			// TODO Auto-generated method stub
			return (ResultSummarySearch) select("OpenApiDAO.getOleumRStitchingImgCount");
		}



}
