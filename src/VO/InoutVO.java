package VO;

import java.io.Serializable;

public class InoutVO implements Serializable {

private int inout_id;
private ParkinglotsVO parkinglotsVO;
private ClientVO clientVO;
private String val_vehicletype;
private String val_vehiclenumber;
private String val_date;
private String val_time;
private String val_action;
public int getInout_id() {
	return inout_id;
}
public void setInout_id(int inout_id) {
	this.inout_id = inout_id;
}
public ParkinglotsVO getParkinglotsVO() {
	return parkinglotsVO;
}
public void setParkinglotsVO(ParkinglotsVO parkinglotsVO) {
	this.parkinglotsVO = parkinglotsVO;
}
public ClientVO getClientVO() {
	return clientVO;
}
public void setClientVO(ClientVO clientVO) {
	this.clientVO = clientVO;
}
public String getVal_vehicletype() {
	return val_vehicletype;
}
public void setVal_vehicletype(String val_vehicletype) {
	this.val_vehicletype = val_vehicletype;
}
public String getVal_vehiclenumber() {
	return val_vehiclenumber;
}
public void setVal_vehiclenumber(String val_vehiclenumber) {
	this.val_vehiclenumber = val_vehiclenumber;
}
public String getVal_date() {
	return val_date;
}
public void setVal_date(String val_date) {
	this.val_date = val_date;
}
public String getVal_time() {
	return val_time;
}
public void setVal_time(String val_time) {
	this.val_time = val_time;
}
public String getVal_action() {
	return val_action;
}
public void setVal_action(String val_action) {
	this.val_action = val_action;
}


}
