package ru.lawNotes.calc.index;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class IndexController {
    private String title = "Калькуляторы по недвижимости для агентов и юристов";
    private String description = "Считаем различные значения для агентов и юристов";

    @RequestMapping("/")
    public String getPage(Model model) {
        addTitleDescription(model);
        model.addAttribute("includeIndex","banner.jsp");
        return "index";
    }

    private void addTitleDescription(Model model) {
        model.addAttribute("title", title);
        model.addAttribute("description", description);
    }
}
