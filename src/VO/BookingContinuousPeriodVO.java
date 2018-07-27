package VO;

import java.io.Serializable;

public class BookingContinuousPeriodVO implements Serializable {
	private int bookingContinuousPeriod_id;
	private String start_date;
	private String end_date;
	private String start_time;
	private String end_time;
	
	private BookParkingSlotsVO bookParkingSlotsVO;

	
	public int getBookingContinuousPeriod_id() {
		return bookingContinuousPeriod_id;
	}

	public void setBookingContinuousPeriod_id(int bookingContinuousPeriod_id) {
		this.bookingContinuousPeriod_id = bookingContinuousPeriod_id;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}

	public BookParkingSlotsVO getBookParkingSlotsVO() {
		return bookParkingSlotsVO;
	}

	public void setBookParkingSlotsVO(BookParkingSlotsVO bookParkingSlotsVO) {
		this.bookParkingSlotsVO = bookParkingSlotsVO;
	}

	
}
