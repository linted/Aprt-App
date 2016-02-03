/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.sample.address;

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
@RequestMapping("/address")
@Transactional
public class AddressController {
    
    @Autowired
    private AddressRepository addressRepository;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Response getAddress(@PathVariable("id") Integer id) {
        return new Response(addressRepository.findOne(id));
    }
    
    @RequestMapping(value = "", method = RequestMethod.POST)
    public Response insertAddress(@RequestBody Address address) {
        addressRepository.save(address);
        return new Response(address);
    }
}
