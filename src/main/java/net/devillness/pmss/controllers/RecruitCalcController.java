package net.devillness.pmss.controllers;

import net.devillness.pmss.entities.OperatorEntity;
import net.devillness.pmss.services.RecruitCalcService;
import net.devillness.pmss.vos.RecruitVo;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.LinkedHashMap;

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

    @ResponseBody
    @RequestMapping(value = "/calc", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public String recruitCalcPost(RecruitVo recruitVo) {
        this.recruitCalcService.recruitCalculator(recruitVo);

        LinkedHashMap<String[], OperatorEntity[]> operators = recruitVo.getOperators();
        JSONArray responseJson = new JSONArray();

        operators.forEach((tags, os) -> {
            JSONObject itemJson = new JSONObject();
            JSONArray tagsJson = new JSONArray(tags);
            JSONArray operatorsJson = new JSONArray(Arrays.stream(os).map(operatorEntity -> {
                JSONObject operatorJson = new JSONObject();
                operatorJson.put("name", operatorEntity.getName());
                operatorJson.put("rank", operatorEntity.getRank());
                return operatorJson;
            }).toArray(JSONObject[]::new));
            itemJson.put("tags", tagsJson);
            itemJson.put("operators", operatorsJson);
            responseJson.put(itemJson);
        });
        return responseJson.toString();
    }
}