package ru.lawNotes.calc.fraction;

public class Fraction {
    private Integer numerator;
    private Integer denominator;

    private Double decimal;

    public Fraction() {

    }

    public Fraction(Integer numerator, Integer denominator) {
        this.numerator = numerator;
        this.denominator = denominator;
        this.decimal = (double) numerator / denominator;
    }

    public void shorten() {
        int common = 0;
        for (int i = 2; i<= denominator; i++) {
            if ( (numerator % i == 0) && (denominator % i == 0) ) {
                common = i;
            }
        }
        if (common!=0) {
            numerator = numerator / common;
            denominator = denominator / common;
        }
    }

    @Override
    public String toString() {
        return numerator + "/" + denominator;
    }

    public Integer getNumerator() {
        return numerator;
    }

    public void setNumerator(Integer numerator) {
        this.numerator = numerator;
    }

    public Integer getDenominator() {
        return denominator;
    }

    public void setDenominator(Integer denominator) {
        this.denominator = denominator;
    }

    public Double getDecimal() {
        return decimal;
    }

    public void setDecimal(Double decimal) {
        this.decimal = decimal;
    }
}
