package control.gps.service;

import java.util.ArrayList;

import control.gps.model.LocationdataVO;
import control.gps.model.RegisterVO;

public interface LocationDataService {
	// 위치정보 불러오기
	public ArrayList<LocationdataVO> getLocationData(RegisterVO data);

	// 특정 환자의 위치 정보를 받아오는 함수
	public LocationdataVO focusToPatient(RegisterVO data);
	

}
