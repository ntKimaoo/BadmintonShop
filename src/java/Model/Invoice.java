/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author kiennn
 */
public class Invoice {
    int invoidid;
    String createDate;
    int orderId;

    public Invoice(int invoidid, String createDate, int orderId) {
        this.invoidid = invoidid;
        this.createDate = createDate;
        this.orderId = orderId;
    }

    public Invoice() {
    }

    public int getInvoidid() {
        return invoidid;
    }

    public void setInvoidid(int invoidid) {
        this.invoidid = invoidid;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    
}
