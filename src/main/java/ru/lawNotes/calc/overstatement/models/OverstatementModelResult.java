package ru.lawNotes.calc.overstatement.models;

public class OverstatementModelResult {
    private String price;
    private String percentInitialPaymentBank;
    private String initialPaymentPerson;
    private String pawnCash;

    private String priceBank;
    private String initialPaymentBank;
    private String creditBank;
    private String cashRefund;

    public OverstatementModelResult() {
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPercentInitialPaymentBank() {
        return percentInitialPaymentBank;
    }

    public void setPercentInitialPaymentBank(String percentInitialPaymentBank) {
        this.percentInitialPaymentBank = percentInitialPaymentBank;
    }

    public String getInitialPaymentPerson() {
        return initialPaymentPerson;
    }

    public void setInitialPaymentPerson(String initialPaymentPerson) {
        this.initialPaymentPerson = initialPaymentPerson;
    }

    public String getPawnCash() {
        return pawnCash;
    }

    public void setPawnCash(String pawnCash) {
        this.pawnCash = pawnCash;
    }

    public String getPriceBank() {
        return priceBank;
    }

    public void setPriceBank(String priceBank) {
        this.priceBank = priceBank;
    }

    public String getInitialPaymentBank() {
        return initialPaymentBank;
    }

    public void setInitialPaymentBank(String initialPaymentBank) {
        this.initialPaymentBank = initialPaymentBank;
    }

    public String getCreditBank() {
        return creditBank;
    }

    public void setCreditBank(String creditBank) {
        this.creditBank = creditBank;
    }

    public String getCashRefund() {
        return cashRefund;
    }

    public void setCashRefund(String cashRefund) {
        this.cashRefund = cashRefund;
    }
}
