package net.devillness.pmss.controllers;

import net.devillness.pmss.services.CalcService;
import org.springframework.stereotype.Controller;

@Controller(value = "net.devillness.pmss.controllers.CalcController")
public class CalcController {
    private final CalcService calcService;

    public CalcController(CalcService calcService) {
        this.calcService = calcService;
    }
}