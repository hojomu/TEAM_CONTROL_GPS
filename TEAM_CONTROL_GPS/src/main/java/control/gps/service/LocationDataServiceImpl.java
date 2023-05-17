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
	
	public ArrayList<LocationdataVO> getLocationData(RegisterVO data){
		return lm.getLocationData(data);
	}
	
	
	

}
