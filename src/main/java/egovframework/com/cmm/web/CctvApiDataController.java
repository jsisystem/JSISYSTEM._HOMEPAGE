package egovframework.com.cmm.web;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
@Controller
public class CctvApiDataController {

	@RequestMapping(value="/cctvApiData.json")	   //cctv openapi request
	@ResponseBody
	public Map<String, Object> getCctvApiData(HttpServletRequest request,HttpSession session){
		System.out.println("cctv data check");
		Map<String, Object> result = new HashMap<String, Object>();
		try {
		
			  StringBuilder urlBuilder = new StringBuilder("https://openapi.its.go.kr:9443/cctvInfo"); /*URL*/
			  urlBuilder.append("?" + URLEncoder.encode("apiKey", "UTF-8") + "=" + URLEncoder.encode("b07597c6c11642a881c47b4357289d64", "UTF-8")); /*공개키*/
			  urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("ex", "UTF-8")); /*도로유형*/
			  urlBuilder.append("&" + URLEncoder.encode("cctvType","UTF-8") + "=" + URLEncoder.encode("2", "UTF-8")); /*CCTV유형*/
			  urlBuilder.append("&" + URLEncoder.encode("minX","UTF-8") + "=" + URLEncoder.encode("126.800000", "UTF-8")); /*최소경도영역*/
			  urlBuilder.append("&" + URLEncoder.encode("maxX","UTF-8") + "=" + URLEncoder.encode("127.890000", "UTF-8")); /*최대경도영역*/
			  urlBuilder.append("&" + URLEncoder.encode("minY","UTF-8") + "=" + URLEncoder.encode("34.900000", "UTF-8")); /*최소위도영역*/
			  urlBuilder.append("&" + URLEncoder.encode("maxY","UTF-8") + "=" + URLEncoder.encode("35.100000", "UTF-8")); /*최대위도영역*/
			  urlBuilder.append("&" + URLEncoder.encode("getType","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*출력타입*/
			  
			  URL url = new URL(urlBuilder.toString());
			  HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			  conn.setRequestMethod("GET");
			  conn.setRequestProperty("Content-type", "text/xml;charset=UTF-8");
			  System.out.println("Response code: " + conn.getResponseCode());
			  BufferedReader rd;
			  if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				  rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			  } else {
				  rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			  }
			  StringBuilder sb = new StringBuilder();
			  String line;
			  while ((line = rd.readLine()) != null) {
				  sb.append(line);
			  }
			  rd.close();
			  conn.disconnect();
			  System.out.println(sb);
			
			
			  result.put("data",sb);
			  result.put("code","200");
			  result.put("reulstMsg","success");
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
				
				result.put("resultCode","500");
				result.put("reulstMsg","Failed");
		}
		return result;
	}
	

}