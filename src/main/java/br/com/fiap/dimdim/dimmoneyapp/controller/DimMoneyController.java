package br.com.fiap.dimdim.dimmoneyapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DimMoneyController {
    @GetMapping("/")
    public String helloWorld() {
        return "index";
    }
}
