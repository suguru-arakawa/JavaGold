package com.practice.demo.presentation.controller;

import com.practice.demo.application.service.Chapter4Service;
import com.practice.demo.domain.service.DiscountPolicy;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/annotation")
@RequiredArgsConstructor
public class Chapter4Controller {

    private final Chapter4Service chapter4Service;

    // @FunctionalInterface（抽象クラス１つだけだよのタグ ）を使用した実装
    // 関数変えるだけで良くなる
    @GetMapping("/functionalInterface/1")
    public double normalDiscount(@RequestParam double price){
        DiscountPolicy policy = originPrice -> originPrice * 0.9;
        return chapter4Service.calculatePrice(price, policy);
    }

    @GetMapping("/functionalInterface/2")
    public double saleDiscount(@RequestParam double price){
        DiscountPolicy policy = originPrice -> originPrice * 0.85;
        return chapter4Service.calculatePrice(price, policy);
    }

    @GetMapping("/collection/1")
    public int playWithHashSet() {
        return chapter4Service.playWithHashSet();
    }

    @GetMapping("/collection/2")
    public int playWithArrayList() {
        return chapter4Service.playWithArrayList();
    }

    @GetMapping("/collection/3")
    public String playWithTreeSet() {
        return chapter4Service.playWithTreeSet();
    }

    @GetMapping("/collection/4")
    public String playWithQueue(@RequestParam int deleteNumber) {
        return chapter4Service.playWithQueue(deleteNumber);
    }

    @GetMapping("/collection/5")
    public String playWithNavigableMap(@RequestParam String key, boolean isSubMap) {
        return chapter4Service.playWithNavigableMap(key, isSubMap);
    }

    @GetMapping("/collection/6")
    public List<String> playWithGenerics(@RequestParam String value) {
        return chapter4Service.playWithGenerics(value);
    }

    @GetMapping("/collection/test/4-4")
    public List<String> test4() {
        return chapter4Service.test4();
    }

    @GetMapping("/collection/test/4-6")
    public Set<Number> test6() {
        return chapter4Service.test6();
    }
}
