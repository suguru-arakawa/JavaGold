package com.practice.demo.domain.type;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
public enum QuestionNumber {
    QUESTION_NUMBER_A("A"),
    QUESTION_NUMBER_B("B"),
    QUESTION_NUMBER_C("C"),
    QUESTION_NUMBER_D("D");

    private final String code;
    QuestionNumber(String code) {
        this.code = code;
    }
}
