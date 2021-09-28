package net.devillness.pmss.controllers;

import net.devillness.pmss.services.RecruitCalcService;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller(value = "net.devillness.pmss.controllers.RecruitCalcController")
@RequestMapping(value = "/recruit")
public class RecruitCalcController {
    private final RecruitCalcService recruitCalcService;

    public RecruitCalcController(RecruitCalcService recruitCalcService) {
        this.recruitCalcService = recruitCalcService;
    }

    @RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String recruitGet() {
        return "calc/recruit";
    }

    @RequestMapping(value = "", method = RequestMethod.POST, produces = MediaType.TEXT_HTML_VALUE)
    public String recruitPost(RecruitVo recruitVo,
                              HttpServletRequest request) {
        this.recruitCalcService.recruitCalculator(recruitVo);
        request.setAttribute("operators", recruitVo.getOperators());
        return "calc/recruit";
    }
}