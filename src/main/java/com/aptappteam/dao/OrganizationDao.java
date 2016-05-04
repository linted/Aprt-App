/*
This interface outlines the Data Abstract Object for an Organization.
Original Author: Joe Moyer
Original Creation Date: 5/3/16
Dev Team: Kyle Erikson, Mike Merrill, Joe Moyer
*/

package com.aptappteam.dao;

import java.util.List;

import com.aptappteam.model.Organization;
 
public interface OrganizationDao {
 
    Organization findOrganizationById(int id);
 
    void saveOrganization(Organization org);
 
}