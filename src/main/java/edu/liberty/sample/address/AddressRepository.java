/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.sample.address;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author jawalker
 */
public interface AddressRepository extends JpaRepository<Address, Integer> {
    
    @Query("select a from Address a where a.person.id = :id")
    public Address findAddressByPersonId(@Param("id") Integer id);
}
