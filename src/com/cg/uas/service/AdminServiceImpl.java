package com.cg.uas.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.bean.UserBean;
import com.cg.uas.dao.IAdminDAO;
import com.cg.uas.exception.UASException;

@Service
public class AdminServiceImpl implements IAdminService {

	@Autowired
	IAdminDAO admindao;
	
	//------------------------ University Admission System --------------------------//
		/***********************************************************************************
	 	 - Function Name	:	addProgram
	 	 - Input Parameters	:	program
	 	 - Return Type		:	boolean
	  	 - Throws		    :  	UASException
	 	 - Author			:	Group 3
	 	 - Description		:	calls the dao addProgram()
	   *************************************************************************************/

	@Override
	public boolean addProgram(ProgramsOfferedBean program) throws UASException {
		return admindao.addProgram(program);
	}
	
	//------------------------ University Admission System --------------------------//
		/***********************************************************************************
		 - Function Name	:	viewAllProgramsOffered
	     - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao viewAllProgramsOffered()
		*************************************************************************************/
	
	@Override
	public List<ProgramsOfferedBean> viewAllProgramsOffered() throws UASException {
		return admindao.viewAllProgramsOffered();
	}
	

	//------------------------ University Admission System --------------------------//
	/*******************************************************************************
	 - Function Name	:	checkuser
	 - Input Parameters	:   id,password
	 - Return Type		:	UserBean
	 - Throws			:  	UASException
	 - Author			:	Group 3
	 - Description		:	calls the dao method checkuser()
	 ********************************************************************************/


	@Override
	public UserBean checkuser(String id, String password) throws UASException {
		return admindao.checkUser(id, password);
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		 - Function Name	:	addSchedule
		 - Input Parameters	:   programSchedule
		 - Return Type		:	ProgramsScheduledBean
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method addSchedule()
		 ********************************************************************************/

	@Override
	public ProgramsScheduledBean addSchedule(
			ProgramsScheduledBean programSchedule) throws UASException {
		return admindao.addSchedule(programSchedule);
	}
	
	//------------------------ University Admission System --------------------------//
		/********************************************************************************
		 - Function Name	:	getAllScheduledPrograms
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method getAllScheduledPrograms()
		 **********************************************************************************/

	@Override
	public List<ProgramsScheduledBean> getAllScheduledPrograms()
			throws UASException {
		return admindao.getAllScheduledPrograms();
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		  - Function Name	 :	 deleteoffered
		  - Input Parameters :   name
		  - Return Type		 :	 boolean
		  - Throws			 :   UASException
		  - Author			 :	 Group 3
		  - Description		 :	 calls the dao method deleteoffered()
	    ********************************************************************************/	
		

	@Override
	public boolean deleteoffered(String name) throws UASException{
		return admindao.deleteOffered(name);
	}
	//------------------------ University Admission System --------------------------//
	  /*******************************************************************************
		 - Function Name	:	findoffered
		 - Input Parameters	:   name
		 - Return Type		:	ProgramsOfferedBean
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method findoffered()
	  ********************************************************************************/	

	@Override
	public ProgramsOfferedBean findoffered(String name) throws UASException {
		return admindao.findOffered(name);
	}
	
	//------------------------ University Admission System --------------------------//
	/*******************************************************************************
 		- Function Name		:	updateoffered
 		- Input Parameters	:   bean
 		- Return Type		:	boolean
 		- Throws			:  	UASException
 		- Author			:	Group 3
 		- Description		:	calls the dao method updateoffered()
	 ********************************************************************************/

	@Override
	public boolean updateoffered(ProgramsOfferedBean bean) throws UASException {
		return admindao.updateOffered(bean);
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
	 		- Function Name		:	getschedulesBydate
	 		- Input Parameters	:   startDate,endDate
	 		- Return Type		:	list
	 		- Throws			:  	UASException
	 		- Author			:	Group 3
	 		- Description		:	calls the dao method getschedulesBydate()
		 ********************************************************************************/	
	@Override
	public List<ProgramsScheduledBean> getschedulesBydate(Date startDate,
			Date endDate) throws UASException {
		return admindao.getschedulesBydate(startDate, endDate);
	}

	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		 - Function Name    :	viewAllScheduledPrograms
		 - Return Type		:	list
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method viewAllScheduledPrograms()
		 ********************************************************************************/	
	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		return admindao.viewAllScheduledPrograms();
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		 - Function Name	:	deleteScheduledPrograms
		 - Return Type		:	boolean
		 - Input Parameters	:   scheduleId
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method deleteScheduledPrograms()
		********************************************************************************/	
	@Override
	public boolean deleteScheduledPrograms(int scheduleId) throws UASException {
		return admindao.deleteScheduledPrograms(scheduleId);
	}

}
