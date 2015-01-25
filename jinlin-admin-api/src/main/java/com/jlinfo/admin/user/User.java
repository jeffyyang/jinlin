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
package com.jlinfo.admin.user;

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

	@JsonProperty("userid")
    private Long id;

    @JsonProperty("username")
    private String name;
    
    @JsonProperty("email")
    private String email;

    @JsonProperty("sex")
    private int sex;
    
    @JsonProperty("mobile")
    private String mobile;
    
    @JsonProperty("avatar")
    private String avatar;
    
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

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
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

	@Override
    public String toString() {
        return "User (" +
                "id=" + id +
                ", name='" + name + '\'' +
                ')';
    }
}
