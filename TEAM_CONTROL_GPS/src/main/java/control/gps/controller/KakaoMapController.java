package control.gps.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KakaoMapController {
	
	@Value("${kakaoMap-api-key}")
	private String kakaoMapApiKey;
	
	/*카카오 맵 확인용 Controller*/
	@RequestMapping(value = "/kakaoMapEx", method = RequestMethod.GET)
	public String kakaoMapEx(Model model) {
		model.addAttribute("kakaoMapApiKey",kakaoMapApiKey);
		System.out.println(kakaoMapApiKey);
		return "kakaoMapEx";
	}
	
	/*로케이션 메니지먼트로 이동*/
	@RequestMapping(value = "/locationManagement", method = RequestMethod.GET)
	public String locationManagement(Model model) {
		model.addAttribute("kakaoMapApiKey",kakaoMapApiKey);
		System.out.println(kakaoMapApiKey);
		return "locationManagement";
	}
	
	
	
	
	
	
}
