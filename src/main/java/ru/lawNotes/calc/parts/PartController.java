package ru.lawNotes.calc.parts;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.lawNotes.calc.fraction.Fraction;
import ru.lawNotes.calc.fraction.Fractions;
import ru.lawNotes.calc.parts.models.PartModel;
import ru.lawNotes.calc.parts.models.PartModelResult;

import java.text.DecimalFormat;
import java.util.ArrayList;

@Controller
@RequestMapping("/part")
public class Part {

    private String title = "Расчёт минимальной выделяемой доли при опекаемого";
    private String description = "Расчёт минимальной доли несовершеннолетнего или недееспособного в приобретаемом взамен объекте " +
            "недвижимости, с учётом улучшения жилищных условий, как в части принадлежащей площади, так и в части " +
            "стоимости доли.";

    @GetMapping("/")
    public String doGet(Model model) {
        addTitleDescription(model);
        model.addAttribute("part", new PartModel());
        model.addAttribute("includeIndex","part.jsp");
        model.addAttribute("partsResultDefault", "partDefault.jsp");
        return "index";
    }

    @RequestMapping("/")
    public String doPost(@ModelAttribute("part") PartModel partModel, Model model) {
        DecimalFormat dc = new DecimalFormat("###,###,###.##");
        DecimalFormat dcInt = new DecimalFormat("###.#");

        addTitleDescription(model);
        model.addAttribute("includeIndex","part.jsp");

        if ( (partModel.getInitialObjPrice()!=null) && (partModel.getInitialObjSquare()!=null) &&
                (partModel.getInitialPart().getNumerator()!=null) && (partModel.getInitialPart().getDenominator()!=null) &&
                (partModel.getInitialObjPrice()!=null) && (partModel.getFinalObjSquare()!=null) &&
                (partModel.getInitialObjPrice()>0) && (partModel.getInitialObjSquare()>0) &&
                (partModel.getInitialPart().getNumerator()>0) && (partModel.getInitialPart().getDenominator()>0) &&
                (partModel.getInitialObjPrice()>0) && (partModel.getFinalObjSquare()>0) ) {
            PartModelResult result = new PartModelResult();

            result.setInitialObjPrice(dc.format(partModel.getInitialObjPrice()));
            result.setInitialObjSquare(dc.format(partModel.getInitialObjSquare()));
            result.setInitialObjPartNumerator(String.valueOf(partModel.getInitialPart().getNumerator()));
            result.setInitialObjPartDenominator(String.valueOf(partModel.getInitialPart().getDenominator()));
            result.setFinalObjPrice(dc.format(partModel.getFinalObjPrice()));
            result.setFinalObjSquare(dc.format(partModel.getFinalObjSquare()));


            double partMinInitialPrice = (double) partModel.getInitialObjPrice() / partModel.getInitialPart().getDenominator() * partModel.getInitialPart().getNumerator();
            double partMinInitialSquare = partModel.getInitialObjSquare() / partModel.getInitialPart().getDenominator() * partModel.getInitialPart().getNumerator();
            if (partMinInitialSquare<6) { partMinInitialSquare=6; };

            result.setPartMinPrice(dc.format(partMinInitialPrice));
            result.setPartMinSquare(dc.format(partMinInitialSquare));

            Fractions parts = new Fractions();
            Fraction part;
            if ( (partModel.getFinalObjPrice() / partMinInitialPrice) <= (partModel.getFinalObjSquare() / partMinInitialSquare) ) {
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialPrice / ((double) partModel.getFinalObjPrice() / 10)))),10));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialPrice / ((double) partModel.getFinalObjPrice() / 25)))),25));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialPrice / ((double) partModel.getFinalObjPrice() / 50)))),50));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialPrice / ((double) partModel.getFinalObjPrice() / 75)))),75));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialPrice / ((double) partModel.getFinalObjPrice() / 100)))),100));
            } else {
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialSquare / (partModel.getFinalObjSquare()  / 10)))),10));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialSquare / (partModel.getFinalObjSquare()  / 25)))),25));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialSquare / (partModel.getFinalObjSquare()  / 50)))),50));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialSquare / (partModel.getFinalObjSquare()  / 75)))),75));
                parts.getList().add(new Fraction((int) (Math.ceil( (partMinInitialSquare / (partModel.getFinalObjSquare()  / 100)))),100));
            }
            part = parts.getMinFraction();
            part.shorten();
            result.setPartMin(part.getNumerator()+"/"+part.getDenominator());

            result.setPartPrice(dc.format((double) partModel.getFinalObjPrice()/part.getDenominator()*part.getNumerator()));
            result.setPartSquare(dc.format(partModel.getFinalObjSquare()/part.getDenominator()*part.getNumerator()));

            model.addAttribute("partsModelResult", result);
            model.addAttribute("partsResultDefault", "partResult.jsp");
            model.addAttribute("part", partModel);
        } else {
            model.addAttribute("errors", "Заполните все поля!");
            model.addAttribute("partsResultDefault", "partDefault.jsp");
            model.addAttribute("part", partModel);
        }

        return "index";
    }

    private void addTitleDescription(Model model) {
        model.addAttribute("title", title);
        model.addAttribute("description", description);
    }


}
