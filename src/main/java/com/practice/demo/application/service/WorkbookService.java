package com.practice.demo.application.service;

import com.practice.demo.presentation.dto.QuestionDto;
import com.practice.demo.presentation.dto.WorkBookRequestDto;
import com.practice.demo.presentation.dto.WorkbookResultDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class WorkbookService {

    public WorkbookResultDto getResult(WorkBookRequestDto requestDto) {

        WorkbookResultDto workbookResultDto = new WorkbookResultDto();

        List<QuestionDto> answerList = requestDto.getQuestionAnswerDtoList();

        int chapterNumber = requestDto.getChapterNumber();

        List<String> correctAnswerList = switch(chapterNumber) {
            case 1 -> createChapterOneAnswer();
            case 2 -> createChapterTwoAnswer();
            default -> throw new IllegalStateException("Unexpected value: " + chapterNumber);
        };

        if(answerList.size() != correctAnswerList.size()) {
            throw new IllegalArgumentException("回答数が足りていません。");
        }

        answerList.forEach(questionDto -> {
            questionDto.setCorrect(
                    checkAnswers(correctAnswerList, questionDto.questionNumber, questionDto.getAnswer())
            );
        });

        int correctCount = (int) answerList.stream().filter(questionDto -> !questionDto.isCorrect()).count();
        List<QuestionDto> notCorrectQuestionList = answerList.stream().filter(questionDto -> !questionDto.isCorrect()).toList();

        workbookResultDto.setCount(correctCount);
        workbookResultDto.setQuestionResultDtoList(notCorrectQuestionList);

        return workbookResultDto;
    }

    /**
     *
     * @param correctAnswerList 正解のリスト
     * @param questionNumber 問題番号
     * @param answer 解答
     * @return 正解か判定した結果
     */
    private boolean checkAnswers(
            List<String> correctAnswerList,
            int questionNumber,
            String answer
    ) {
        String correctAnswer = correctAnswerList.get(questionNumber -1);
        return correctAnswer.equals(answer);
    }

    /**
     * チャプター1の解答作成
     * @return チャプター1の解答リスト
     */
    private List<String> createChapterOneAnswer() {
        List<String> correctAnswerList = new ArrayList<>();
        correctAnswerList.add("CD");
        correctAnswerList.add("C");
        correctAnswerList.add("A");
        correctAnswerList.add("B");
        correctAnswerList.add("C");
        correctAnswerList.add("C");
        correctAnswerList.add("B");
        correctAnswerList.add("C");
        correctAnswerList.add("BCD");
        correctAnswerList.add("A");
        correctAnswerList.add("A");
        correctAnswerList.add("B");
        correctAnswerList.add("C");
        correctAnswerList.add("B");
        correctAnswerList.add("A");
        correctAnswerList.add("D");
        return correctAnswerList;
    }

    /**
     * チャプター2の解答作成
     * @return チャプター2の解答リスト
     */
    private List<String> createChapterTwoAnswer() {
        List<String> correctAnswerList = new ArrayList<>();
        correctAnswerList.add("A");
        correctAnswerList.add("C");
        correctAnswerList.add("B");
        correctAnswerList.add("A");
        correctAnswerList.add("B");
        correctAnswerList.add("D");
        correctAnswerList.add("A");
        correctAnswerList.add("B");
        correctAnswerList.add("C");
        correctAnswerList.add("A");
        correctAnswerList.add("B");
        correctAnswerList.add("D");
        correctAnswerList.add("C");
        correctAnswerList.add("B");
        return correctAnswerList;
    }
}
