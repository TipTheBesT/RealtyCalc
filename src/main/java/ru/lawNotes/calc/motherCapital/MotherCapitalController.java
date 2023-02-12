package ru.lawNotes.calc.motherCapital;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.lawNotes.calc.fraction.Fraction;
import ru.lawNotes.calc.motherCapital.models.MotherCapitalModel;
import ru.lawNotes.calc.motherCapital.models.MotherCapitalModelResult;
import ru.lawNotes.calc.parts.models.PartModel;

import java.text.DecimalFormat;

@Controller
@RequestMapping("/motherCapital")
public class MotherCapital {

    private String title = "Расчёт долей при приобретении за материнский капитал";
    private String description = "Расчёт минимальных долей для каждого члена семьи при приобретении объекта недвижимости с использованием средств материнского (семейного) капитала.";

    @GetMapping("/")
    public String doGet(Model model) {
        addTitleDescription(model);
        model.addAttribute("motherCapitalModel", new MotherCapitalModel());
        model.addAttribute("includeIndex","motherCapital.jsp");
        model.addAttribute("motherCapitalResultDefault", "motherCapitalDefault.jsp");
        return "index";
    }

    @PostMapping("/")
    public String doPost(@ModelAttribute("motherCapitalModel") MotherCapitalModel motherCapitalModel, Model model) {
        DecimalFormat dc = new DecimalFormat("###,###,###.##");
        DecimalFormat dcInt = new DecimalFormat("###.#");

        addTitleDescription(model);
        model.addAttribute("includeIndex","motherCapital.jsp");

        if ( (motherCapitalModel.getPrice()!=null) && (motherCapitalModel.getSumMotherCapital()!=null) && (motherCapitalModel.getNumberFamilyMembers()!=null)
                && (motherCapitalModel.getPrice()!=0) && (motherCapitalModel.getSumMotherCapital()!=0) && (motherCapitalModel.getNumberFamilyMembers()!=0)
                && (motherCapitalModel.getPrice()>=motherCapitalModel.getSumMotherCapital()) ) {
            MotherCapitalModelResult result = new MotherCapitalModelResult();

            result.setPrice(dc.format(motherCapitalModel.getPrice()));
            result.setSumMotherCapital(dc.format(motherCapitalModel.getSumMotherCapital()));
            result.setNumberFamilyMembers(dc.format(motherCapitalModel.getNumberFamilyMembers()));

            double minPricePart = motherCapitalModel.getSumMotherCapital() / motherCapitalModel.getNumberFamilyMembers();

            Fraction partMember = new Fraction(1, (motherCapitalModel.getPrice().intValue() / (int) minPricePart));
            Fraction partParent = new Fraction(partMember.getDenominator()-motherCapitalModel.getNumberFamilyMembers(),partMember.getDenominator());
            partMember.shorten();
            partParent.shorten();

            result.setPriceMin(dc.format(minPricePart));
            result.setPricePartMember(dc.format( motherCapitalModel.getPrice() / partMember.getDenominator() * partMember.getNumerator() ));
            result.setPartMember(partMember.toString());
            result.setPartParent(partParent.toString());

            result.setTemplate("Объект недвижимости оформляется в общую долевую собственность, с определением долей в следующем порядке:\n");
            for (int i = 0; i<motherCapitalModel.getNumberFamilyMembers(); i++) {
                result.setTemplate(result.getTemplate() +
                        "- " + partMember.toString() + " доля в праве общей долевой собственности на имя _________;\n");
            }
            result.setTemplate(result.getTemplate() +
                    "- " + partParent.toString() + " дол__ в праве общей долевой собственности в совместную собственность _________ и _________.\n");
            result.setTemplate(result.getTemplate() + "--------------- ИЛИ ---------------\n" +
                    "- " + partParent.toString() + " дол__ в праве общей долевой собственности на имя _________.");

            result.setTemplateRows(String.valueOf(motherCapitalModel.getNumberFamilyMembers()+6));

            model.addAttribute("motherCapitalModelResult", result);
            model.addAttribute("motherCapitalModel", motherCapitalModel);
            model.addAttribute("motherCapitalResultDefault", "motherCapitalResult.jsp");
        } else {
            model.addAttribute("errors","Заполните все поля!");
            model.addAttribute("motherCapitalModel", motherCapitalModel);
            model.addAttribute("motherCapitalResultDefault", "motherCapitalDefault.jsp");
        }

        return "index";
    }

    private void addTitleDescription(Model model) {
        model.addAttribute("title", title);
        model.addAttribute("description", description);
    }


}
