package com.practice.demo.presentation.controller;


import com.practice.demo.application.service.WorkbookService;
import com.practice.demo.presentation.dto.WorkBookRequestDto;
import com.practice.demo.presentation.dto.WorkbookResultDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class WorkbookController {

    private final WorkbookService workbookService;

    @PostMapping("/answer")
    public WorkbookResultDto getResult(@RequestBody WorkBookRequestDto requestDto) {
        return workbookService.getResult(requestDto);
    }
}
