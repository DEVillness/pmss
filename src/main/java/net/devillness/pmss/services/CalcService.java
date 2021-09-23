package net.devillness.pmss.services;

import net.devillness.pmss.entities.OperatorEntity;
import net.devillness.pmss.mappers.ICalcMapper;
import net.devillness.pmss.utils.RecruitCalcUtil;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

@Service(value = "net.devillness.pmss.services.CalcService")
public class CalcService {
    public static final int RECRUIT_MAXIMUM_SELECTED = 3;

    private final ICalcMapper calcMapper;

    @Autowired
    public CalcService(ICalcMapper calcMapper) {
        this.calcMapper = calcMapper;
    }

    public void recruitCalculator(RecruitVo recruitVo) {
        recruitVo.setOperators(new ArrayList<>());

        ArrayList<String> positions = new ArrayList<>(Arrays.asList(recruitVo.getPosition().split(" ")));
        ArrayList<String> places = new ArrayList<>(Arrays.asList(recruitVo.getPlace().split(" ")));
        ArrayList<String> ranks = new ArrayList<>(Arrays.asList(recruitVo.getRank().split(" ")));
        ArrayList<String> tags = new ArrayList<>(Arrays.asList(recruitVo.getTag().split(" ")));
        positions.add("");
        places.add("");
        ranks.add("");
        tags.add("");
        System.out.println(recruitVo.getPosition());
        System.out.println(recruitVo.getPlace());
        System.out.println(recruitVo.getRank());
        System.out.println(recruitVo.getTag());
        System.out.println(places.size());
        System.out.println(places.size());
        System.out.println(ranks.size());
        System.out.println(tags.size());

        ArrayList<ArrayList<String>> tagFormats = new ArrayList<>();
        tagFormats.add(RecruitCalcUtil.subset(tags, 0));
        if (tags.size() > 0) {
            tagFormats.add(RecruitCalcUtil.subset(tags, 1));
            if (tags.size() > 1) {
                tagFormats.add(RecruitCalcUtil.subset(tags, 2));
                if (tags.size() > 2) {
                    tagFormats.add(RecruitCalcUtil.subset(tags, 3));
                }
            }
        }

        ArrayList<String> formattedTags;

        int selectable = RECRUIT_MAXIMUM_SELECTED;
        for (String position : positions) {
            if (!position.equals("")) {
                selectable--;
            }
            for (String place : places) {
                if (!place.equals("")) {
                    selectable--;
                }
                for (String rank : ranks) {
                    if (!rank.equals("")) {
                        selectable--;
                    }
                    if(selectable >= tagFormats.size()) {
                        formattedTags = tagFormats.get(tagFormats.size() - 1);
                    } else {
                        formattedTags = tagFormats.get(selectable);
                    }
                    for (String tag : formattedTags) {
                        String[] tagArray = tag.split(" ");
                        switch (tagArray.length) {
                            case 0:
                                callSelectMethodByRank(recruitVo, position, place, rank, "", "", "");
                                break;
                            case 1:
                                callSelectMethodByRank(recruitVo, position, place, rank, tagArray[0], "", "");
                                break;
                            case 2:
                                callSelectMethodByRank(recruitVo, position, place, rank, tagArray[0], tagArray[1], "");
                                break;
                            case 3:
                                callSelectMethodByRank(recruitVo, position, place, rank, tagArray[0], tagArray[1], tagArray[2]);
                                break;
                        }
                    }
                    if (!rank.equals("")) {
                        selectable++;
                    }
                }
                if (!place.equals("")) {
                    selectable++;
                }
            }
            if (!position.equals("")) {
                selectable++;
            }
        }
    }

    public void callSelectMethodByRank(RecruitVo recruitVo, String position, String place, String rank, String tag1, String tag2, String tag3) {
        OperatorEntity[] selectResult;
        switch (rank) {
            case "starter":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 1);
                break;
            case "senior":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 5);
                break;
            case "top":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 6);
                break;
            default:
                selectResult = this.calcMapper.selectOperators(position, place, tag1, tag2, tag3);
                break;
        }
        for (OperatorEntity result : selectResult) {
            System.out.println(result.getName());
        }
        if (selectResult != null) {
            System.out.println(position + " " + place + " " + rank + " " + tag1 + " " + tag2 + " " + tag3);
            recruitVo.appendOperators(selectResult);
        }
    }
}