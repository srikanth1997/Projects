package com.cg.uas.exception;

//--------------- University Admission System ------------------//
	/****************************************************************
			-Function	 :  UASException
			-Description :  Handles the exception
	 *******************************************************************/
public class UASException extends Exception{
	
	private static final long serialVersionUID = 1L;
	
	public UASException(){
		
	}
	public UASException(String message) {
		super(message);
	}

}
