package net.devillness.pmss.services;

import net.devillness.pmss.utils.MaterialCalculationUtil;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

@Service(value = "net.devillness.pmss.services.CalcService")
public class CalcService {
    public static final int MAXIMUM_SELECTED = 3;
    public void materialCalculator() {
        MaterialCalculationUtil materialCalculationUtil = new MaterialCalculationUtil();
        MaterialCalculationUtil.Orirock.getLack();
    }

    public void recruitCalculator(RecruitVo recruitVo) {
        ArrayList<String> positions = new ArrayList<>(Arrays.asList(recruitVo.getPosition().split(" ")));
        ArrayList<String> places = new ArrayList<>(Arrays.asList(recruitVo.getPlace().split(" ")));
        ArrayList<String> ranks = new ArrayList<>(Arrays.asList(recruitVo.getRank().split(" ")));
        ArrayList<String> tags = new ArrayList<>(Arrays.asList(recruitVo.getTag().split(" ")));
        positions.add("");
        places.add("");
        ranks.add("");
        tags.add("");

        ArrayList<String> tagFormat = new ArrayList<>();


        for (String position : positions) {
            for (String place : places) {
                for (String rank : ranks) {
                    if (position.equals("") || place.equals("") || rank.equals("")) {
                        for (String tag : tags) {

                        }
                    } else {

                    }
                }
            }
        }
    }
}