package com.cg.uas.dao;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cg.uas.bean.ProgramsOfferedBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.bean.UserBean;
import com.cg.uas.exception.UASException;

@Repository
@Transactional
public class AdminDAOImpl implements IAdminDAO {

	@PersistenceContext
	EntityManager entitymanager;
	
	//------------------------ University Admission System --------------------------//
	/********************************************************************************
	 - Function Name	:	getAllScheduledPrograms
	 - Return Type		:	list
	 - Throws		    :  	UASException
	 - Author			:	Group 3
	 - Description		:	retrieves all the scheduled program details and returns list
	 **********************************************************************************/
	@Override
	public List<ProgramsScheduledBean> getAllScheduledPrograms()
			throws UASException {
		TypedQuery<ProgramsScheduledBean> scheduleList = entitymanager
				.createQuery("SELECT p FROM ProgramsScheduledBean p",
						ProgramsScheduledBean.class);
		return scheduleList.getResultList();
	}
	
	//------------------------ University Admission System --------------------------//
	/***********************************************************************************
 	 - Function Name	:	addProgram
 	 - Input Parameters	:	program
 	 - Return Type		:	boolean
  	 - Throws		    :  	UASException
 	 - Author			:	Group 3
 	 - Description		:	adding a program to offered program and returns boolean
    *************************************************************************************/

	@Override
	public boolean addProgram(ProgramsOfferedBean program) throws UASException {
		entitymanager.persist(program);
		return (true);
	}

	//------------------------ University Admission System --------------------------//
		/***********************************************************************************
	 	 - Function Name	:	viewAllProgramsOffered
	 	 - Return Type		:	list
	  	 - Throws		    :  	UASException
	 	 - Author			:	Group 3
	 	 - Description		:	retrieves all the offeres programs and returns list
	    *************************************************************************************/
	@Override
	public List<ProgramsOfferedBean> viewAllProgramsOffered()
			throws UASException {
		TypedQuery<ProgramsOfferedBean> query = entitymanager.createQuery(
				"SELECT p FROM ProgramsOfferedBean p",
				ProgramsOfferedBean.class);
		return query.getResultList();
	}
	
	//------------------------ University Admission System --------------------------//
	/*******************************************************************************
	 - Function Name	:	checkuser
	 - Input Parameters	:   id,password
	 - Return Type		:	UserBean
	 - Throws			:  	UASException
	 - Author			:	Group 3
	 - Description		:	checks the user details valid/invalid
	 ********************************************************************************/

	@Override
	public UserBean checkUser(String id, String password) throws UASException {
		TypedQuery<UserBean> query = entitymanager
				.createQuery("from UserBean where userName=? and password=?",
						UserBean.class);
		query.setParameter(1, id);
		query.setParameter(2, password);
		try {
			UserBean user = query.getSingleResult();
			return user;
		} catch (Exception e) {
		}
		return null;
	}
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		 - Function Name	:	addSchedule
		 - Input Parameters	:   programSchedule
		 - Return Type		:	ProgramsScheduledBean
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	adding a program to scheduled program 
		 ********************************************************************************/

	@Override
	public ProgramsScheduledBean addSchedule(
			ProgramsScheduledBean programSchedule) throws UASException {
		entitymanager.persist(programSchedule);
		entitymanager.flush();
		return programSchedule;
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
	 	- Function Name		:	deleteoffered
	 	- Input Parameters	:   name
	 	- Return Type		:	boolean
	 	- Throws			:  	UASException
	 	- Author			:	Group 3
	 	- Description		:	deletes offered program from the existing programs
		 ********************************************************************************/	
	
	@Override
	public boolean deleteOffered(String name) throws UASException {
		ProgramsOfferedBean bean = entitymanager.find(
				ProgramsOfferedBean.class, name);
		if (bean != null) {
			entitymanager.remove(bean);
			return true;
		} else
			return false;
	}
	
	//------------------------ University Admission System --------------------------//
	  /*******************************************************************************
		 - Function Name	:	findoffered
		 - Input Parameters	:   name
		 - Return Type		:	ProgramsOfferedBean
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	finds the offered program
	  ********************************************************************************/	
	@Override
	public ProgramsOfferedBean findOffered(String name) throws UASException {
		ProgramsOfferedBean bean = entitymanager.find(
				ProgramsOfferedBean.class, name);
		if (bean != null) {

			return bean;
		} else
			return null;
	}

	//------------------------ University Admission System --------------------------//
	/*******************************************************************************
 		- Function Name		:	updateoffered
 		- Input Parameters	:   bean
 		- Return Type		:	boolean
 		- Throws			:  	UASException
 		- Author			:	Group 3
 		- Description		:	updates the offered program details
	 ********************************************************************************/	
	@Override
	public boolean updateOffered(ProgramsOfferedBean bean) throws UASException {
		entitymanager.merge(bean);
		return true;
	}
	
	//------------------------ University Admission System --------------------------//
	/*******************************************************************************
 		- Function Name		:	getschedulesBydate
 		- Input Parameters	:   startDate,endDate
 		- Return Type		:	list
 		- Throws			:  	UASException
 		- Author			:	Group 3
 		- Description		:	retrieves the program scheduled in a given time period
	 ********************************************************************************/	
	@Override
	public List<ProgramsScheduledBean> getschedulesBydate(Date startDate,
			Date endDate) throws UASException {
		TypedQuery<ProgramsScheduledBean> query = entitymanager
				.createQuery(
						"select p from ProgramsScheduledBean p where startDate >= ? and endDate <= ?",
						ProgramsScheduledBean.class);
		query.setParameter(1, startDate);
		query.setParameter(2, endDate);
		return query.getResultList();

	}
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
	 	- Function Name		:	viewAllScheduledPrograms
	 	- Return Type		:	list
	 	- Throws			:  	UASException
	 	- Author			:	Group 3
	 	- Description		:	retrieves all the scheduled programs
		 ********************************************************************************/	

	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		TypedQuery<ProgramsScheduledBean> query = entitymanager.createQuery(
				"select psb from ProgramsScheduledBean psb", ProgramsScheduledBean.class);
		List<ProgramsScheduledBean> list = query.getResultList();
		return list;
	}
	
	//------------------------ University Admission System --------------------------//
		/*******************************************************************************
		 - Function Name	:	deleteScheduledPrograms
		 - Return Type		:	boolean
		 - Input Parameters	:   scheduleId
		 - Throws			:  	UASException
		 - Author			:	Group 3
		 - Description		:	deletes the scheduled program
		********************************************************************************/	
	@Override
	public boolean deleteScheduledPrograms(int scheduleId) throws UASException {
		ProgramsScheduledBean bean = entitymanager.find(
				ProgramsScheduledBean.class, scheduleId);
		if (bean != null) {
			entitymanager.remove(bean);
			return true;
		} else
			return false;
	}
}

