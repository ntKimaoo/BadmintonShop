/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author kiennn
 */
public class Orders {
    int orderid;
    String customer_name;
    String email;
    String phone;
    String address;
    String note;
    int totalQuantity;
    double tmpPrice;
    double totalPrice;
    int accountId;
    String paymentId;
    String coupounId;

    public Orders(int orderid, String customer_name, String email, String phone, String address, String note, int totalQuantity, double tmpPrice, double totalPrice, int accountId, String paymentId, String coupounId) {
        this.orderid = orderid;
        this.customer_name = customer_name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.totalQuantity = totalQuantity;
        this.tmpPrice = tmpPrice;
        this.totalPrice = totalPrice;
        this.accountId = accountId;
        this.paymentId = paymentId;
        this.coupounId = coupounId;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public Orders() {
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public double getTmpPrice() {
        return tmpPrice;
    }

    public void setTmpPrice(double tmpPrice) {
        this.tmpPrice = tmpPrice;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }

    public String getCoupounId() {
        return coupounId;
    }

    public void setCoupounId(String coupounId) {
        this.coupounId = coupounId;
    }
    
    
}
