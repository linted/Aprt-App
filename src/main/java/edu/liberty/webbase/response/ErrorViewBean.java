/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.liberty.webbase.response;

import java.io.Serializable;

/**
 *
 * @author jawalker
 */
public class ErrorViewBean implements Serializable {
    
    String error;

    public ErrorViewBean(String error) {
        this.error = error;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
        
    
}
