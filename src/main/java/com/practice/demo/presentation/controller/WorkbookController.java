package com.practice.demo.presentation.controller;


import com.practice.demo.application.service.WorkbookService;
import com.practice.demo.presentation.dto.DescriptionDto;
import com.practice.demo.presentation.dto.WorkBookRequestDto;
import com.practice.demo.presentation.dto.WorkbookResultDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class WorkbookController {

    private final WorkbookService workbookService;

    @PostMapping("/answer")
    public WorkbookResultDto getResult(@RequestBody WorkBookRequestDto requestDto) {
        return workbookService.getResult(requestDto);
    }

    @GetMapping("/description")
    public List<DescriptionDto> getDescription(@RequestParam String chapterNumber) {
        return workbookService.getDescription(chapterNumber);
    }
}
