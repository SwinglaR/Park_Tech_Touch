package VO;

public class ParkinglotsAttachmentVO {

	private int parkinglotsattachment_id;
	private String filename;
	private String encryptedfilename;
	private ParkinglotsVO parkinglotsVO;
	public int getParkinglotsattachment_id() {
		return parkinglotsattachment_id;
	}
	public void setParkinglotsattachment_id(int parkinglotsattachment_id) {
		this.parkinglotsattachment_id = parkinglotsattachment_id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getEncryptedfilename() {
		return encryptedfilename;
	}
	public void setEncryptedfilename(String encryptedfilename) {
		this.encryptedfilename = encryptedfilename;
	}
	public ParkinglotsVO getParkinglotsVO() {
		return parkinglotsVO;
	}
	public void setParkinglotsVO(ParkinglotsVO parkinglotsVO) {
		this.parkinglotsVO = parkinglotsVO;
	}
	
	
}
