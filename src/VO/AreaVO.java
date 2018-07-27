package VO;

import java.io.Serializable;

public class AreaVO implements Serializable { 
	private int area_id;
	private String val_areaname;
	private StateVO v1;
	private CityVO v2;
	public int getArea_id() {
		return area_id;
	}
	public void setArea_id(int area_id) {
		this.area_id = area_id;
	}
	public String getVal_areaname() {
		return val_areaname;
	}
	public void setVal_areaname(String val_areaname) {
		this.val_areaname = val_areaname;
	}
	public StateVO getV1() {
		return v1;
	}
	public void setV1(StateVO v1) {
		this.v1 = v1;
	}
	public CityVO getV2() {
		return v2;
	}
	public void setV2(CityVO v2) {
		this.v2 = v2;
	}

}
