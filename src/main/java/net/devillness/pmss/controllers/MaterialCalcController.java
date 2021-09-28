package net.devillness.pmss.controllers;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "net.devillness.pmss.controllers.MaterialCalcController")
@RequestMapping(value = "/material")
public class MaterialCalcController {

    @RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String materialGet() {
        return "calc/material";
    }
}
