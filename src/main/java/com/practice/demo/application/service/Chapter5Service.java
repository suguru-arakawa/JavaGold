package com.practice.demo.application.service;

import com.practice.demo.domain.model.Gen;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Consumer;

@Service
public class Chapter5Service {

    private Gen gen = new Gen();

    public String playWithSortedList() {

        List<Integer> list = Arrays.asList(3,2,1);
        Consumer<List<Integer>> con1 = Collections::sort;
        con1.accept(list);

        return gen.createResult(list, "", false);

    }

    // 1か−1しか返さない。
    public String playWithIntegerCollection() {

        Comparator<Integer> com = Integer::compare;
        int result1 = com.compare(1,2);
        int result2 = com.compare(100,50);
        return gen.<Integer>createResult(List.of(result1,result2), "", false);
    }

    public String playWithBiFunction() {
        // ラムダ
        // BiFunction<String, Integer, Character> bi = (s, i) -> s.charAt(i);
        BiFunction<String, Integer, Character> bi = String::charAt;
        return bi.apply("My name is", 3).toString();
    }
}
