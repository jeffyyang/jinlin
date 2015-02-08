package com.jlinfo.admin.form;

import java.io.Serializable;

import org.codehaus.jackson.annotate.JsonProperty;

public class LoginForm implements Serializable {

	private static final long serialVersionUID = 4228132546796214539L;

	@JsonProperty("login_name")
    private String loginName;

    private String password;

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}	
    
    
	
}
