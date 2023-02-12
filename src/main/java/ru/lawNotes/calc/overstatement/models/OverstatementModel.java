package ru.lawNotes.calc.overstatement.models;

public class OverstatementModel {
    private Integer price = 0;
    private Integer percentInitialPaymentBank = 0;
    private Integer initialPaymentPerson = 0;
    private Integer pawnCash = 0;

    public OverstatementModel() {
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getPercentInitialPaymentBank() {
        return percentInitialPaymentBank;
    }

    public void setPercentInitialPaymentBank(Integer percentInitialPaymentBank) {
        this.percentInitialPaymentBank = percentInitialPaymentBank;
    }

    public Integer getInitialPaymentPerson() {
        return initialPaymentPerson;
    }

    public void setInitialPaymentPerson(Integer initialPaymentPerson) {
        this.initialPaymentPerson = initialPaymentPerson;
    }

    public Integer getPawnCash() {
        return pawnCash;
    }

    public void setPawnCash(Integer pawnCash) {
        this.pawnCash = pawnCash;
    }
}
