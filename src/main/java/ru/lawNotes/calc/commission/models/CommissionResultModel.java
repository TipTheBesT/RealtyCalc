package ru.lawNotes.calc.commission.models;

public class CommissionResultModel {

    private String price;

    private String percentAgency;
    private String percentRealtor;
    private String percentLawyer;

    private String percentRealtorMinusLawyer;

    private String rubAgency;
    private String rubRealtor;
    private String rubLawyer;


    public CommissionResultModel() {
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPercentAgency() {
        return percentAgency;
    }

    public void setPercentAgency(String percentAgency) {
        this.percentAgency = percentAgency;
    }

    public String getPercentRealtor() {
        return percentRealtor;
    }

    public void setPercentRealtor(String percentRealtor) {
        this.percentRealtor = percentRealtor;
    }

    public String getPercentLawyer() {
        return percentLawyer;
    }

    public void setPercentLawyer(String percentLawyer) {
        this.percentLawyer = percentLawyer;
    }

    public String getPercentRealtorMinusLawyer() {
        return percentRealtorMinusLawyer;
    }

    public void setPercentRealtorMinusLawyer(String percentRealtorMinusLawyer) {
        this.percentRealtorMinusLawyer = percentRealtorMinusLawyer;
    }

    public String getRubAgency() {
        return rubAgency;
    }

    public void setRubAgency(String rubAgency) {
        this.rubAgency = rubAgency;
    }

    public String getRubRealtor() {
        return rubRealtor;
    }

    public void setRubRealtor(String rubRealtor) {
        this.rubRealtor = rubRealtor;
    }

    public String getRubLawyer() {
        return rubLawyer;
    }

    public void setRubLawyer(String rubLawyer) {
        this.rubLawyer = rubLawyer;
    }
}
