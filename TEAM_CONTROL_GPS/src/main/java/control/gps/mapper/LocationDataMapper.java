package control.gps.mapper;

import java.util.ArrayList;

import control.gps.model.LocationdataVO;
import control.gps.model.RegisterVO;

public interface LocationDataMapper {
	// 위치정보 불러오기
		public ArrayList<LocationdataVO> getLocationData(RegisterVO data);

}
