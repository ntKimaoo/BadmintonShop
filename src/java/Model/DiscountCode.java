/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author kiennn
 */
public class DiscountCode {
    String couponid;
    float discountPercent;

    public String getCouponid() {
        return couponid;
    }

    public void setCouponid(String couponid) {
        this.couponid = couponid;
    }

    public float getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(float discountPercent) {
        this.discountPercent = discountPercent;
    }

    public DiscountCode() {
    }

    public DiscountCode(String couponid, float discountPercent) {
        this.couponid = couponid;
        this.discountPercent = discountPercent;
    }
}
