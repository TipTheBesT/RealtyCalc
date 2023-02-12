package ru.lawNotes.calc.commission.models;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Null;
import jakarta.validation.constraints.Pattern;

public class CommissionModel {

    private Double price = 0.0;

    private Double percentRealtor = 0.0;

    private Double percentLawyer = 0.0;


    public CommissionModel() {
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getPercentRealtor() {
        return percentRealtor;
    }

    public void setPercentRealtor(Double percentRealtor) {
        this.percentRealtor = percentRealtor;
    }

    public Double getPercentLawyer() {
        return percentLawyer;
    }

    public void setPercentLawyer(Double percentLawyer) {
        this.percentLawyer = percentLawyer;
    }
}
