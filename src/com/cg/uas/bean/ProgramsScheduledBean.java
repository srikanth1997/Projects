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
@Table(name="program_scheduled")
public class ProgramsScheduledBean {
	
	@Id 
	@SequenceGenerator(name="myseq", sequenceName="program_seq",allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="myseq")
	@Column(name="Scheduled_program_id")
	private int programId;
	@Column(name="programname")
	private String programName;
	@Column(name="location")
	private String location;
	@Column(name="start_date")
	private Date startDate;
	@Column(name="end_date")
	private Date endDate;
	@Column(name="sessions_Per_Week")
	private String sessionPerWeek;
	
	public int getProgramId() {
		return programId;
	}
	public void setProgramId(int programId) {
		this.programId = programId;
	}
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getSessionPerWeek() {
		return sessionPerWeek;
	}
	public void setSessionPerWeek(String sessionPerWeek) {
		this.sessionPerWeek = sessionPerWeek;
	}
	@Override
	public String toString() {
		return "ProgramScheduled [programId=" + programId + ", programName="
				+ programName + ", location=" + location + ", startDate="
				+ startDate + ", endDate=" + endDate + ", sessionPerWeek="
				+ sessionPerWeek + "]";
	}
	

}
