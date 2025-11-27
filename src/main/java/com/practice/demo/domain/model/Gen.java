package com.practice.demo.domain.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Objects;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Gen {
    private String value;

    public <T> T getValue(T value) { return value; }

    public <T> String createResult(List<T> resultList, String message, boolean isNumber) {
        StringBuilder builder = new StringBuilder();
        String newline = System.lineSeparator();

        if (resultList.stream().anyMatch(Objects::isNull)) {
            return "Nullが含まれています";
        }

        for (int i = 0; i < resultList.size(); i++) {

            if(isNumber) {
                builder.append(i);
            }

            builder.append(message)
                    .append(resultList.get(i))
                    .append(newline);
        }

        return builder.toString();
    }
}
