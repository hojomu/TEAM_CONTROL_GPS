package control.gps.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import control.gps.model.LocationdataVO;
import control.gps.service.GeolocationService;


@Controller
public class GeolocationController {
	

	/*사용자 위치 확인 Controller*/
	@RequestMapping(value = "/Geolocation", method = RequestMethod.GET)
	public String Geolocation(Model model) {
		return "Geolocation";
	}
	
	@Autowired
	GeolocationService lo;
	
	@RequestMapping(value = "/Geolocation", method = RequestMethod.POST) 
	public String Geolocation(Model model, LocationdataVO data) {
		lo.Geolocation(data);
		System.out.println(data);
		return "Geolocation";

	}
	
	 /*@RequestMapping(value = "/locationform", method = RequestMethod.POST)
	  public ResponseEntity<String> checkRegisteredPatient(@RequestParam("name") String name, @RequestParam("phone") String phone) {
	    // 등록된 환자인지 확인하는 로직을 구현합니다.
	    if (GeolocationService.patient(name, phone)) {
	      return new ResponseEntity<>("환자로 등록되어 있습니다.", HttpStatus.OK);
	    } else {
	      return new ResponseEntity<>("환자로 등록되어 있지 않습니다.", HttpStatus.NOT_FOUND);
	   }

	 }*/
}
