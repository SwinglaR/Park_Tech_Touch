package VO;

import java.io.Serializable;

public class PackageVO implements Serializable{
	
	private ParkinglotsVO parkinglotsVO;
	private int package_id;
	private String val_package_name;
	private String val_package_description;
	private String val_package_price;
	private String val_package_duration;
	private String val_package_hour;
	private String val_package_charge;
	
	public ParkinglotsVO getParkinglotsVO() {
		return parkinglotsVO;
	}
	public void setParkinglotsVO(ParkinglotsVO parkinglotsVO) {
		this.parkinglotsVO = parkinglotsVO;
	}
	public String getVal_package_hour() {
		return val_package_hour;
	}
	public void setVal_package_hour(String val_package_hour) {
		this.val_package_hour = val_package_hour;
	}
	public String getVal_package_charge() {
		return val_package_charge;
	}
	public void setVal_package_charge(String val_package_charge) {
		this.val_package_charge = val_package_charge;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getVal_package_name() {
		return val_package_name;
	}
	public void setVal_package_name(String val_package_name) {
		this.val_package_name = val_package_name;
	}
	public String getVal_package_description() {
		return val_package_description;
	}
	public void setVal_package_description(String val_package_description) {
		this.val_package_description = val_package_description;
	}
	public String getVal_package_price() {
		return val_package_price;
	}
	public void setVal_package_price(String val_package_price) {
		this.val_package_price = val_package_price;
	}
	public String getVal_package_duration() {
		return val_package_duration;
	}
	public void setVal_package_duration(String val_package_duration) {
		this.val_package_duration = val_package_duration;
	}
	

}
