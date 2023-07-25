package egovframework.com.cmm.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.com.cmm.service.ResultSummary;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.ResultSummarys;
import egovframework.com.cmm.service.OleumVo;
import egovframework.com.cmm.service.OpenApiService;

/**
 * 공통유틸리티성 작업을 위한 Controller 클래스
 * @author 공통 서비스 개발팀 JJY
 * @since 2009.03.02
 * @version 1.0
 * @see
 *  
 * <pre>
 * << 개정이력(Modification Information) >>
 * 
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.02  JJY            최초 생성
 *  2011.08.31  JJY            경량환경 템플릿 커스터마이징버전 생성 
 *  
 *  </pre>
 */
	///rest/JejuOleumVRImg/getOleumADetailList
@Controller
@RequestMapping(value="/rest/JejuOleumVRImg")
public class OpenApiController {

	@Resource(name = "OpenApiService")
	protected OpenApiService openApiService;
	
	/*@RequestMapping(value="/JejuOleumVRImg")*/
	
	@RequestMapping(value="/getOleumADetailList")	   //오름 항공뷰 리스트 조회( 썸네일 이미지)
	public ModelAndView getOleumADetailList(HttpServletRequest request,HttpSession session,String page, String pageSize){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			
				search.setPage(page);
				search.setPageSize(pageSize);
			
			List<ResultSummary> resultSummary = openApiService.getOleumADetailList(search);
			ResultSummarySearch count = openApiService.getOleumADetailListCount();
			
			modelAndView.addObject("resultSummary",resultSummary);
			modelAndView.addObject("resultCode","200");
			modelAndView.addObject("reulstMsg","success");
			modelAndView.setViewName("jsonView");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			modelAndView.addObject("resultCode","500");
			modelAndView.addObject("reulstMsg","Failed");
			
			
		}
		
		
		return modelAndView;
	}
	
	@RequestMapping(value="/getOleumRDetailList")	//오름 로드뷰 리스트 썸네일 이미지
	public ModelAndView getOleumRDetailList(HttpServletRequest request,HttpSession session,String page){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			search.setPage(page);
			List<ResultSummary> resultSummary = openApiService.getOleumRDetailList(search);
			ResultSummarySearch count = openApiService.getOleumRDetailListCount();
			modelAndView.addObject("resultSummary",resultSummary);
			modelAndView.addObject("resultCode","200");
			modelAndView.addObject("reulstMsg","success");
			modelAndView.setViewName("jsonView");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			modelAndView.addObject("resultCode","500");
			modelAndView.addObject("reulstMsg","Failed");
			
			
		}
		
		
		return modelAndView;
	}
	
	@RequestMapping(value="/getOleumAStitchingImg")	  //오름 항공뷰 스티칭 이미지
	public ModelAndView getOleumAstitchingImg(HttpServletRequest request,HttpSession session, String page,String eName){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			search.setPage(page);
			search.setEname(eName);
			List<ResultSummarys> resultSummary = openApiService.getOleumAStitchingImg(search);
			ResultSummarySearch count = openApiService.getOleumAStitchingImgCount();
			
			modelAndView.addObject("resultSummary",resultSummary);
			modelAndView.addObject("resultCode","200");
			modelAndView.addObject("reulstMsg","success");
			modelAndView.setViewName("jsonView");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			modelAndView.addObject("resultCode","500");
			modelAndView.addObject("reulstMsg","Failed");
			
			
		}
		
		
		return modelAndView;
	}
	@RequestMapping(value="/getOleumRStitchingImg")	  //오름 로드뷰 스티칭 이미지.
	public ModelAndView getOleumRStitchingImg(HttpServletRequest request,HttpSession session, String page, String eName){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			search.setPage(page);
			search.setEname(eName);
			
			List<ResultSummarys> resultSummary = openApiService.getOleumRStitchingImg(search);
			ResultSummarySearch count = openApiService.getOleumRStitchingImgCount();
			
			modelAndView.addObject("resultSummary",resultSummary);
			modelAndView.addObject("resultCode","200");
			modelAndView.addObject("reulstMsg","success");
			modelAndView.setViewName("jsonView");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			modelAndView.addObject("resultCode","500");
			modelAndView.addObject("reulstMsg","Failed");
			
			
		}
		
		return modelAndView;
	}
}


