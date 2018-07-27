package VO;

import java.io.Serializable;

public class FeedbackVO implements Serializable {

	private int feedback_id;
	private String feedback;
	private int rating;
	private ParkinglotsVO parkinglotsVO;
	private LoginVO loginVO;
	public int getFeedback_id() {
		return feedback_id;
	}
	public void setFeedback_id(int feedback_id) {
		this.feedback_id = feedback_id;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public ParkinglotsVO getParkinglotsVO() {
		return parkinglotsVO;
	}
	public void setParkinglotsVO(ParkinglotsVO parkinglotsVO) {
		this.parkinglotsVO = parkinglotsVO;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	
}
