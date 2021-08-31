package net.devillness.pmss.controllers;

import net.devillness.pmss.services.CalcService;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "net.devillness.pmss.controllers.CalcController")
@RequestMapping(value = "/")
public class CalcController {
    private final CalcService calcService;

    public CalcController(CalcService calcService) {
        this.calcService = calcService;
    }

    @RequestMapping(value = "/recruit", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String recruitGet(RecruitVo recruitVo) {
        this.calcService.recruitmentCalculator(recruitVo);
        return "calc/recruit";
    }
}