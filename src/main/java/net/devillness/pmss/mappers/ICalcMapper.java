package net.devillness.pmss.mappers;

import net.devillness.pmss.entities.OperatorEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ICalcMapper {
    OperatorEntity[] selectOperators(@Param("position") String position,
                                     @Param("place") String place,
                                     @Param("tag1") String tag1,
                                     @Param("tag2") String tag2,
                                     @Param("tag3") String tag3);

    OperatorEntity[] selectStarterOperators(@Param("position") String position,
                                        @Param("place") String place,
                                        @Param("tag1") String tag1,
                                        @Param("tag2") String tag2,
                                        @Param("tag3") String tag3);

    OperatorEntity[] selectSeniorOperators(@Param("position") String position,
                                        @Param("place") String place,
                                        @Param("tag1") String tag1,
                                        @Param("tag2") String tag2,
                                        @Param("tag3") String tag3);

    OperatorEntity[] selectTopOperators(@Param("position") String position,
                                        @Param("place") String place,
                                        @Param("tag1") String tag1,
                                        @Param("tag2") String tag2,
                                        @Param("tag3") String tag3);
}
