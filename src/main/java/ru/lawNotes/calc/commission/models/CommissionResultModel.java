package ru.lawNotes.calc.commission.models;

public class CommissionModel {

    private int price;

    private double percentRealtor;

    private double percentLawyer;


    public CommissionModel() {
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getPercentRealtor() {
        return percentRealtor;
    }

    public void setPercentRealtor(double percentRealtor) {
        this.percentRealtor = percentRealtor;
    }

    public double getPercentLawyer() {
        return percentLawyer;
    }

    public void setPercentLawyer(double percentLawyer) {
        this.percentLawyer = percentLawyer;
    }
}
