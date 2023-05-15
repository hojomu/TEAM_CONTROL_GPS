package control.gps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GeolocationController {
	
	/*사용자 위치 확인 Controller*/
	@RequestMapping(value = "/Geolocation", method = RequestMethod.GET)
	public String Geolocation(Model model) {
		return "Geolocation";
	}
	
	
	
	
	
	
	
}
