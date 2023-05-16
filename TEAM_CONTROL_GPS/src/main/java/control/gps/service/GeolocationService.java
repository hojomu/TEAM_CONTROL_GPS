package control.gps.service;

import control.gps.model.LocationdataVO;

public interface GeolocationService {
	// 위치 정보 저장하기 insert
	public void Geolocation(LocationdataVO data);

}
