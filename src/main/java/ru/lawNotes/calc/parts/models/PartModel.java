package ru.lawNotes.calc.parts.models;

import ru.lawNotes.calc.fraction.Fraction;

public class PartModel {
    private int initialObjPrice;
    private double initialObjSquare;
    private Fraction initialPart;
    //initialObjPartNumerator
    private int finalObjPrice;
    private double finalObjSquare;

    public PartModel() {
    }

    public int getInitialObjPrice() {
        return initialObjPrice;
    }

    public void setInitialObjPrice(int initialObjPrice) {
        this.initialObjPrice = initialObjPrice;
    }

    public double getInitialObjSquare() {
        return initialObjSquare;
    }

    public void setInitialObjSquare(double initialObjSquare) {
        this.initialObjSquare = initialObjSquare;
    }

    public Fraction getInitialPart() {
        return initialPart;
    }

    public void setInitialPart(Fraction initialPart) {
        this.initialPart = initialPart;
    }

    public int getFinalObjPrice() {
        return finalObjPrice;
    }

    public void setFinalObjPrice(int finalObjPrice) {
        this.finalObjPrice = finalObjPrice;
    }

    public double getFinalObjSquare() {
        return finalObjSquare;
    }

    public void setFinalObjSquare(double finalObjSquare) {
        this.finalObjSquare = finalObjSquare;
    }
}
