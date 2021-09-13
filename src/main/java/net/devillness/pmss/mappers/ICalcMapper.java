package net.devillness.pmss.mappers;

import net.devillness.pmss.entities.OperatorEntity;
import net.devillness.pmss.vos.RecruitVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ICalcMapper {
    OperatorEntity[] selectOperators(RecruitVo recruitVo);
}
