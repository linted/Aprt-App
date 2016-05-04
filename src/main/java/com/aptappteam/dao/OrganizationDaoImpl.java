/*
This class implements the Data Abstract Object for an Organization.
Original Author: Joe Moyer
Original Creation Date: 5/3/16
Dev Team: Kyle Erikson, Mike Merrill, Joe Moyer
*/
package com.aptappteam.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.ordering.antlr.Factory;
import org.springframework.stereotype.Repository;

import com.aptappteam.model.Organization;
 
@Repository("organizationDao")
public class OrganizationDaoImpl extends AbstractDao<Integer, Organization> implements OrganizationDao {
    
	
	/* Name: findOrganizationById
	 * Original Author: Joe Moyer
	 * Creation Date: 5/3/16
	 * Purpose: find an organization by it's ID value.
	 * Argument: Integer named id that matches the ID of an organization.
	 * Requires: Database Table - HousingOffCampusOrgMaster
	 * Returns: an Organization object with the ID value specified in the arguments.
	*/
    public Organization findOrganizationById(int id) {
    	Criteria cr = getSession().createCriteria(Organization.class);
        cr.add(Restrictions.eq("OrgID",id));
        List<Organization> organizations = cr.list();
    	return organizations.get(0);
    }
    
    /* Name: saveOrganization
	 * Original Author: Joe Moyer
	 * Creation Date: 5/3/16
	 * Purpose: writes an organization to the database.
	 * Argument: Organization object
	 * Requires: Database Table - HousingOffCampusOrgMaster
	 * Nothing
	*/
    public void saveOrganization(Organization org) {
        persist(org);
    }
}