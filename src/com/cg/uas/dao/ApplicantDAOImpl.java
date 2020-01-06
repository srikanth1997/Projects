package com.cg.uas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.exception.UASException;

@Repository
@Transactional
public class ApplicantDAOImpl implements IApplicantDAO {

	@PersistenceContext
	EntityManager entityManager;
	
	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		- Function Name	    :	viewAllScheduledPrograms
	 	- Return Type		:	list
	 	- Throws		    :  	UASException
	 	- Author			:	Group 3
	 	- Description		:	retrieves all the programs schedule and returns list
		**************************************************************************************/
	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		TypedQuery<ProgramsScheduledBean> query = entityManager.createQuery(
				"from ProgramsScheduledBean", ProgramsScheduledBean.class);
		List<ProgramsScheduledBean> list = query.getResultList();
		return list;
	}
	
	//------------------------ University Admission System --------------------------//
		/************************************************************************************
		 - Function Name	:	viewAllProgramsOffered
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	retrieves all the programs offered and returns list
		 **************************************************************************************/
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
		- Description		:	retrieves all the programs offered and returns list
		**************************************************************************************/
	@Override
	public ProgramsScheduledBean viewScheduledProgram(int id)
			throws UASException {
		ProgramsScheduledBean bean = entityManager.find(
				ProgramsScheduledBean.class, id);
		return bean;
	}

	//------------------------ University Admission System --------------------------//
	/************************************************************************************
	 	- Function Name	    :	addApplicant
	 	- Input Parameters  :   applicant
	 	- Return Type		:	ApplicationBean
	 	- Throws		    :  	UASException
	 	- Author			:	Group 3
	 	- Description		:	adds the applicant details
	 **************************************************************************************/
	@Override
	public ApplicationBean addApplicant(ApplicationBean applicant)
			throws UASException {
		applicant.setStatus("applied");
		entityManager.persist(applicant);
		entityManager.flush();
		return applicant;
	}

	//------------------------ University Admission System --------------------------//
	/************************************************************************************
	 	- Function Name	    :	viewStatusById
	 	- Input Parameters  :   appid
	 	- Return Type		:	ApplicationBean
	 	- Throws		    :  	UASException
	 	- Author			:	Group 3
	 	- Description		:	view the status of the applicant by id
	 **************************************************************************************/
	@Override
	public ApplicationBean viewStatusById(int appid) throws UASException {
		ApplicationBean app = entityManager.find(ApplicationBean.class, appid);
		return app;
	}

}
