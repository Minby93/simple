package com.example.ascents.controller;

import com.example.ascents.entity.Alpinist;
import com.example.ascents.service.AlpinistService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class AlpinistController {
    private final AlpinistService alpinistService;

    @GetMapping("/")
    public String alpinist(Model model){
        model.addAttribute("alpinists", alpinistService.listAlpinists());
        return "alpinist";
    }
    @GetMapping("/alpinist/{aId}")
    public String alpinistInfo(@PathVariable Long aId, Model model){
        model.addAttribute("alpinist", alpinistService.getAlpinistById(aId));
        return "alpinist-info";
    }
    @PostMapping("/alpinist/create")
    public String createAlpinist(Alpinist alpinist){
        alpinistService.saveAlpinist(alpinist);
        return "redirect:/";
    }
    @PostMapping("/alpinist/delete/{aId}")
    public String deleteAlpinist(@PathVariable Long aId){
        alpinistService.deleteAlpinist(aId);
        return "redirect:/";
    }
}
