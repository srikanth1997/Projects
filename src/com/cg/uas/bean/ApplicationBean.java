package com.cg.uas.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Application")
public class ApplicationBean {
	@Id
	@Column(name="Application_id")
	@SequenceGenerator(name="applicationseq", sequenceName="application_seq",allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="applicationseq")
	private int applicationId;
	@Column(name="full_name")
	private String fullName;
	@Column(name="date_of_birth")
	private Date dateOfBirth;
	@Column(name="highest_qualification")
	private String highestQualification;
	@Column(name="marks_obtained")
	private int marksObtained;
	@Column(name="goals")
	private String goals;
	@Column(name="email_id")
	private String emailID;
	@Column(name="Scheduled_program_id")
	private String scheduledProgramID;
	@Column(name="status")
	private String status;
	@Column(name="Date_Of_Interview")
	private Date dateOfInterview;
	public int getApplicationId() {
		return applicationId;
	}
	
	/*
	 * Getters And Setters Methods
	 */
	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getHighestQualification() {
		return highestQualification;
	}
	public void setHighestQualification(String highestQualification) {
		this.highestQualification = highestQualification;
	}
	public int getMarksObtained() {
		return marksObtained;
	}
	public void setMarksObtained(int marksObtained) {
		this.marksObtained = marksObtained;
	}
	public String getGoals() {
		return goals;
	}
	public void setGoals(String goals) {
		this.goals = goals;
	}
	public String getEmailID() {
		return emailID;
	}
	@Override
	public String toString() {
		return "ApplicationBean [applicationId=" + applicationId
				+ ", fullName=" + fullName + ", dateOfBirth=" + dateOfBirth
				+ ", highestQualification=" + highestQualification
				+ ", marksObtained=" + marksObtained + ", goals=" + goals
				+ ", emailID=" + emailID + ", scheduledProgramID="
				+ scheduledProgramID + ", status=" + status
				+ ", dateOfInterview=" + dateOfInterview + "]";
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getScheduledProgramID() {
		return scheduledProgramID;
	}
	public void setScheduledProgramID(String scheduledProgramID) {
		this.scheduledProgramID = scheduledProgramID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getDateOfInterview() {
		return dateOfInterview;
	}
	public void setDateOfInterview(Date dateOfInterview) {
		this.dateOfInterview = dateOfInterview;
	}
	
	
	
}
