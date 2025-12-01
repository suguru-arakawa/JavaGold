package com.practice.demo.presentation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WorkbookResultDto {
    private Integer count;
    private List<QuestionDto> questionResultDtoList;
}
