package com.practice.demo.presentation.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionDto {
    public Integer questionNumber;
    public String answer;

    @JsonProperty("isCorrect")
    public boolean isCorrect;
}
