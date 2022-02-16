package com.dojoandninja.dojoandninjas.controllers;

import javax.validation.Valid;

import com.dojoandninja.dojoandninjas.models.Dojo;
import com.dojoandninja.dojoandninjas.services.DojoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DojoController {
    @Autowired
    DojoService dojoService;

    @GetMapping("/")
    public String dojo(@ModelAttribute("dojo") Dojo dojo,Model model){
        model.addAttribute("dojos", dojoService.allDojos());
        return "dojo.jsp";
    }
    @PostMapping("/new/dojo")
    public String addDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result){
        if (result.hasErrors()) {

			return "dojo.jsp";
		}
		dojoService.createDojo(dojo);
		return "redirect:/";
    }


    
    
}
