/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import dal.ProductDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public Item getItemById(int id) {
        for (Item item : items) {
            if (item.getProduct().getItemId() == id) {
                return item;
            }
        }
        return null;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    public void addItem(Item t) {
        ProductDAO pd = new ProductDAO();
        Product p = pd.get(t.getProduct().getItemId());
        if (getItemById(t.getProduct().getItemId()) != null) {
            Item m = getItemById(t.getProduct().getItemId());
            if (m.getQuantity() >= 10 && t.getQuantity() != -1) {
                m.setQuantity(10);
            } else if (m.getQuantity()>=p.getQuantity()&& t.getQuantity() != -1) {
                m.setQuantity(p.getQuantity());
            } else {
                m.setQuantity(m.getQuantity() + t.getQuantity());
            }
        } else {
            items.add(t);
        }
    }

    public void updateSize(int id, String size) {
        if (getItemById(id) != null) {
            for (Item item : items) {
                if (item.getProduct().getItemId() == id) {
                    item.setSize(size);
                }
            }

        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public double getTotalMoney() {
        double t = 0;
        for (Item item : items) {
            t += item.getQuantity() * item.getPrice();
        }
        return t;
    }

    public int getTotalQuantity() {
        int t = 0;
        for (Item item : items) {
            t += item.getQuantity();
        }
        return t;
    }
}
