package com.cg.uas.dao;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.cg.uas.bean.ApplicationBean;
import com.cg.uas.bean.ProgramsScheduledBean;
import com.cg.uas.exception.UASException;

@Repository
@Transactional
public class MacDAOImpl implements IMacDao {
	@PersistenceContext
	private EntityManager entitymanager;
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 - Function Name	:	viewAllScheduledPrograms
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	retrieves all the scheduled program details and returns the list
		 ******************************************************************************/
	@Override
	public List<ProgramsScheduledBean> viewAllScheduledPrograms()
			throws UASException {
		TypedQuery<ProgramsScheduledBean> query = entitymanager
				.createQuery(
						"select programScheduled from ProgramsScheduledBean programScheduled",
						ProgramsScheduledBean.class);
		return query.getResultList();
	}

	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		  - Function Name	 :	viewApplicant
		  - Input Parameters :  programId
		  - Return Type		 :	list
		  - Throws		     :  UASException
		  - Author			 :	Group 3
		  - Description		 :	views the applicant details
	    ******************************************************************************/
	@Override
	public List<ApplicationBean> viewApplicant(String programId)
			throws UASException {
		TypedQuery<ApplicationBean> query = entitymanager
				.createQuery(
						"select applicants from ApplicationBean applicants where applicants.scheduledProgramID=:id",
						ApplicationBean.class);
		query.setParameter("id", programId);
		return query.getResultList();
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
	 	- Function Name	    :	accept
	 	- Input Parameters  :   appId
	 	- Return Type		:	ApplicationBean
	 	- Throws		    :  	UASException
	 	- Author			:	Group 3
	 	- Description		:	accepts the applicant for interview 
		 ******************************************************************************/
	@Override
	public ApplicationBean accept(int appId) throws UASException {
		Query query = entitymanager
				.createQuery("update  ApplicationBean set status='accepted' where applicationId=?");
		query.setParameter(1, appId);
		query.executeUpdate();
		return null;
	}

	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 - Function Name	:	interview
		 - Input Parameters :   appId,date
		 - Return Type		:	ApplicationBean
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	dateOfInterview will be scheduled
		 ******************************************************************************/
	@Override
	public ApplicationBean interview(int appId, Date date) throws UASException {
		// TODO Auto-generated method stub
		Query query = entitymanager
				.createQuery("update  ApplicationBean set dateOfInterview=? where applicationId=?");
		query.setParameter(1, date);
		query.setParameter(2, appId);
		query.executeUpdate();
		return null;
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 - Function Name	:	confirmedApplicants
		 - Input Parameters :   programId
		 - Return Type		:	list
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	confirmed the applicant
		 ******************************************************************************/
	@Override
	public List<ApplicationBean> confirmedApplicants(String programId)
			throws UASException {
		TypedQuery<ApplicationBean> query = entitymanager
				.createQuery(
						"select applicants from ApplicationBean applicants where applicants.scheduledProgramID=:id AND applicants.status='accepted'",
						ApplicationBean.class);
		query.setParameter("id", programId);
		return query.getResultList();
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
	 	- Function Name	    :	confirm
	 	- Input Parameters  :   appId
	 	- Return Type		:	ApplicationBean
	 	- Throws		    :  	UASException
	 	- Author			:	Group 3
	 	- Description		:	confirms the applicant
		******************************************************************************/
	@Override
	public ApplicationBean confirm(int appId) throws UASException {
		Query query = entitymanager
				.createQuery("update  ApplicationBean set status='confirmed' where applicationId=?");
		query.setParameter(1, appId);
		query.executeUpdate();
		return null;
	}
	
	//------------------------ University Admission System --------------------------//
		/****************************************************************************
		 - Function Name	:	reject
		 - Input Parameters :   appId
		 - Return Type		:	ApplicationBean
		 - Throws		    :  	UASException
		 - Author			:	Group 3
		 - Description		:	rejects the applicant
		 ******************************************************************************/
	@Override
	public ApplicationBean reject(int appId) throws UASException {
		Query query = entitymanager
				.createQuery("update  ApplicationBean set status='rejected' where applicationId=?");
		query.setParameter(1, appId);
		query.executeUpdate();
		return null;
	}

}
