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

    public static LinkedHashMap<String[], OperatorEntity[]> sortOperators(LinkedHashMap<String[], OperatorEntity[]> operators) {
        LinkedHashMap<String[], OperatorEntity[]> sortedMap = new LinkedHashMap<>();
        operators.entrySet().stream().sorted(Map.Entry.comparingByValue(cmp)).forEachOrdered(x -> sortedMap.put(x.getKey(), x.getValue()));
        return sortedMap;
    }

    private static final Comparator<OperatorEntity[]> cmp = (o1, o2) -> {
        int o1Max = o1[0].getRank();
        int o1Min = 6;
        boolean o1One = false;
        if (o1Max == 1) {
            o1Min = 1;
            o1One = true;
        } else {
            for(OperatorEntity o : o1) {
                if(o.getRank() != 1 && o.getRank() < o1Min) {
                    o1Min = o.getRank();
                }
            }
            if (o1[o1.length-1].getRank() == 1) {
                o1One = true;
            }
        }

        int o2Max = o2[0].getRank();
        int o2Min = 6;
        boolean o2One = false;
        if (o2Max == 1) {
            o2Min = 1;
            o1One = true;
        } else {
            for(OperatorEntity o : o2) {
                if (o.getRank() != 1 && o.getRank() < o2Min) {
                    o2Min = o.getRank();
                }
            }
            if (o2[o2.length-1].getRank() == 1) {
                o2One = true;
            }
        }

        if (o1Max == 1 || o2Max == 1) {
            if (o1Max == o2Max) {
                return 0;
            } else if (o1Min > 3 || o2Min > 3) {
                return Integer.compare(o2Min, o1Min);
            } else {
                return Integer.compare(o1Min, o2Min);
            }
        } else if (o1Min > 3) {
            if (o2Min > 3) {
                if (o1Min == o2Min) {
                    if (o1Max == o2Max) {
                        if (o1One == o2One) {
                            return 0;
                        } else {
                            return Boolean.compare(o1One, o2One);
                        }
                    } else {
                        return Integer.compare(o2Max, o1Max);
                    }
                } else {
                    return Integer.compare(o2Min, o1Min);
                }
            } else {
                return -1;
            }
        } else {
            if (o2Min > 3) {
                return 1;
            } else {
                if (o1One == o2One) {
                    return Integer.compare(o2Min, o1Min);
                } else {
                    return Boolean.compare(o2One, o1One);
                }
            }
        }
    };
}
