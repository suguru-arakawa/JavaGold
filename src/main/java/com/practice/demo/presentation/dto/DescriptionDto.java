package com.practice.demo.presentation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DescriptionDto {
    private String description;
    private String explanation;
    private List<AnswerChoice> answerChoices;
    private String correctAnswerLabel;

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class AnswerChoice {
        String label;
        String text;
    }
}
