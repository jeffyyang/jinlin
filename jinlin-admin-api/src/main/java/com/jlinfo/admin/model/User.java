/**
 * Copyright 1999-2014 dangdang.com.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.jlinfo.admin.model;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonProperty;

/**
 * @author jeffyyang
 */
@XmlRootElement
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8463894109605838093L;

	@JsonProperty("user_id")
    private Long id;

    @JsonProperty("user_name")
    private String name;
    
    @JsonProperty("email")
    private String email;
    
    @JsonProperty("mobile")
    private String mobile;
   
    @JsonProperty("salt")
    private String salt;    
   
    @JsonProperty("password")
    private String password;        
    
    @JsonProperty("avatar")
    private String avatar;
    
    @JsonProperty("status")
    private int status;    

    @JsonProperty("update_time")
    private long updateTime;    
    
    @JsonProperty("create_time")
    private long createTime;    
    
    public User(){}

    public User(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

//  @XmlElement(name = "username")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public long getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(long updateTime) {
		this.updateTime = updateTime;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	@Override
    public String toString() {
        return "User (" +
                "id=" + id +
                ", name='" + name + '\'' +
                ')';
    }
}
