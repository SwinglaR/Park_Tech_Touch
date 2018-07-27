package VO;

import java.io.Serializable;

public class BookParkingSlotsVO implements Serializable 
{
private int bookParkingSlots_id;
private String booking_type;
private int fourWheeler;
private int twoWheeler;
private LoginVO loginVO;
private ParkinglotsVO parkinglotsVO;

public int getBookParkingSlots_id() {
	return bookParkingSlots_id;
}
public void setBookParkingSlots_id(int bookParkingSlots_id) {
	this.bookParkingSlots_id = bookParkingSlots_id;
}
public int getFourWheeler() {
	return fourWheeler;
}
public String getBooking_type() {
	return booking_type;
}
public void setBooking_type(String booking_type) {
	this.booking_type = booking_type;
}
public void setFourWheeler(int fourWheeler) {
	this.fourWheeler = fourWheeler;
}
public int getTwoWheeler() {
	return twoWheeler;
}
public void setTwoWheeler(int twoWheeler) {
	this.twoWheeler = twoWheeler;
}
public LoginVO getLoginVO() {
	return loginVO;
}
public void setLoginVO(LoginVO loginVO) {
	this.loginVO = loginVO;
}
public ParkinglotsVO getParkinglotsVO() {
	return parkinglotsVO;
}
public void setParkinglotsVO(ParkinglotsVO parkinglotsVO) {
	this.parkinglotsVO = parkinglotsVO;
}


}
