package com.practice.demo.presentation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WorkBookRequestDto {
    private Integer chapterNumber;
    private List<QuestionDto> questionAnswerDtoList;
}
