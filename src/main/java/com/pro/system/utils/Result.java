package com.pro.system.utils;

import java.io.Serializable;
import java.util.Map;

public class Result  implements Serializable{

	private static final long serialVersionUID = 4752775803377839148L;

	private boolean success;
	private String message;
	private Object singleData;
	private int errorType;
	private Map<String,Object> mapData;
	
	
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getSingleData() {
		return singleData;
	}
	public void setSingleData(Object singleData) {
		this.singleData = singleData;
	}
	public int getErrorType() {
		return errorType;
	}
	public void setErrorType(int errorType) {
		this.errorType = errorType;
	}
	public Map<String, Object> getMapData() {
		return mapData;
	}
	public void setMapData(Map<String, Object> mapData) {
		this.mapData = mapData;
	}
	
}
