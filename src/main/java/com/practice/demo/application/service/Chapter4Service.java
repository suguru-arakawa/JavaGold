package com.practice.demo.application.service;

import com.practice.demo.domain.model.Gen;
import com.practice.demo.domain.model.ListItem;
import com.practice.demo.domain.searvice.DiscountPolicy;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class Chapter4Service {

    private final Gen gen = new Gen();

    public double calculatePrice(double originPrice, DiscountPolicy discountPolicy) {
        return discountPolicy.applyDiscount(originPrice);
    }

    // HashSetは重複をなくしてくれるが、参照が違う場合はなくさない
    // 重複なくしたい場合、ListItemクラスにequalsメソッドの実装が必要
    public int playWithHashSet() {
        ListItem item = new ListItem();
        item.setName("バナナ");
        item.setKind("果物");

        ListItem item2 = new ListItem();
        item2.setName("イチゴ");
        item2.setKind("果物");

        ListItem item3 = new ListItem();
        item.setName("バナナ");
        item.setKind("果物");

        // SIze2
        HashSet<ListItem> items = new HashSet<>(List.of(item, item2, item2));

        // Size3
        //HashSet<ListItem> items = new HashSet<>(List.of(item, item2, item2));

        return items.size();
    }

    // ArrayListは重複をなくさない
    public int playWithArrayList() {
        ListItem item = new ListItem();
        item.setName("バナナ");
        item.setKind("果物");

        ListItem item2 = new ListItem();
        item2.setName("イチゴ");
        item2.setKind("果物");

        List<ListItem> items = new ArrayList<>(List.of(item, item2, item));

        return items.size();
    }

    // TreeSetは降順に自動で並び替えてくれる
    public String playWithTreeSet() {
        TreeSet<Integer> numbers = new TreeSet<>();
        numbers.add(10000);
        numbers.add(5000);
        numbers.add(100);

        return gen.createResult(numbers.stream().toList(), "番目：", true);
    }

    public String playWithQueue(int deleteNumber) {

        Queue<String> queue = new ArrayDeque<>();
        queue.add("1");
        queue.add("2");
        queue.add("3");
        queue.add("4");
        queue.add("5");
        queue.add("6");

        int originalSize = queue.size();

        while(queue.peek() != null) {
            queue.poll();
            if(originalSize - queue.size() == deleteNumber) {
                break;
            }
        }

        if(queue.isEmpty()) {
            return "全削除";
        }

        return gen.createResult(queue.stream().mapToInt(Integer::parseInt).boxed().toList(), "番目：", true);
    }

    public String playWithNavigableMap(String key, boolean isSubMap) {

        NavigableMap<String, String> navigableMap = new TreeMap<>();
        navigableMap.put("1111", "ItemA");
        navigableMap.put("2222", "ItemB");
        navigableMap.put("3333", "ItemC");
        navigableMap.put("4444", "ItemD");

        if(isSubMap) {
            NavigableMap<String, String> sub = navigableMap.subMap(key, true, "5000", true);
            String higherKey = sub.higherKey(key);
            return gen.createResult(List.of(higherKey), "近似値：", false);
        }

        if(navigableMap.containsKey(key)) {
            return gen.createResult(List.of(navigableMap.get(key)), "キー：", false);
        }else {
            String higherKey = navigableMap.higherKey(key);
            String lowerKey = navigableMap.lowerKey(key);
            return gen.createResult(List.of(higherKey, lowerKey), "近似値：", false);
        }
    }

    public List<String> playWithGenerics(String value) {

        List<Integer> integerList = new ArrayList<>(List.of(100, 200, 300));
        List<String> stringList = new ArrayList<>(List.of("400","500","600"));

        return List.of(
                gen.getValue(value),
                gen.createResult(integerList, "IntegerList：", false),
                gen.createResult(stringList, "StringList：", false)
        );
    }

    public List<String> test4() {
        List<Integer> list = new LinkedList<>();
        list.add(100);
        list.add(200);
        list.remove(1);

        Queue<Integer> list2 = new LinkedList<>();
        list2.add(100);
        list2.add(200);
        list2.remove(1);

        return List.of(
                gen.createResult(list, "List：", false),
                gen.createResult(list2.stream().toList(), "Queue：", false)
        );
    }

    public Set<Number> test6() {
        Set<Number> set = new HashSet<>();
        set.add(100L);
        set.add(Integer.parseInt("80"));
        set.add(null);
        set.add(80);
        return set;
    }
}
