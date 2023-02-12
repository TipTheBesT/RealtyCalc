package ru.lawNotes.calc.parts.models;

import ru.lawNotes.calc.global.fraction.Fraction;

public class PartModel {
    private Integer initialObjPrice = 0;
    private Double initialObjSquare = 0.0;
    private Fraction initialPart = new Fraction(0,0);
    private Integer finalObjPrice = 0;
    private Double finalObjSquare = 0.0;

    public PartModel() {
    }

    public Integer getInitialObjPrice() {
        return initialObjPrice;
    }

    public void setInitialObjPrice(Integer initialObjPrice) {
        this.initialObjPrice = initialObjPrice;
    }

    public Double getInitialObjSquare() {
        return initialObjSquare;
    }

    public void setInitialObjSquare(Double initialObjSquare) {
        this.initialObjSquare = initialObjSquare;
    }

    public Fraction getInitialPart() {
        return initialPart;
    }

    public void setInitialPart(Fraction initialPart) {
        this.initialPart = initialPart;
    }

    public Integer getFinalObjPrice() {
        return finalObjPrice;
    }

    public void setFinalObjPrice(Integer finalObjPrice) {
        this.finalObjPrice = finalObjPrice;
    }

    public Double getFinalObjSquare() {
        return finalObjSquare;
    }

    public void setFinalObjSquare(Double finalObjSquare) {
        this.finalObjSquare = finalObjSquare;
    }
}
