package net.devillness.pmss.utils;

import java.util.ArrayList;
import java.util.Collections;

public class RecruitCalcUtil {
    public static ArrayList<String> subset(ArrayList<String> given, int size) {
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
}
