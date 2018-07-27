package VO;

import java.io.Serializable;

public class LoginVO implements Serializable {

private int login_id;
private String email;
private String password;
private String user_type;
public int getLogin_id() {
	return login_id;
}
public void setLogin_id(int login_id) {
	this.login_id = login_id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUser_type() {
	return user_type;
}
public void setUser_type(String user_type) {
	this.user_type = user_type;
}


}
