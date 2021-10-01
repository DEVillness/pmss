package net.devillness.pmss.utils;

import net.devillness.pmss.entities.OperatorEntity;

import java.util.*;

public class RecruitCalcUtil {

    public static ArrayList<String> powerSet(ArrayList<String> given, int size) {
        ArrayList<String> result = new ArrayList<>();
        if (given.size() < size) {
            return powerSet(given, size - 1);
        }
        if (size == 1) {
            return given;
        }
        if (size == 0) {
            return new ArrayList<>(Collections.singletonList(""));
        }
        ArrayList<String> copy = new ArrayList<>(given);
        String first = copy.get(0);
        copy.remove(0);
        result.addAll(addHeader(powerSet(copy, size - 1), first));
        result.addAll(powerSet(copy, size));
        return result;
    }

    public static ArrayList<String> addHeader(ArrayList<String> given, String header) {
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

    public static LinkedHashMap<ArrayList<String>, OperatorEntity[]> sortOperators(LinkedHashMap<ArrayList<String>, OperatorEntity[]> operators) {
        LinkedHashMap<ArrayList<String>, OperatorEntity[]> sortedMap = new LinkedHashMap<>();
        operators.entrySet().stream().sorted(Map.Entry.comparingByValue(cmp)).forEachOrdered(x -> sortedMap.put(x.getKey(), x.getValue()));
        return sortedMap;
    }

    private static final Comparator<OperatorEntity[]> cmp = (o1, o2) -> {
        int o1min = 6;
        int o2min = 6;
        for(OperatorEntity o : o1) {
            if(o.getRank() != 1) {
                if (o.getRank() < o1min) {
                    o1min = o.getRank();
                }
            }
        }
        for(OperatorEntity o : o2) {
            if (o.getRank() != 1) {
                if (o.getRank() < o2min) {
                    o2min = o.getRank();
                }
            }
        }
        if (o1min == o2min) {
            for(OperatorEntity o : o1) {
                if (o.getRank() == 1) {
                    for(OperatorEntity p : o2) {
                        if (p.getRank() == 1) {
                            return 0;
                        }
                    }
                    return 1;
                }
            }
            for(OperatorEntity o : o2) {
                if (o.getRank() == 1) {
                    return -1;
                }
            }
            return 0;
        }
        return Integer.compare(o2min, o1min);
    };
}
