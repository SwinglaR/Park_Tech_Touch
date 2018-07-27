package VO;

public class ClientVO {


private int client_id;
private String client_first_name;
private String client_last_name;
private String client_mobile_number;




public String getClient_mobile_number() {
	return client_mobile_number;
}
public void setClient_mobile_number(String client_mobile_number) {
	this.client_mobile_number = client_mobile_number;
}
private LoginVO loginVO;

public LoginVO getLoginVO() {
	return loginVO;
}
public void setLoginVO(LoginVO loginVO) {
	this.loginVO = loginVO;
}
public int getClient_id() {
	return client_id;
}
public void setClient_id(int client_id) {
	this.client_id = client_id;
}
public String getClient_first_name() {
	return client_first_name;
}
public void setClient_first_name(String client_first_name) {
	this.client_first_name = client_first_name;
}
public String getClient_last_name() {
	return client_last_name;
}
public void setClient_last_name(String client_last_name) {
	this.client_last_name = client_last_name;
}
}
