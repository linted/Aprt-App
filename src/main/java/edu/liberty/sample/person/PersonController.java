/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.sample.person;

import edu.liberty.webbase.response.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author jawalker
 */
@Controller
@RequestMapping("/person")
@Transactional
public class PersonController {
    
    @Autowired
    private PersonRepository personRepository;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Response getPerson(@PathVariable("id") Integer id) {
        return new Response(personRepository.findByIdWithAddress(id));
    }
    
    @RequestMapping(value = "", method = RequestMethod.POST)
    public Response insertPerson(@RequestBody Person person) {
        personRepository.save(person);
        return new Response(person);
    }
}
