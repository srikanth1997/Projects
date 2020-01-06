package com.cg.uas.service;

import java.sql.Date;
import java.util.List;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.exception.UASException;

public interface IMACService {

	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException;

	public List<ApplicationBean> viewApplicant(String programId)
			throws UASException;

	public ApplicationBean accept(int appId) throws UASException;

	public ApplicationBean interview(int appId, Date date) throws UASException;

	public List<ApplicationBean> confirmedApplicants(String programId)
			throws UASException;

	public ApplicationBean confirm(int appId) throws UASException;

	public ApplicationBean reject(int appId) throws UASException;

}
