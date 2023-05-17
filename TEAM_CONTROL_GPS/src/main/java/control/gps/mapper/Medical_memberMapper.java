package control.gps.mapper;

import java.util.ArrayList;

import control.gps.model.RegisterVO;

public interface Medical_memberMapper {

	public void usermember(RegisterVO member);

	// 환자 리스트 불러오기
	public ArrayList<RegisterVO> getPatientsData(RegisterVO data);
}
