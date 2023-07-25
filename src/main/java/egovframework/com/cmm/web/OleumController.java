package egovframework.com.cmm.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.com.cmm.service.OleumReNewVo;
import egovframework.com.cmm.service.OleumService;
import egovframework.com.cmm.service.OleumVo;
import jdk.nashorn.internal.parser.JSONParser;


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
public class OleumController {

	@Resource(name = "OleumService")
	protected OleumService oleumService;
	
	
	@RequestMapping(value="/coordInsert.json")
	@ResponseBody
	public Map<String, Object> coordInsert(HttpServletRequest request,HttpSession session, OleumVo oleum){

		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
		//	System.out.println(param.get("eName"));
		//System.out.println(param.get("kName"));

		System.out.println(oleum.getkName());
		System.out.println(oleum.geteName());
		
		oleumService.coordInsert(oleum);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}
	
	
	@RequestMapping(value="/coordPoint.json")
	@ResponseBody
	public Map<String, Object> coordPointList(HttpServletRequest request,HttpSession session, OleumVo oleum){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			oleum.setGubun("view");
			List<OleumVo> listView = oleumService.selectList(oleum);
			oleum.setGubun("link");
			List<OleumVo> listLink = oleumService.selectList(oleum);
			oleum.setGubun("info");
			List<OleumVo> listInfo = oleumService.selectList(oleum);
			
			result.put("dataView", listView);
			result.put("dataLink", listLink);
			result.put("dataInfo", listInfo);
			ObjectMapper mapper = new ObjectMapper();
			String test = mapper.writeValueAsString(listView);
			result.put("test", test);
			
			Map<String, Object> data = new HashMap<String, Object>();
			data.put( "result", "success" );
			data.put( "message", "ok" );
			data.put( "statusCode", 200 );
			String json = new ObjectMapper().writeValueAsString(data);
			System.out.println(json);
			result.put("json", json);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
			
		}
		
		return result;
	}
	
	@RequestMapping(value="/coordPointRoad.json")
	@ResponseBody
	public Map<String, Object> coordPointRoadList(HttpServletRequest request,HttpSession session, OleumVo oleum){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			oleum.setGubun("view");
			List<OleumVo> listView = oleumService.selectRoadList(oleum);
			oleum.setGubun("link");
			List<OleumVo> listLink = oleumService.selectRoadList(oleum);
			oleum.setGubun("info");
			List<OleumVo> listInfo = oleumService.selectRoadList(oleum);
			
			result.put("dataView", listView);
			result.put("dataLink", listLink);
			result.put("dataInfo", listInfo);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}
	
	@RequestMapping(value="/oleumList.json")
	@ResponseBody
	public Map<String, Object> oleumList(HttpServletRequest request,HttpSession session, OleumVo oleum){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			oleum.setViewCode("AIRVIEW");
			List<OleumVo> airList = oleumService.viewList(oleum);
						
			result.put("airList", airList);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}
	
	@RequestMapping(value="/oleumRoadList.json")
	@ResponseBody
	public Map<String, Object> oleumRoadList(HttpServletRequest request,HttpSession session, OleumVo oleum){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			oleum.setViewCode("ROADVIEW");
			List<OleumVo> airList = oleumService.viewList(oleum);
						
			result.put("airList", airList);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}
	
	/*@RequestMapping(value="/noticeSave.json")
	@ResponseBody
	public Map<String, Object> noticeSave(HttpServletRequest request,HttpSession session,NoticeVo vo){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			System.out.println(vo.getName());
			egovNoticeService.noticeSave(vo);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}*/
	
/*	@RequestMapping("/overlay/view.cs")
    public String overlayView(@ModelAttribute("tuitionFee") TuitionFee vo, HttpServletRequest request, HttpServletResponse response, Model model) {


//        SchoolRefundRegulate schoolRefundRegulate = schoolRefundRegulateService.select(new SchoolRefundRegulate(Long.valueOf(vo.getSchId())));
//        model.addAttribute("schoolRefundRegulate", schoolRefundRegulate);
        List<TuitionFeeLectureData> tuitionFeeLectureData = tuitionFeeService.selectTuitionFeeLectList(vo);
        
        model.addAttribute("tuitionFeeLectureData", tuitionFeeLectureData);

        return "jje/after_school/overlay/tuitionFeeM";.
    }*/
	@RequestMapping(value="/jsontest.json")
	@ResponseBody
	public Map<String, Object> jsontest(HttpServletRequest request,HttpSession session, OleumVo oleum){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			oleum.setGubun("view");
			List<OleumVo> listView = oleumService.selectList(oleum);
			oleum.setGubun("link");
			List<OleumVo> listLink = oleumService.selectList(oleum);
			oleum.setGubun("info");
			List<OleumVo> listInfo = oleumService.selectList(oleum);
			
			result.put("dataView", listView);
			result.put("dataLink", listLink);
			result.put("dataInfo", listInfo);
			ObjectMapper mapper = new ObjectMapper();
			String test = mapper.writeValueAsString(listView);
			result.put("test", test);
			System.out.println(test);
			
			Map<String, Object> data = new HashMap<String, Object>();
			data.put( "result", "success" );
			data.put( "message", "ok" );
			data.put( "statusCode", 200 );
			String json = new ObjectMapper().writeValueAsString(data);
			System.out.println(json);
			result.put("json", json);
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
			
		}
		
		return result;
	}
	
	@RequestMapping(value="/panoramaData.json")
	@ResponseBody
	public Map<String, Object> panoramaData(HttpServletRequest request,HttpSession session, OleumReNewVo oleumReNew){
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			
			System.out.println(oleumReNew.geteName());
			/*oleum.setGubun("view");*/
			List<OleumReNewVo> panoramaData = oleumService.panoramaData(oleumReNew);
			result.put("dataView", panoramaData);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
			
		}
		
		return result;
	}
	
	

}