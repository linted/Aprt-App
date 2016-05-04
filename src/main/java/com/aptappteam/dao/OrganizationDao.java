package com.aptappteam.dao;

import java.util.List;

import com.aptappteam.model.Organization;
 
public interface OrganizationDao {
 
    Organization findOrganizationById(int id);
 
    void saveOrganization(Organization org);
 
}