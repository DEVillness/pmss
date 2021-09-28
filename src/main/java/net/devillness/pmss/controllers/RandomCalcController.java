package net.devillness.pmss.controllers;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "net.devillness.pmss.controllers.RandomCalcController")
@RequestMapping(value = "/random")
public class RandomCalcController {

    @RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String randomGet() {
        return "calc/random";
    }
}
