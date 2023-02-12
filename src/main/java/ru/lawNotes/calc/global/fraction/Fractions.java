package ru.lawNotes.calc.fraction;

import java.util.ArrayList;

public class Fractions {
    private ArrayList<Fraction> list = new ArrayList<>();

    public Fraction getMinFraction() {
        Fraction part = list.get(0);
        for (int i = 1; i<list.size();i++) {
            if (list.get(i).getDecimal()<part.getDecimal()) {
                part = list.get(i);
            }
        }
        return part;
    }

    public ArrayList<Fraction> getList() {
        return list;
    }

    public void setList(ArrayList<Fraction> list) {
        this.list = list;
    }
}
