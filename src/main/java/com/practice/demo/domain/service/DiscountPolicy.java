package com.practice.demo.domain.service;

@FunctionalInterface
public interface DiscountPolicy {

    double applyDiscount(double originPrice);
}
