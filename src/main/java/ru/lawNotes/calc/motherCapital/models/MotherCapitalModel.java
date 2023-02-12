package ru.lawNotes.calc.motherCapital.models;



public class MotherCapitalModel {
    private Double price = 0.0;
    private Double sumMotherCapital = 0.0;
    private Integer numberFamilyMembers = 0;

    public MotherCapitalModel() {
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getSumMotherCapital() {
        return sumMotherCapital;
    }

    public void setSumMotherCapital(Double sumMotherCapital) {
        this.sumMotherCapital = sumMotherCapital;
    }

    public Integer getNumberFamilyMembers() {
        return numberFamilyMembers;
    }

    public void setNumberFamilyMembers(Integer numberFamilyMembers) {
        this.numberFamilyMembers = numberFamilyMembers;
    }
}
