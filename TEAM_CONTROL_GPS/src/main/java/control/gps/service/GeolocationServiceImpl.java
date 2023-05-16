package control.gps.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.gps.mapper.GeolocationMapper;
import control.gps.model.LocationdataVO;

@Service
public class GeolocationServiceImpl implements GeolocationService {
	
	@Autowired
	GeolocationMapper rm;

	// 위치 정보 저장하기 insert
	public void Geolocation(LocationdataVO data) {
		rm.Geolocation(data);
	}
}
	
	

