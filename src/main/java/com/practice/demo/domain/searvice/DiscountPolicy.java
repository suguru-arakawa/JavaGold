package com.practice.demo.domain.searvice;

@FunctionalInterface
public interface DiscountPolicy {

    double applyDiscount(double originPrice);
}
