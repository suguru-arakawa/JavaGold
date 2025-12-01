package com.practice.demo.Infrastructure.repository;

import com.practice.demo.domain.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {

    List<Question> findByChapterNumber(String chapterNumber);
}
