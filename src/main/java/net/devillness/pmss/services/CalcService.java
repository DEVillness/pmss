package net.devillness.pmss.services;

import net.devillness.pmss.mappers.ICalcMapper;
import net.devillness.pmss.utils.MaterialCalculationUtil;
import net.devillness.pmss.vos.RecruitVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

@Service(value = "net.devillness.pmss.services.CalcService")
public class CalcService {
    public static final int RECRUIT_MAXIMUM_SELECTED = 3;

    private final ICalcMapper calcMapper;

    @Autowired
    public CalcService(ICalcMapper calcMapper) {
        this.calcMapper = calcMapper;
    }

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

        ArrayList<ArrayList<String>> tagFormats = new ArrayList<>();
        tagFormats.add(subset(tags, 0));
        if (tags.size() > 0) {
            tagFormats.add(subset(tags, 1));
            if (tags.size() > 1) {
                tagFormats.add(subset(tags, 2));
                if (tags.size() > 2) {
                    tagFormats.add(subset(tags, 3));
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
                    formattedTags = tagFormats.get(selectable);
                    for (String tag : formattedTags) {
                        String[] tagArray = tag.split(" ");
                        switch (tagArray.length) {
                            case 0 :
                                callSelectMethodByRank(position, place, rank, "", "", "");
                                break;
                            case 1 :
                                callSelectMethodByRank(position, place, rank, tagArray[0], "", "");
                                break;
                            case 2 :
                                callSelectMethodByRank(position, place, rank, tagArray[0], tagArray[1], "");
                                break;
                            case 3 :
                                callSelectMethodByRank(position, place, rank, tagArray[0], tagArray[1], tagArray[2]);
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

    public ArrayList<String> subset(ArrayList<String> given, int size) {
        ArrayList<String> result = new ArrayList<>();
        if (given.size() == size) {
            return given;
        }
        if (size == 0) {
            return new ArrayList<>(Collections.singletonList(""));
        }
        ArrayList<String> copy = new ArrayList<>(given);
        String first = copy.get(0);
        copy.remove(0);
        result.addAll(addHeader(subset(copy, size - 1), first));
        result.addAll(subset(copy, size));
        return result;
    }

    public ArrayList<String> addHeader(ArrayList<String> given, String header) {
        ArrayList<String> result = new ArrayList<>();
        for (String element : given) {
            if (element.equals("")) {
                result.add(header);
            } else {
                result.add(header + " " + element);
            }
        }
        return result;
    }

    public void callSelectMethodByRank(String position, String place, String rank, String tag1, String tag2, String tag3) {
        switch (rank) {
            case "starter":
                this.calcMapper.selectStarterOperators(position, place, tag1, tag2, tag3);
                break;
            case "senior":
                this.calcMapper.selectSeniorOperators(position, place, tag1, tag2, tag3);
                break;
            case "top":
                this.calcMapper.selectTopOperators(position, place, tag1, tag2, tag3);
                break;
            default:
                this.calcMapper.selectOperators(position, place, tag1, tag2, tag3);
                break;
        }
    }
}