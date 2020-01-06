package com.cg.uas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.dao.IApplicantDAO;
import com.cg.uas.exception.UASException;

@Service
public class ApplicantServiceImpl implements IApplicantService {

	@Autowired
	IApplicantDAO applicantdao;
	
	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		 - Function Name	:	viewAllScheduledPrograms
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method viewAllScheduledPrograms()
	    **************************************************************************************/
	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		return applicantdao.viewAllScheduledPrograms();
	}

	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		 - Function Name	:	viewAllProgramsOffered
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method viewAllProgramsOffered()
		 *************************************************************************************/
	@Override
	public List<ProgramsOfferedBean> viewAllProgramsOffered()
			throws UASException {
		return null;
	}
	
	//------------------------ University Admission System --------------------------//
	   /************************************************************************************
		- Function Name	    :	viewScheduledProgram
		- Input Parameters  :   id
		- Return Type		:	ProgramsScheduledBean
		- Throws		    :  	UASException
		- Author			:	Group 3
		- Description		:	calls the dao method viewScheduledProgram()
		**************************************************************************************/
	@Override
	public ProgramsScheduledBean viewScheduledProgram(int id)
			throws UASException {
		return applicantdao.viewScheduledProgram(id);
	}
	
	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		 - Function Name	:	addApplicant
		 - Input Parameters :   applicant
		 - Return Type		:	ApplicationBean
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	calls the dao method addApplicant()
		**************************************************************************************/
	@Override
	public ApplicationBean addApplicant(ApplicationBean applicant)
			throws UASException {
		return applicantdao.addApplicant(applicant);
	}

	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		 	- Function Name	    :	viewStatusById
		 	- Input Parameters  :   appid
		 	- Return Type		:	ApplicationBean
		 	- Throws		    :  	UASException
		 	- Author			:	Group 3
		 	- Description		:	calls the dao method viewStatusById()
		 **************************************************************************************/
	@Override
	public ApplicationBean viewStatusById(int appid) throws UASException {
		return applicantdao.viewStatusById(appid);
	}

}
