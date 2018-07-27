package VO;

import java.io.Serializable;

public class StateVO implements Serializable {
	private int state_id;
	private String val_statename;
	public int getState_id() {
		return state_id;
	}
	public void setState_id(int state_id) {
		this.state_id = state_id;
	}
	public String getVal_statename() {
		return val_statename;
	}
	public void setVal_statename(String val_statename) {
		this.val_statename = val_statename;
	}
	
}
