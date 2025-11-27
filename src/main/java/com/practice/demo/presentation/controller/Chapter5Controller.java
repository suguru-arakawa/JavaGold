package com.practice.demo.presentation.controller;

import com.practice.demo.application.service.Chapter5Service;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/method")
@RequiredArgsConstructor
public class Chapter5Controller {

    private final Chapter5Service chapter5Service;

    @GetMapping("/reference/1")
    public String playWithSortedList() {
        return chapter5Service.playWithSortedList();
    }

    @GetMapping("/collection/1")
    public String playWithIntegerCollection() {
        return chapter5Service.playWithIntegerCollection();
    }

    @GetMapping("/collection/2")
    public String playWithBiFunction() {
        return chapter5Service.playWithBiFunction();
    }

}
