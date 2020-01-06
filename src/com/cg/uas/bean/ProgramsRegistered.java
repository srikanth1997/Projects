package com.cg.uas.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="programs_reg")
public class ProgramsRegistered {
	@Id
	private int programID;
	private String programName;
	private String description;
	private String applicantEligibility;
	private String duration;
	private String degreeCertificate;
	private boolean checkprogram;
	public boolean isCheckprogram() {
		return checkprogram;
	}
	public void setCheckprogram(boolean checkprogram) {
		this.checkprogram = checkprogram;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getApplicantEligibility() {
		return applicantEligibility;
	}
	public void setApplicantEligibility(String applicantEligibility) {
		this.applicantEligibility = applicantEligibility;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getDegreeCertificate() {
		return degreeCertificate;
	}
	public void setDegreeCertificate(String degreeCertificate) {
		this.degreeCertificate = degreeCertificate;
	}
	@Override
	public String toString() {
		return "ProgramsRegistered [programID=" + programID + ", programName="
				+ programName + ", description=" + description
				+ ", applicantEligibility=" + applicantEligibility
				+ ", duration=" + duration + ", degreeCertificate="
				+ degreeCertificate + ", checkprogram=" + checkprogram + "]";
	}
	
	public int getProgramID() {
		return programID;
	}
	public void setProgramID(int programID) {
		this.programID = programID;
	}
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}

}
