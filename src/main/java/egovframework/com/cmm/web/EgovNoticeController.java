package egovframework.com.cmm.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.service.EgovNoticeService;
import egovframework.com.cmm.service.NoticeVo;


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
public class EgovNoticeController {

	@Resource(name = "EgovNoticeService")
	protected EgovNoticeService egovNoticeService;
	
	
	@RequestMapping(value="/noticeList.json")
	@ResponseBody
	public Map<String, Object> noticeList(HttpServletRequest request,HttpSession session){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			NoticeVo vo = new NoticeVo();
			
			List<NoticeVo> list = egovNoticeService.selectList(vo);		
			System.out.println(list.get(0));
			result.put("data", list);
			result.put("link", "/main/Notice");
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result.put("result", "fail");
			result.put("message", e.getMessage());
			
		}
		
		return result;
	}
	
	@RequestMapping(value="/noticeSave.json")
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
	}


}