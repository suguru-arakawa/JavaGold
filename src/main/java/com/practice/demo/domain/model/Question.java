package com.practice.demo.domain.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "questions")
@NoArgsConstructor
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "chapter_number", nullable = false, length = 2)
    private String chapterNumber;

    @Column(name = "description", nullable = false, columnDefinition = "TEXT")
    private String description;

    @Column(name = "explanation", columnDefinition = "TEXT")
    private String explanation;

    @Column(name = "choice_1", columnDefinition = "TEXT")
    private String choice1;

    @Column(name = "choice_2", columnDefinition = "TEXT")
    private String choice2;

    @Column(name = "choice_3", columnDefinition = "TEXT")
    private String choice3;

    @Column(name = "choice_4", columnDefinition = "TEXT")
    private String choice4;

    @Column(name = "correct_answer")
    private String correctAnswer;

    @Column(name = "question_number")
    private Integer questionNumber;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    // 自動で createdAt / updatedAt を設定したい場合は @PrePersist / @PreUpdate を利用可能
    @PrePersist
    protected void onCreate() {
        this.createdAt = LocalDateTime.now();
        this.updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}


