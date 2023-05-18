package control.gps.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.gps.model.LocationdataVO;
import control.gps.model.RegisterVO;
import control.gps.service.LocationDataService;

@Controller
public class LocationDataController {
	@Autowired
	LocationDataService ls;
	
	// 위치정보 불러오기
	@RequestMapping(value = "/getLocationData/{hospital}", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<LocationdataVO>> getLocationData(RegisterVO data){
		System.out.println(data);
		return new ResponseEntity<>(ls.getLocationData(data),HttpStatus.OK);
	}

	// 특정 환자의 위치 정보
	@RequestMapping(value = "/focusToPatient/{name}/{phone}", method = RequestMethod.GET)
	public ResponseEntity<LocationdataVO> focusToPatient(RegisterVO data){
		System.out.println(data);
		return new ResponseEntity<>(ls.focusToPatient(data),HttpStatus.OK);
	}



}
