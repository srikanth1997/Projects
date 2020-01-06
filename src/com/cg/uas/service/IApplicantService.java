package com.cg.uas.service;

import java.util.List;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.exception.UASException;

public interface IApplicantService {
	
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException;

	public List<ProgramsOfferedBean> viewAllProgramsOffered()
			throws UASException;

	public ProgramsScheduledBean viewScheduledProgram(int id)
			throws UASException;

	public ApplicationBean addApplicant(ApplicationBean applicant)
			throws UASException;

	public ApplicationBean viewStatusById(int appid) throws UASException;

}
