/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AlumniUBICV.Servlet;

/**
 *
 * @author irina.m.lopes
 */
public class BasicFunction {
    
    public static String NvlString(int i){
        
        if (i == 0){
            return "null";
        }else{
            return Integer.toString(i);
        }
    }
    public static String emptyToNull (String s){
        
        
        if (s ==""){
            
            return null;
            
        }else{
            
            return s;
        }
    }
    
    public static boolean CheckStringIsNumber(String str) {
        if ("".equals(str) || str == null){
            return false;
        }
        for (char c : str.toCharArray()) {
            if (!Character.isDigit(c))
                return false;
        }
        return true;
    }
    
    public static void debugHere(String t){
        System.out.println(t);
    }
    
   
}
