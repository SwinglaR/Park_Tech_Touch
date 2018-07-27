package VO;

import java.io.Serializable;

public class BookingMultiDateVO implements Serializable {
	private int bookingMultiDate_id;
	private String start_date;
	private String start_time;
	private String end_time;
	
	private BookParkingSlotsVO bookParkingSlotsVO;

	public int getBookingMultiDate_id() {
		return bookingMultiDate_id;
	}

	public void setBookingMultiDate_id(int bookingMultiDate_id) {
		this.bookingMultiDate_id = bookingMultiDate_id;
	}

	
	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
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
