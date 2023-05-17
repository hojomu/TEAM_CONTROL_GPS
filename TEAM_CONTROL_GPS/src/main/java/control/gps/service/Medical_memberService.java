package control.gps.service;

import java.util.ArrayList;

import control.gps.model.RegisterVO;

public interface Medical_memberService {
	
	public void usermember(RegisterVO member);
	
	// 환자 리스트 불러오기
	public ArrayList<RegisterVO> getPatientsData(RegisterVO data);

}
