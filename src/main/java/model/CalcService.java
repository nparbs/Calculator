/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
;

/**
 *
 * @author Nick
 */
public class CalcService {

    public double doCalculation(String val1, String val2, String type) {
        double answer = 0;

        try {
            if ((val1 != null || !"".equals(val1)) && type != null) {
                if (type.equalsIgnoreCase(CalcType.RECT.toString()) && (val2 != null || !"".equals(val2))) {
                    double width = Double.parseDouble(val1);
                    double height = Double.parseDouble(val2);
                    answer = width * height;
                } else if (type.equalsIgnoreCase(CalcType.CIRCLE.toString())) {
                    double rad = Double.parseDouble(val1);
                    answer = rad * rad * Math.PI;
                } else if (type.equalsIgnoreCase(CalcType.TRI.toString()) && (val2 != null || !"".equals(val2))) {
                    double a = Double.parseDouble(val1);
                    double b = Double.parseDouble(val2);
                    answer = Math.sqrt((a * a) + (b * b));
                }
            }
        } catch (NumberFormatException e) {

        }
        return answer;
    }

}
