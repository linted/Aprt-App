/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.webbase.response;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

/**
 * Essentially syntactic sugar for the ResponseEntity class. 
 * Provides a lot of default behavior for "free".
 * 
 * @author jawalker
 */
public class Response extends ResponseEntity<Object> {

    /**
     * Makes a Response object with NO_CONTENT status.
     */
    public Response() {
        super(HttpStatus.NO_CONTENT);
    }

    /**
     * Makes an empty Response object with a given status code.
     * @param statusCode 
     */
    public Response(HttpStatus statusCode) {
        super(statusCode);
    }

    /**
     * Makes a Response for a given object.
     * @param body 
     */
    public Response(Object body) {
        super(body, HttpStatus.OK);
    }

    /**
     * Makes a Response for a given object with any special headers you want.
     * @param body
     * @param headers
     */
    public Response(Object body, MultiValueMap<String, String> headers) {
        super(body, headers, HttpStatus.OK);
    }

    /**
     * Makes a Response for a given object with a given status code.
     * @param body
     * @param statusCode 
     */
    public Response(Object body, HttpStatus statusCode) {
        super(body, statusCode);
    }

    /**
     * Makes a Response with an empty object, and provided headers and status code.
     * @param headers
     * @param statusCode 
     */
    public Response(MultiValueMap<String, String> headers, HttpStatus statusCode) {
        super(headers, statusCode);
    }

    /**
     * Makes a Response with a given object, headers, and status code.
     * @param body
     * @param headers
     * @param statusCode 
     */
    public Response(Object body, MultiValueMap<String, String> headers, HttpStatus statusCode) {
        super(body, headers, statusCode);
    }

    /**
     * Static method to get a Location header with a consistent label.
     * @param location
     * @return 
     */
    public static MultiValueMap<String, String> getLocationHeader(String location) {
        MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
        map.add("Location", location);
        return map;
    }

    /**
     * Static method to get an id header with a consistent label.
     * @param location
     * @return 
     */
    public static MultiValueMap<String, String> getIdHeader(Long id) {
        MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
        map.add("Id", id.toString());
        return map;
    }
}
