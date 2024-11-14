/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class Wishlist {
    private List<Product> items;
    public Wishlist() {
        items=new ArrayList<>();
    }

    public List<Product> getItems() {
        return items;
    }

    public void setItems(List<Product> items) {
        this.items = items;
    }

    public Wishlist(List<Product> items) {
        this.items = items;
    }
    public Product getItemById(int id){
        for (Product item : items) {
            if(item.getItemId()==id){
                return item;
            }
        }
        return null;
    }
    public void addItem(Product t){
        if(getItemById(t.getItemId())!=null){
            items.remove(getItemById(t.getItemId()));
        }else{
            items.add(t);
        }
    }
    public void removeItem(int id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
}
