package control.gps.model;

public class LocationdataVO {

	private double x;			
	private double y;		
	private String phone;			
	private String getTime;
	private String name;

	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGetTime() {
		return getTime;
	}
	public void setGetTime(String getTime) {
		this.getTime = getTime;
	}	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "LocationdataVO [x=" + x + ", y=" + y + ", phone=" + phone + ", getTime=" + getTime + ", phone=" + phone + "]";
	}
	
}
