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
package com.jlinfo.admin.service.facade;

import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonProperty;

import java.io.Serializable;

/**
 * DTO to customize the returned message
 *
 * @author JeffyYang
 */
@XmlRootElement
public abstract class ResponseResult implements Serializable {

	private static final long serialVersionUID = 1785179787553883215L;
	
	@JsonProperty("result_code")
	private int resultCode;
	
	@JsonProperty("result_code")
	private String resultMsg; 

	@JsonProperty("datas")
	private Object datas;
	
    public ResponseResult() {

    	this.resultCode = 0;
    	this.resultMsg = "";
    }
    
	public int getResultCode() {
		return resultCode;
	}

	public void setResultCode(int resultCode) {
		this.resultCode = resultCode;
	}

	public String getResultMsg() {
		return resultMsg;
	}

	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}

	public Object getDatas() {
		return datas;
	}

	public void setDatas(Object datas) {
		this.datas = datas;
	}

}
