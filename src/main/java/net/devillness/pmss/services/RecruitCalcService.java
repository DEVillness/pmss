package net.devillness.pmss.services;

import net.devillness.pmss.entities.OperatorEntity;
import net.devillness.pmss.mappers.ICalcMapper;
import net.devillness.pmss.utils.RecruitCalcUtil;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;

@Service(value = "net.devillness.pmss.services.RecruitCalcService")
public class RecruitCalcService {
    public static final int RECRUIT_MAXIMUM_SELECTED = 3;

    private final ICalcMapper calcMapper;

    @Autowired
    public RecruitCalcService(ICalcMapper calcMapper) {
        this.calcMapper = calcMapper;
    }

    public void recruitCalculator(RecruitVo recruitVo) {
        ArrayList<String> positions = new ArrayList<>(Arrays.asList(recruitVo.getPosition().split(" ")));
        ArrayList<String> places = new ArrayList<>(Arrays.asList(recruitVo.getPlace().split(" ")));
        ArrayList<String> ranks = new ArrayList<>(Arrays.asList(recruitVo.getRank().split(" ")));
        ArrayList<String> tags = new ArrayList<>(Arrays.asList(recruitVo.getTag().split(" ")));

        if (!positions.contains("")) {
            positions.add("");
        }
        if (!places.contains("")) {
            places.add("");
        }
        if (!ranks.contains("")) {
            ranks.add("");
        }
        if (!tags.contains("")) {
            tags.add("");
        }

        ArrayList<ArrayList<String>> tagFormats = new ArrayList<>();
        tagFormats.add(RecruitCalcUtil.powerSet(tags, 0));
        for (int i = 0; i < RECRUIT_MAXIMUM_SELECTED; i++) {
            if (tags.size() > i) {
                tagFormats.add(RecruitCalcUtil.powerSet(tags,i+1));
            } else {
                break;
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
                    if (selectable >= tagFormats.size()) {
                        formattedTags = tagFormats.get(tagFormats.size() - 1);
                    } else {
                        formattedTags = tagFormats.get(selectable);
                    }
                    for (String tag : formattedTags) {
                        String[] tagArray = tag.split(" ");
                        switch (tagArray.length) {
                            case 0:
                                callSelectMethodByRank(recruitVo, tagArray, position, place, rank, "", "", "");
                                break;
                            case 1:
                                callSelectMethodByRank(recruitVo, tagArray, position, place, rank, tagArray[0], "", "");
                                break;
                            case 2:
                                callSelectMethodByRank(recruitVo, tagArray, position, place, rank, tagArray[0], tagArray[1], "");
                                break;
                            case 3:
                                callSelectMethodByRank(recruitVo, tagArray, position, place, rank, tagArray[0], tagArray[1], tagArray[2]);
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
        recruitVo.setOperators(RecruitCalcUtil.sortOperators(recruitVo.getOperators()));
    }

    public void callSelectMethodByRank(RecruitVo recruitVo,
                                       String[] tagArray,
                                       String position,
                                       String place,
                                       String rank,
                                       String tag1,
                                       String tag2,
                                       String tag3) {
        if (position.equals("") &&
                place.equals("") &&
                rank.equals("") &&
                tag1.equals("") &&
                tag2.equals("") &&
                tag3.equals("")) {
            return;
        }
        OperatorEntity[] selectResult;
        switch (rank) {
            case "신입":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 2);
                break;
            case "특별채용":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 5);
                break;
            case "고급특별채용":
                selectResult = this.calcMapper.selectOperatorsByRank(position, place, tag1, tag2, tag3, 6);
                break;
            default:
                selectResult = this.calcMapper.selectOperators(position, place, tag1, tag2, tag3);
                break;
        }

        ArrayList<String> selectors = new ArrayList<>();
        if (!position.equals("")) {
            selectors.add(position);
        }
        if (!place.equals("")) {
            selectors.add(place);
        }
        if (!rank.equals("")) {
            selectors.add(rank);
        }
        if (tagArray.length != 1 || !tagArray[0].equals("")) {
            selectors.addAll(Arrays.asList(tagArray));
        }

        String[] selectorArr = selectors.toArray(new String[0]);
        if (selectResult.length != 0) {
            recruitVo.appendOperators(selectorArr, selectResult);
        }
    }
}