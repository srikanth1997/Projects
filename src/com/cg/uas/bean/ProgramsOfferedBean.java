package com.cg.uas.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="program_offered")
public class ProgramsOfferedBean {
	
	@Id
	@Column(name="ProgramName")
	private String programName;
	@Column(name="description")
	private String description;
	@Column(name="applicant_eligibility")
	private String applicantEligibility;
	@Column(name="duration")
	private String duration;
	@Column(name="degree_certificate_offered")
	private String degreeCertificate;
	
	public String getProgramName() {
		return programName;
	}
	@Override
	public String toString() {
		return "ProgramsOfferedBean [programName=" + programName
				+ ", description=" + description + ", applicantEligibility="
				+ applicantEligibility + ", duration=" + duration
				+ ", degreeCertificate=" + degreeCertificate + "]";
	}
	public void setProgramName(String programName) {
		this.programName = programName;
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

}
