package com.cg.uas.service;

import java.sql.Date;
import java.util.List;

import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.bean.UserBean;
import com.cg.uas.exception.UASException;

public interface IAdminService {
	
	public boolean addProgram(ProgramsOfferedBean program) throws UASException;
	
	public List<ProgramsOfferedBean> viewAllProgramsOffered()
			throws UASException;

	public UserBean checkuser(String id, String password) throws UASException;

	public ProgramsScheduledBean addSchedule(
			ProgramsScheduledBean programSchedule) throws UASException;

	public List<ProgramsScheduledBean> getAllScheduledPrograms()
			throws UASException;

	public boolean deleteoffered(String name) throws UASException;

	public ProgramsOfferedBean findoffered(String name) throws UASException;

	public boolean updateoffered(ProgramsOfferedBean bean) throws UASException;

	public List<ProgramsScheduledBean> getschedulesBydate(Date startDate,
			Date endDate) throws UASException;

	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException;

	public boolean deleteScheduledPrograms(int scheduleId) throws UASException;
}
