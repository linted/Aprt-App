/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.liberty.webbase.response;

import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

/**
 * An extension of the basic Response object for constructing errors easier.
 * @author jawalker
 */
public class ErrorResponse extends Response {

    /**
     * Creates an ErrorResponse with a default BAD_REQUEST response status 
     * and given error message.
     * @param error
     */
    public ErrorResponse(String error) {
        super(new ErrorViewBean(error), HttpStatus.BAD_REQUEST);
    }

    /**
     * Creates an ErrorResponse with a given error and status code.
     * @param error
     * @param statusCode 
     */
    public ErrorResponse(String error, HttpStatus statusCode) {
        super(new ErrorViewBean(error), statusCode);
    }

    /**
     * Creates an ErrorResponse from a controller's BindingResult to generate
     * an error message with a BAD_REQUEST status code.
     * @param result 
     * @return  
     */
    public static String getValidationErrorMessage(BindingResult result) {
        StringBuilder error = new StringBuilder();
        for (ObjectError e : result.getAllErrors()) {
            error.append(e.getDefaultMessage()).append("\n");
        }
        return (error.toString());
    }

}
