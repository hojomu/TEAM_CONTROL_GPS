package control.gps.model;

public class RegisterVO {
	private String phone;
	private String name;
	private String personalNumber;
	private String inrollTime;
	private String disease;
	private String adress;
	private String guardianName;
	private String guardianPhone;
	private String raspberry;
	private String hospital;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPersonalNumber() {
		return personalNumber;
	}
	public void setPersonalNumber(String personalNumber) {
		this.personalNumber = personalNumber;
	}
	public String getInrollTime() {
		return inrollTime;
	}
	public void setInrollTime(String inrollTime) {
		this.inrollTime = inrollTime;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getGuardianName() {
		return guardianName;
	}
	public void setGuardianName(String guardianName) {
		this.guardianName = guardianName;
	}
	public String getGuardianPhone() {
		return guardianPhone;
	}
	public void setGuardianPhone(String guardianPhone) {
		this.guardianPhone = guardianPhone;
	}
	public String getRaspberry() {
		return raspberry;
	}
	public void setRaspberry(String raspberry) {
		this.raspberry = raspberry;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	
	@Override
	public String toString() {
		return "RegisterVO > phone="+phone+", name="+name+
				", personalNumber="+personalNumber+", inrollTime="+inrollTime+", disease="+disease+", adress="+adress+
				", guardianName="+guardianName+", guardianPhone="+guardianPhone+", raspberry="+raspberry+", hospital="+hospital;
	}
	

}
