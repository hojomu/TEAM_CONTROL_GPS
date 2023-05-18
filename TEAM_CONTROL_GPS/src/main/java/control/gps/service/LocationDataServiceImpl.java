package control.gps.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.gps.mapper.LocationDataMapper;
import control.gps.model.LocationdataVO;
import control.gps.model.RegisterVO;

@Service
public class LocationDataServiceImpl implements LocationDataService{
	
	@Autowired
	LocationDataMapper lm;
	
	// 위치정보 불러오기
	public ArrayList<LocationdataVO> getLocationData(RegisterVO data){
		return lm.getLocationData(data);
	}
	
	// 특정 환자의 위치 정보를 받아오는 함수
	public LocationdataVO focusToPatient(RegisterVO data){
		return lm.focusToPatient(data);
	}

}
