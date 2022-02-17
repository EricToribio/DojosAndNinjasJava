package com.dojoandninja.dojoandninjas.controllers;

import javax.validation.Valid;

import com.dojoandninja.dojoandninjas.models.Ninja;
import com.dojoandninja.dojoandninjas.services.DojoService;
import com.dojoandninja.dojoandninjas.services.NinjaService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NinjaController {
    @Autowired
    NinjaService ninjaService;
    @Autowired
    DojoService dojoService;

    @GetMapping("/ninja")
    public String ninja(@ModelAttribute("ninja") Ninja ninja,Model model){
        model.addAttribute("dojos",dojoService.allDojos());
        return "ninjaForm.jsp";
    }

    @PostMapping("/new/ninja")
    public String addNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result,Model model){
        if (result.hasErrors()) {
            System.out.println(result);
            model.addAttribute("dojos",dojoService.allDojos());
			return "ninjaForm.jsp";
		}
		ninjaService.createNinja(ninja);
		return "redirect:/";
    }
}
