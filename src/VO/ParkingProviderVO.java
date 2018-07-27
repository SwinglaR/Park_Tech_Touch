package VO;

import java.io.Serializable;

public class ParkingProviderVO implements Serializable {
	private int parkingprovider_id;
	private String parkingprovider_first_name;
	private String parkingprovider_last_name;
	private String parkingprovider_email;
	private String parkingprovider_password;
	private long parkingprovider_mobile_number;
	
	public void setParkingprovider_mobile_number(long parkingprovider_mobile_number) {
		this.parkingprovider_mobile_number = parkingprovider_mobile_number;
	}
	private LoginVO loginVO;
	
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public int getParkingprovider_id() {
		return parkingprovider_id;
	}
	public void setParkingprovider_id(int parkingprovider_id) {
		this.parkingprovider_id = parkingprovider_id;
	}
	public String getParkingprovider_first_name() {
		return parkingprovider_first_name;
	}
	public void setParkingprovider_first_name(String parkingprovider_first_name) {
		this.parkingprovider_first_name = parkingprovider_first_name;
	}
	public String getParkingprovider_last_name() {
		return parkingprovider_last_name;
	}
	public void setParkingprovider_last_name(String parkingprovider_last_name) {
		this.parkingprovider_last_name = parkingprovider_last_name;
	}
	public String getParkingprovider_email() {
		return parkingprovider_email;
	}
	public void setParkingprovider_email(String parkingprovider_email) {
		this.parkingprovider_email = parkingprovider_email;
	}
	public String getParkingprovider_password() {
		return parkingprovider_password;
	}
	public void setParkingprovider_password(String parkingprovider_password) {
		this.parkingprovider_password = parkingprovider_password;
	}
	public long getParkingprovider_mobile_number() {
		return parkingprovider_mobile_number;
	}
	public void setParkingprovider_mobile_number(int parkingprovider_mobile_number) {
		this.parkingprovider_mobile_number = parkingprovider_mobile_number;
	}
	

}
