package ru.lawNotes.calc.overstatement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.lawNotes.calc.overstatement.models.OverstatementModel;
import ru.lawNotes.calc.overstatement.models.OverstatementModelResult;

import java.text.DecimalFormat;

@Controller
@RequestMapping("/overstatement")
public class OverstatementController {

    private String title = "Расчёт сумм для завышения стоимости квартиры";
    private String description = "Расчёт сумм необходимых для объявления банку и оценочной компании с учётом завышения " +
            "цены договора с целью уменьшения вкладываемых собственных средств.";

    @GetMapping("/")
    public String doGet(Model model) {
        addTitleDescription(model);
        model.addAttribute("overstatement", new OverstatementModel());
        model.addAttribute("includeIndex", "overstatement.jsp");
        model.addAttribute("overstatementResultDefault", "overstatementDefault.jsp");

        return "index";
    }
    @PostMapping("/")
    public String doPost(@ModelAttribute("overstatement") OverstatementModel overstatementModel, Model model) {
        DecimalFormat dc = new DecimalFormat("###,###,###.##");

        addTitleDescription(model);
        model.addAttribute("includeIndex", "overstatement.jsp");

        if ( (overstatementModel.getPrice()!=null) && (overstatementModel.getPercentInitialPaymentBank()!=null)
            && (overstatementModel.getPrice()>0) && (overstatementModel.getPercentInitialPaymentBank()>0) ) {

            if (overstatementModel.getInitialPaymentPerson()==null) {
                overstatementModel.setInitialPaymentPerson(0);
            }

            if (overstatementModel.getPawnCash()==null) {
                overstatementModel.setPawnCash(0);
            }

            OverstatementModelResult result = new OverstatementModelResult();
            result.setPrice( dc.format( overstatementModel.getPrice()) );
            result.setPercentInitialPaymentBank( String.valueOf(overstatementModel.getPercentInitialPaymentBank()) );
            result.setInitialPaymentPerson( dc.format((double) overstatementModel.getInitialPaymentPerson()) );
            result.setPawnCash( dc.format( (double) overstatementModel.getPawnCash()) );
            double priceBank = ( (overstatementModel.getPrice() - overstatementModel.getInitialPaymentPerson() + overstatementModel.getPawnCash())/
                    ( (double) (100-overstatementModel.getPercentInitialPaymentBank())/100));
            result.setPriceBank( dc.format( priceBank) );
            result.setInitialPaymentBank( dc.format((priceBank/100*overstatementModel.getPercentInitialPaymentBank())) );
            result.setCreditBank( dc.format(priceBank/100*(100-overstatementModel.getPercentInitialPaymentBank())) );

            model.addAttribute("overstatement", overstatementModel);
            model.addAttribute("overstatementResultModel", result);
            model.addAttribute("overstatementResultDefault", "overstatementResult.jsp");
        } else {
            model.addAttribute("errors","Заполните обязательные поля!");
            model.addAttribute("overstatement", overstatementModel);
            model.addAttribute("overstatementResultDefault", "overstatementDefault.jsp");
        }
        return "index";
    }

    private void addTitleDescription(Model model) {
        model.addAttribute("title", title);
        model.addAttribute("description", description);
    }
}
