package ru.lawNotes.calc.motherCapital.models;

public class MotherCapitalModelResult {
    private String price;
    private String sumMotherCapital;
    private String numberFamilyMembers;

    private String priceMin;
    private String pricePartMember;
    private String partMember;
    private String partParent;
    private String template;
    private String templateRows;

    public MotherCapitalModelResult() {
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSumMotherCapital() {
        return sumMotherCapital;
    }

    public void setSumMotherCapital(String sumMotherCapital) {
        this.sumMotherCapital = sumMotherCapital;
    }

    public String getNumberFamilyMembers() {
        return numberFamilyMembers;
    }

    public void setNumberFamilyMembers(String numberFamilyMembers) {
        this.numberFamilyMembers = numberFamilyMembers;
    }

    public String getPriceMin() {
        return priceMin;
    }

    public void setPriceMin(String priceMin) {
        this.priceMin = priceMin;
    }

    public String getPricePartMember() {
        return pricePartMember;
    }

    public void setPricePartMember(String pricePartMember) {
        this.pricePartMember = pricePartMember;
    }

    public String getPartMember() {
        return partMember;
    }

    public void setPartMember(String partMember) {
        this.partMember = partMember;
    }

    public String getPartParent() {
        return partParent;
    }

    public void setPartParent(String partParent) {
        this.partParent = partParent;
    }

    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }

    public String getTemplateRows() {
        return templateRows;
    }

    public void setTemplateRows(String templateRows) {
        this.templateRows = templateRows;
    }
}
