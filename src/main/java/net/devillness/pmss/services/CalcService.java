package net.devillness.pmss.services;

import net.devillness.pmss.utils.MaterialCalculationUtil;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.stereotype.Service;

@Service(value = "net.devillness.pmss.services.CalcService")
public class CalcService {

    public void materialCalculator() {
        MaterialCalculationUtil materialCalculationUtil = new MaterialCalculationUtil();
        MaterialCalculationUtil.Orirock.getLack();
    }

    public void recruitmentCalculator(RecruitVo recruitVo) {
        
    }
}