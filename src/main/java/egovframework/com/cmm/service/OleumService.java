package egovframework.com.cmm.service;

import java.util.List;



/**
 *
 * 공통코드등 전체 업무에서 공용해서 사용해야 하는 서비스를 정의하기 위한 서비스 인터페이스
 * @author 공통서비스 개발팀 이삼섭
 * @since 2009.04.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.11  이삼섭          최초 생성
 *
 * </pre>
 */
public interface OleumService {

	 public List<OleumVo> selectList(OleumVo oleum) throws Exception;
	 
	 public List<OleumVo> selectRoadList(OleumVo oleum) throws Exception;

	 public void coordInsert(OleumVo oleum);

	 public List<OleumVo> viewList(OleumVo oleum);
	 
	 public List<OleumReNewVo> panoramaData(OleumReNewVo OleumReNew);

	//public void noticeSave(NoticeVo vo);
}
