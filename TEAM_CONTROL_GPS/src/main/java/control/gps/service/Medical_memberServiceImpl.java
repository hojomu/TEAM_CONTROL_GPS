package control.gps.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import control.gps.mapper.Medical_memberMapper;
import control.gps.model.RegisterVO;

@Service
public class Medical_memberServiceImpl implements Medical_memberService {
	
	@Autowired
	Medical_memberMapper mm;
	
	public void usermember(RegisterVO member) {
		mm.usermember(member);
	};
	
	

}
