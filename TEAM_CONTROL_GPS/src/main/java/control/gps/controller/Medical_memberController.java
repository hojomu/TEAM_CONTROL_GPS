package control.gps.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.gps.model.RegisterVO;
import control.gps.service.Medical_memberService;

@Controller
public class Medical_memberController {

	@Autowired
	Medical_memberService ms;
	
	@RequestMapping(value = "/member", method = RequestMethod.GET) 
	public String member() {
		return "member";
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST) 
	public String usermember(RegisterVO member) {
		ms.usermember(member);
		System.out.println(member);
		return "member";
	}
	
	
	
	
}
