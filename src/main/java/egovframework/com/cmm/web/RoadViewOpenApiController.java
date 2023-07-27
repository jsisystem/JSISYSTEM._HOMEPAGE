package egovframework.com.cmm.web;

import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import egovframework.com.cmm.service.ResultSummarySearch;
import egovframework.com.cmm.service.RoadMetaSummary;
import egovframework.com.cmm.service.RoadListSummary;
import egovframework.com.cmm.service.RoadImgSummary;
import egovframework.com.cmm.service.RoadViewOpenApiService;



@Controller
@RequestMapping(value="/rest/JejuRoadViewTourList")
public class RoadViewOpenApiController {

	@Resource(name = "RoadViewOpenApiService")
	protected RoadViewOpenApiService roadViewopenApiService;
	
	//관광지 리스트 OPEN_API 제공 메소드
	@RequestMapping(value="/getJejuTouristList")	  // 제주 관광지 리스트
	public ModelAndView getJejuTouristList(HttpServletRequest request,HttpSession session,String page){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			
				search.setPage(page);
			
			List<RoadListSummary> resultSummary = roadViewopenApiService.getJejuTouristList(search);   //페이징 처리완료
			
			//ResultSummarySearch count = openApiService.getOleumADetailListCount();
			
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
	
	@RequestMapping(value="/getJejuTouristMeta")	  // 제주 관광지 메타데이터
	public ModelAndView getJejuTouristMeta(HttpServletRequest request,HttpSession session,String page){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			
				search.setPage(page);
			
			List<RoadImgSummary> resultSummary = roadViewopenApiService.getJejuTouristMeta(search);   //페이징 처리완료
			//ResultSummarySearch count = openApiService.getOleumADetailListCount();
			
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
	
	@RequestMapping(value="/getJejuTouristIMG")	  // 제주 관광지 로드뷰 이미지
	public ModelAndView getJejuTouristIMG(HttpServletRequest request,HttpSession session,String page){
		ModelAndView modelAndView = new ModelAndView();
		  
		try {
			ResultSummarySearch search = new ResultSummarySearch();
			
				search.setPage(page);
			
			List<RoadMetaSummary> resultSummary = roadViewopenApiService.getJejuTouristIMG(search);   //페이징 처리완료
			//ResultSummarySearch count = openApiService.getOleumADetailListCount();
			
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


