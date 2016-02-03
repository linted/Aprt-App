/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.sample.person;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author jawalker
 */
public interface PersonRepository extends JpaRepository<Person, Integer> {
    
    public List<Person> findByLastNameIgnoreCase(@Param("lastname") String lastName);
    
    @Query("select p from Person p left join fetch p.address where p.id = :id")
    public Person findByIdWithAddress(@Param("id") Integer id);
}
