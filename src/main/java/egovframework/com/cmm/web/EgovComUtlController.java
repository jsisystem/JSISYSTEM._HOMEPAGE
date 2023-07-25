package egovframework.com.cmm.web;

import egovframework.rte.fdl.property.EgovPropertyService;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

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
@Controller
public class EgovComUtlController {

    /** EgovPropertyService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    /**
	 * JSP 호출작업만 처리하는 공통 함수
	 */
	@RequestMapping(value="/EgovPageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, Map<String, Object> map,
			HttpSession session, 
			@RequestParam(value="menuNo", required=false) String menuNo){
		String link = linkPage;
		
		// service 사용하여 리턴할 결과값 처리하는 부분은 생략하고 단순 페이지 링크만 처리함
		if (linkPage==null || linkPage.equals("")){
			link="cmm/egovError";
		}else{
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		// 선택된 메뉴정보를 세션으로 등록한다.
		if (menuNo!=null && !menuNo.equals("")){
			session.setAttribute("menuNo",menuNo);
		}
		return link;
	}
	@CrossOrigin(origins = "www.jsisystem.com, jsisystem.com")

	@RequestMapping (value="/Notice.do", method=RequestMethod.GET)
	public String Notice(){
		return "/main/Notice";
	}
	
	@RequestMapping (value="/Panorama.do", method=RequestMethod.GET)
	public String Panorama(String eName,HttpSession session){
		session.setAttribute("eName",eName);
		System.out.println(eName);
		return "/main/Panorama";
	}
	@RequestMapping (value="/PanoramaRenew.do", method=RequestMethod.GET)
	public String PanoramaRenew(String eName,HttpSession session){
		session.setAttribute("eName",eName);
		System.out.println(eName);
		return "/main/Panorama_Renew";
	}
	@RequestMapping (value="/PanoramaRenewtest.do", method=RequestMethod.GET)
	public String PanoramaRenewtest(String eName,HttpSession session){
		session.setAttribute("eName",eName);
		System.out.println(eName);
		return "/main/Panorama_Renew20220111";
	}

	@RequestMapping (value="/PanoramaRoad.do", method=RequestMethod.GET)
	public String PanoramaRoad(String eName,HttpSession session){
		session.setAttribute("eName",eName);
		System.out.println(eName);
		return "/main/PanoramaRoad";
	}

	@RequestMapping (value="/PanoramaList_boot.do", method=RequestMethod.GET)
	public String PanoramaListboot(){
		return "/main/PanoramaList_boot";
	}
	
	@RequestMapping (value="/openlayer.do", method=RequestMethod.GET)
	public String Openlayer(){
		return "/main/mapView";
	}

    /**
	 * JSP 호출작업만 처리하는 공통 함수
	 */
	@RequestMapping(value="/EgovPageLink.action")
	public String moveToPage_action(@RequestParam("link") String linkPage){
		String link = linkPage;
		// service 사용하여 리턴할 결과값 처리하는 부분은 생략하고 단순 페이지 링크만 처리함
		if (linkPage==null || linkPage.equals("")){
			link="cmm/egovError";
		}
		return link;
	}

	
    /**
	 * validation rule dynamic java script
	 */
	@RequestMapping("/validator.do")
	public String validate(){
		return "cmm/validator";
	}

}