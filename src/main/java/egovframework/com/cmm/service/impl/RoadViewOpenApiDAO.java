package egovframework.com.cmm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.OleumVo;
import egovframework.com.cmm.service.ResultSummary;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.ResultSummarys;
import egovframework.com.cmm.service.RoadMetaSummary;
import egovframework.com.cmm.service.RoadListSummary;
import egovframework.com.cmm.service.RoadImgSummary;

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
@Repository("roadViewOpenApiDAO")
public class RoadViewOpenApiDAO extends EgovComAbstractDAO {

	 @SuppressWarnings("unchecked")


		public List<RoadListSummary> getJejuTouristList(ResultSummarySearch result) {
			// TODO Auto-generated method stub
			return (List<RoadListSummary>) list("RoadViewOpenApiDAO.getJejuTouristList", result);
		}

	 	public List<RoadImgSummary> getJejuTouristMeta(ResultSummarySearch result) {
		// TODO Auto-generated method stub
	 		return (List<RoadImgSummary>) list("RoadViewOpenApiDAO.getJejuTouristMeta", result);
	 	}
	 	public List<RoadMetaSummary> getJejuTouristIMG(ResultSummarySearch result) {
			// TODO Auto-generated method stub
		 		return (List<RoadMetaSummary>) list("RoadViewOpenApiDAO.getJejuTouristIMG", result);
		 	}
	 	


}
