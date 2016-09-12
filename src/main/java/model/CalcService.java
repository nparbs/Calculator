/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nick
 */
public class CalcService {
    
    
    
    public double doCalculation(String val1, String val2, String type ){
        double answer = 0;
        
        if(val1 !=null && type!=null){
            if(type.equalsIgnoreCase(CalcType.RECT.toString()) && val2 !=null){    
                answer = Double.parseDouble(val1) * Double.parseDouble(val2);
            } else if(type.equalsIgnoreCase(CalcType.CIRCLE.toString())){
                answer = Double.parseDouble(val1) * Double.parseDouble(val1) * Math.PI;
            } else if(type.equalsIgnoreCase(CalcType.TRI.toString()) && val2 !=null){
                double a = Double.parseDouble(val1);
                double b = Double.parseDouble(val2);
                answer = Math.sqrt((a*a)+(b*b));
            }
        }
        
        return answer;
    }
    

    
}
