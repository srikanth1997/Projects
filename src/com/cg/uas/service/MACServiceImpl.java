package com.cg.uas.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.dao.IMacDao;
import com.cg.uas.exception.UASException;

@Service
public class MACServiceImpl implements IMACService {

	@Autowired
	IMacDao macdao;
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		  - Function Name	:	viewAllScheduledPrograms
		  - Return Type		:	list
		  - Throws		    :  	UASException
		  - Author			:	Group 3
		  - Description		:	calls the dao method viewAllScheduledPrograms()
		******************************************************************************/
	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		return macdao.viewAllScheduledPrograms();
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 - Function Name	 :	viewApplicant
		 - Input Parameters  :  programId
		 - Return Type		 :	list
		 - Throws		     :  UASException
		 - Author			 :	Group 3
		 - Description		 :	calls the dao method viewApplicant()
		 ******************************************************************************/
	
	@Override
	public List<ApplicationBean> viewApplicant(String programId)
			throws UASException {
		return macdao.viewApplicant(programId);
	}
	
	//------------------------ University Admission System --------------------------//
	   /****************************************************************************
		    - Function Name	     :	accept
			- Input Parameters   :  appId
			- Return Type		 :	ApplicationBean
			- Throws		     :  UASException
			- Author			 :	Group 3
			- Description		 :	calls the dao method accept()
		 ******************************************************************************/
	@Override
	public ApplicationBean accept(int appId) throws UASException {
		return macdao.accept(appId);
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
			 - Function Name	:	interview
			 - Input Parameters :   appId,date
			 - Return Type		:	ApplicationBean
			 - Throws		    :  	UASException
			 - Author			:	Group 3
			 - Description		:	calls the dao method interview()
		******************************************************************************/
	@Override
	public ApplicationBean interview(int appId, Date date) throws UASException {
		return macdao.interview(appId, date);
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
			 - Function Name	:	confirmedApplicants
			 - Input Parameters :   programId
			 - Return Type		:	list
			 - Throws		    :  	UASException
			 - Author			:	Group 3
			 - Description		:	calls the dao method confirmedApplicants()
		******************************************************************************/
	@Override
	public List<ApplicationBean> confirmedApplicants(String programId)
			throws UASException {
		return macdao.confirmedApplicants(programId);
	}

	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 	- Function Name	    :	confirm
		 	- Input Parameters  :   appId
		 	- Return Type		:	ApplicationBean
		 	- Throws		    :  	UASException
		 	- Author			:	Group 3
		 	- Description		:	calls the dao method confirm()
		******************************************************************************/
	@Override
	public ApplicationBean confirm(int appId) throws UASException {
		return macdao.confirm(appId);
	}

	//------------------------ University Admission System --------------------------//
		/****************************************************************************
			 - Function Name	:	reject
			 - Input Parameters :   appId
			 - Return Type		:	ApplicationBean
			 - Throws		    :  	UASException
			 - Author			:	Group 3
			 - Description		:	calls the dao method reject()
		******************************************************************************/
	@Override
	public ApplicationBean reject(int appId) throws UASException {

		return macdao.reject(appId);
	}

}
