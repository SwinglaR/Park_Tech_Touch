package VO;

import java.io.Serializable;

public class ParkinglotsVO implements Serializable {

private int parkinglots_id;
private String val_plotname2;
private String val_latitude;
private String val_longitude;
private String val_contactpersonname;
private String val_contactnumber;
private String val_address;
private String val_description;
private String val_2capacity;
private String val_4capacity;
private String val_2price;
private String val_4price;
private StateVO v;
private CityVO v1;
private AreaVO v2;
private ParkingProviderVO parkingProviderVO;
public String getVal_2price() {
	return val_2price;
}
public void setVal_2price(String val_2price) {
	this.val_2price = val_2price;
}
public String getVal_4price() {
	return val_4price;
}
public void setVal_4price(String val_4price) {
	this.val_4price = val_4price;
}
public String getVal_2capacity() {
	return val_2capacity;
}
public void setVal_2capacity(String val_2capacity) {
	this.val_2capacity = val_2capacity;
}
public String getVal_4capacity() {
	return val_4capacity;
}
public void setVal_4capacity(String val_4capacity) {
	this.val_4capacity = val_4capacity;
}
public ParkingProviderVO getParkingProviderVO() {
	return parkingProviderVO;
}
public void setParkingProviderVO(ParkingProviderVO parkingProviderVO) {
	this.parkingProviderVO = parkingProviderVO;
}
public int getParkinglots_id() {
	return parkinglots_id;
}
public void setParkinglots_id(int parkinglots_id) {
	this.parkinglots_id = parkinglots_id;
}
public String getVal_plotname2() {
	return val_plotname2;
}
public void setVal_plotname2(String val_plotname2) {
	this.val_plotname2 = val_plotname2;
}
public String getVal_latitude() {
	return val_latitude;
}
public void setVal_latitude(String val_latitude) {
	this.val_latitude = val_latitude;
}
public String getVal_longitude() {
	return val_longitude;
}
public void setVal_longitude(String val_longitude) {
	this.val_longitude = val_longitude;
}
public String getVal_contactpersonname() {
	return val_contactpersonname;
}
public void setVal_contactpersonname(String val_contactpersonname) {
	this.val_contactpersonname = val_contactpersonname;
}
public String getVal_contactnumber() {
	return val_contactnumber;
}
public void setVal_contactnumber(String val_contactnumber) {
	this.val_contactnumber = val_contactnumber;
}
public String getVal_address() {
	return val_address;
}
public void setVal_address(String val_address) {
	this.val_address = val_address;
}
public String getVal_description() {
	return val_description;
}
public void setVal_description(String val_description) {
	this.val_description = val_description;
}
public StateVO getV() {
	return v;
}
public void setV(StateVO v) {
	this.v = v;
}
public CityVO getV1() {
	return v1;
}
public void setV1(CityVO v1) {
	this.v1 = v1;
}
public AreaVO getV2() {
	return v2;
}
public void setV2(AreaVO v2) {
	this.v2 = v2;
}

}
