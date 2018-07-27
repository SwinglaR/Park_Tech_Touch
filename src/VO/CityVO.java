package VO;

import java.io.Serializable;

public class CityVO implements Serializable {
private int city_id;
private String val_cityname;
private StateVO v;
public StateVO getV() {
	return v;
}
public void setV(StateVO v) {
	this.v = v;
}
public int getCity_id() {
	return city_id;
}
public void setCity_id(int city_id) {
	this.city_id = city_id;
}
public String getVal_cityname() {
	return val_cityname;
}
public void setVal_cityname(String val_cityname) {
	this.val_cityname = val_cityname;
}
}
