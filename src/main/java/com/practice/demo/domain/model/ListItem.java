package com.practice.demo.domain.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ListItem {

    private String name;
    private String kind;

    public boolean equals(Object obj) {
        return this.hashCode() == obj.hashCode();
    }
}
