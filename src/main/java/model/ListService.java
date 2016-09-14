/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nick
 */
public class ListService {
    private String username = "nparbs";
    private List<String> shoppingList;

    public ListService() {
        this.shoppingList = new ArrayList<>();
        shoppingList.add("chips");
        shoppingList.add("cheese");
        shoppingList.add("pizza");
    }

    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public List<String> getShoppingList() {
        return shoppingList;
    }

    public void setShoppingList(List<String> shoppingList) {
        this.shoppingList = shoppingList;
    }
}
