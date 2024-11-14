/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author kiennn
 */
public class PaymentMethod {
    String paymentid;
    String payment_name;

    public PaymentMethod(String paymentid, String payment_name) {
        this.paymentid = paymentid;
        this.payment_name = payment_name;
    }

    public PaymentMethod() {
    }

    public String getPaymentid() {
        return paymentid;
    }

    public void setPaymentid(String paymentid) {
        this.paymentid = paymentid;
    }

    public String getPayment_name() {
        return payment_name;
    }

    public void setPayment_name(String payment_name) {
        this.payment_name = payment_name;
    }
    
}
