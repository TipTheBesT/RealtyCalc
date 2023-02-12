package ru.lawNotes.calc.commission;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.lawNotes.calc.commission.models.CommissionModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.lawNotes.calc.commission.models.CommissionResultModel;

import java.text.DecimalFormat;

@Controller
@RequestMapping("/commission")
public class Commission {
    private String title = "Расчёт услуг";
    private String description = "Расчёт раздела услуг между агентом, юристом и агентством, " +
            "с описанием суммы и процента причитающегося каждому из них";

    @GetMapping("/")
    public String doGet (Model model) {
        addTitleDescription(model);
        model.addAttribute("commission", new CommissionModel());
        model.addAttribute("includeIndex", "commission.jsp");
        model.addAttribute("commissionResultDefault", "commissionDefault.jsp");
        return "index";
    }
    @PostMapping("/")
    public String doPost(@ModelAttribute("commission") CommissionModel commissionModel,Model model) {
        DecimalFormat dc = new DecimalFormat("###,###,###.##");
        DecimalFormat dcPercent = new DecimalFormat("###.##");
        addTitleDescription(model);
        model.addAttribute("includeIndex", "commission.jsp");

        if ((commissionModel.getPrice()!=null) && (commissionModel.getPercentRealtor()!=null) && (commissionModel.getPercentLawyer()!=null) &&
                (commissionModel.getPrice() > 0) && (commissionModel.getPercentRealtor() > 0) && (commissionModel.getPercentLawyer() > 0)) {
            CommissionResultModel result = new CommissionResultModel();
            result.setPrice(dc.format(commissionModel.getPrice()));
            result.setPercentAgency(dcPercent.format((100 - commissionModel.getPercentRealtor())));
            result.setPercentRealtor(dcPercent.format(commissionModel.getPercentRealtor()));
            result.setPercentLawyer(dcPercent.format(commissionModel.getPercentLawyer()));
            result.setPercentRealtorMinusLawyer(dcPercent.format((commissionModel.getPercentRealtor()-commissionModel.getPercentLawyer())));

            result.setRubAgency(dc.format((commissionModel.getPrice() * ((100 - commissionModel.getPercentRealtor()) / 100))));
            result.setRubRealtor(dc.format((commissionModel.getPrice() * ((commissionModel.getPercentRealtor() - commissionModel.getPercentLawyer()) / 100))));
            result.setRubLawyer(dc.format((commissionModel.getPrice() * (commissionModel.getPercentLawyer() / 100))));

            model.addAttribute("commission", commissionModel);
            model.addAttribute("commissionResultModel", result);
            model.addAttribute("commissionResultDefault", "commissionResult.jsp");
        } else {
            model.addAttribute("errors","Заполните все поля!");
            model.addAttribute("commission", commissionModel);
            model.addAttribute("commissionResultDefault", "commissionDefault.jsp");
        }

        return "index";
    }

    private void addTitleDescription(Model model) {
        model.addAttribute("title", title);
        model.addAttribute("description", description);
    }
}
