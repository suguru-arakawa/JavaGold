INSERT INTO public.questions (
    chapter_number,
    description,
    explanation,
    choice_1,
    choice_2,
    choice_3,
    choice_4,
    correct_answer,
    question_number
) VALUES
(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Ex1 {
    public static void main(String[] args) {
        Optional<String> sample = Optional.of(null);
        System.out.println(sample);
    }
}', '未定', '「null」と表示される', '「null」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'D', 1),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Ex1 {
    public static void main(String[] args) {
        Optional<String> sample = Optional.ofNullable(null);
        System.out.println(sample.get());
    }
}', '未定', '「null」と表示される', '「Optional.empty」と表示される', '実行時に例外がスローされる', 'コンパイルエラーが発生する', 'C', 2),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Ex1 {
    public static void main(String[] args) {
        Optional<String> sample = Optional.of("A");
        System.out.println(sample.orElse("B"));
    }
}', '未定', '「A」と表示される', '「B」と表示される', '実行時に例外がスローされる', 'コンパイルエラーが発生する', 'A', 3),

(4, 'Optionalクラスを利用している。Optionalのインスタンスが空であったときに任意の例外をスローする
Optionalクラスのメソッドとして、正しいものを選びなさい（１つ選択）', '未定',
'getメソッド', 'orElseGetメソッド', 'orElseThrowメソッド', 'getThrowメソッド', 'C', 4),

(4, 'Optionalクラスを利用している。Optionalが何かしらの結果を持っているとき、
その値を取り出さずに処理するためのメソッドとして、正しいものを選びなさい（１つ選択）', '未定',
'isPresentメソッド', 'ifPresentメソッド', 'presentメソッド', 'executeメソッド', 'B', 5),

(4, 'OptionalクラスのifPresentOrElseメソッドに渡す引数の型の組み合わせとして、正しいものを選びなさい。（１つ選択）',
'未定', 'Consumer, Runnable', 'Supplier, Runnable', 'Consumer, Function', 'Supplier, Function', 'A', 6),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Ex7 {
    public static void main(String[] args) {

        Optional<String> sample = Optional.of("abcde");
        Optional<String> result = sample.map(
            str -> str.toUpperCase()
        );

        System.out.println(sample.get());
        System.out.println(result.get());
    }
}', '未定',
'「abcde」「abcde」と表示される', '「abcde」「ABCDE」と表示される', '「ABCDE」「abcde」と表示される', '「ABCDE」「ABCDE」と表示される',
'B', 7),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Test2 {
    public static void main(String[] args) {

        Optional<Integer> a = Optional.of(100);
        Optional<Integer> b = a.map(price -> calc(price, 3));

        System.out.println(b.get());
    }

    private static Optional<Integer> calc(int price, int qty) {
        if(qty < 0) {
            return Optional.empty();
        }
        return Optional.of(price * qty);
    }
}', '未定',
'「300」と表示される', '「empty」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'C', 8),

(4, '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）',
'未定',
'List.of(1,2,3).forEach(x -> System.out.println(x));',
'List.of(1,2,3).forEach(() -> System.out.println(x));',
'List.of(1,2,3).forEach(() -> return 100);',
'List.of(1,2,3).forEach((x) -> return x * 100);',
'A', 9),

(4, 'ストリームを利用する理由として、適切でないものを選びなさい（１つ選択）',
'未定',
'コレクションや配列の全要素を同じように変換するため',
'コレクションや配列の要素の合計や平均といった統計を取るため',
'コレクションや配列を扱うfor文などの繰り返し構文を置き換えるため',
'コレクションやや配列の要素を何らかの条件でグルーピングするため',
'C', 10),

(4, 'int型要素を扱う配列型変数「array」からストリームを作るコードとして、正しいものを選びなさい（１つ選択）',
'未定',
'Stream<Integer> stream = array.stream();',
'Stream<Integer> stream = Arrays.stream();',
'IntStream stream = Arrays.stream(array);',
'IntStream stream = array.stream(array);',
'C', 11),

(4, 'ストリーム処理順に関する説明として、正しいものを選びなさい（１つ選択）',
'未定',
'コレクションに追加した順で処理される',
'コレクションが管理する順で処理される',
'コレクションに追加した順とは逆順に処理される',
'処理順は常に不定である',
'B', 12),

(4, 'String型要素を扱うjava.util.List型変数「list」から並列ストリームを取得するコードとして正しいものを選びなさい。（１つ選択）',
'未定',
'ParallelStream<String> stream = list.parallelStream();',
'ParallelStream<String> stream = list.getParallelStream();',
'Stream<String> stream = list.getParallelStream();',
'Stream<String> stream = list.parallelStream();',
'D', 13),

(4, '次のプログラムを実行して、「実行結果」に示した結果を得たい。
「/* insert code here */」に入るコードとして正しいものを選びなさい。（１つ選択）

import java.util.Arrays;
import java.util.List;

public class Sample {
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1,2,3,4,5,6,7,8,9,10);
        list.stream()
            /* insert code here */
            .forEach(System.out::println);
    }
}

「実行結果」
678910', '未定',
'filter(n -> n < 5);',
'filter(n -> n > 5);',
'map(n -> n > 5);',
'map(n -> n < 5);',
'B', 14),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Optional;

public class Value {
    private String data;
    public Value(String data) {
        this.data = data;
    }
    @Override
    public int hashCode() {
        return 100;
    }
    @Override
    public boolean equals(Object obj) {
        return true;
    }

}

public class Test {
    public static void main(String[] args) {
        List<Value> list = Arrays.asList(
            new Value("A"),
            new Value("B"),
            new Value("C"),
            new Value("A")
        );
        long size = list.stream().distinct().count();
        System.out.println(size);
    }
}', '未定',
'「1」と表示される', '「4」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる',
'A', 15),

(4, 'AからZまでの文字から成るストリームを扱っている。
この時の説明として、正しいものを選びなさい。（２つ選択）',
'未定',
'シングルスレッドでストリームを扱っている場合は、findAnyメソッドはランダムな要素を１つ戻す',
'マルチスレッドでストリームを扱っている場合は、findAnyメソッドはランダムな要素を１つ戻す',
'シングルスレッドでストリームを扱っている場合は、findFirstメソッドはストリーム・パイプラインで最初に処理した要素を１つ戻す',
'マルチスレッドでストリームを扱っている場合は、findFirstメソッドはストリーム・パイプラインで最初に処理した要素を１つ戻す',
'AB', 16),

(4, '次のプログラムの「/* insert code here */」に入るコードとして、正しいものを選びなさい（１つ選択）

import java.util.Arrays;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(5,4,3,2,1);
        list.stream()
            .sorted((a, b) -> {
                if(a < b) return -1;
                if(b < a) return 1;
                return 0;
            })
            .forEach(System.out::println);
    }
}', '未定',
'sort', 'sorting', 'sorted', 'compare', 'C', 17),

(4, '次のプログラムの「/* insert code here */」に入るコードとして、正しいものを選びなさい（１つ選択）

import java.util.Arrays;
import java.util.List;
import java.util.stream.Stream;

public class Test {
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1,2,3,4,5);
        /* insert code here */ =
            list.stream().map(n -> String.valueOf(n));
    }
}', '未定',
'Stream<String> result', 'Stream<Integer> result', 'List<String> result', 'List<String> result', 'A', 18),

(4, '次のプログラムの「/* insert code here */」に入るコードとして、正しいものを選びなさい（１つ選択）

List<Integer> list = Arrays.asList(1,2,3,4,5);
/* insert code here */ result
    = list.stream().reduce(0, (a, b) -> a + b);', '未定',
'int', 'Optional<Integer>', 'Stream<Integer>', 'Integer', 'D', 19),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class Main {
    public static void main(String[] args) {
        List<String> list = Arrays.asList("B", "A", "D", "C");
        Optional<String> result =
            list.stream().max((a, b) -> a.compareTo(b));
        result.ifPresent(System.out::println);
    }
}', '未定',
'「A」と表示される', '「C」と表示される', '「D」と表示される', '実行時に例外がスローされる',
'C', 20),

(4, 'ストリームを扱う際に、途中経過を保持するオブジェクトを使いたい。
このような処理に適したインタフェースまたはクラスを選びなさい。（１つ選択）',
'未定',
'java.util.stream.Collector', 'java.util.stream.Stream', 'java.util.stream.StreamSupport', 'java.util.stream.Stream.Builder',
'A', 21),

(4, 'java.util.stream.Collectorインタフェースに規定されているメソッドのうち、
実際に行いたい処理を記述するためのものを選びなさい。（１つ選択）',
'未定',
'supplierメソッド', 'accumulatorメソッド', 'combinerメソッド', 'finisherメソッド',
'B', 22),

(4, '次のプログラムのように、リストの要素を条件によって絞り込み、新しいリストを作りたい。
「/* insert code here */」に入るコードとして、正しいものを選びなさい（１つ選択）

import java.util.List;
import java.util.stream.Collectors;

public class Sample {
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1,2,3,4,5,6,7,8,9,10);
        List<Integer> result =
            list.stream()
                .filter(n -> n % 2 == 0)
                /* insert code here */;
        result.forEach(System.out::println);
    }
}', '未定',
'toList()', 'collect(Collectors.toList())', 'reduce(Collectors.toList())', 'getList()', 'B', 23),

(4, '次のプログラムの「/* insert code here */」に入るコードとして、正しいものを選びなさい（１つ選択）

public class Department {
    private String name;
    public Department(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
    @Override
    public int hashCode() {
        return name.hashCode();
    }
    @Override
    public boolean equals(Object obj) {
        if(obj instanceof Department) {
            Department other = (Department) obj;
            return this.name.equals(other.name);
        }
        return false;
    }
}

import java.util.Map;
import java.util.List;
import java.util.stream.Collectors;

public class Sample {
    public static void main(String[] args) {
        Department tokyo = new Department("Tokyo");
        Department osaka = new Department("Osaka");
        List<Employee> list = List.of(
            new Employee("Johnny", tokyo),
            new Employee("Bond", osaka),
            new Employee("Mickey", tokyo),
            new Employee("Sara", osaka)
        );
        /* insert code here */ result =
            list.stream().collect(
                Collectors.groupingBy(Employee::getDept)
            );
        // do something
    }
}', '未定',
'Map<Department, Employee>', 'Map<List<Department>, List<Employee>>', 'Map<Department, List<Employee>>', 'List<Department>',
'C', 24),

(4, 'リスト内の書籍のタイトルごとの合計金額を算出するために、以下の「// insert code here」に入るコードとして
正しいものを選びなさい。（１つ選択）

public class Book {
    private String title;
    private int price;

    public Book(String title, int price) {
        this.title = title;
        this.price = price;
    }

    public String getTitle() {
        return title;
    }
    public int getPrice() {
        return price;
    }
}

import java.util.Map;
import java.util.Arrays;
import java.util.stream.Collectors;

public class Sample {
    public static void main(String[] args) {
        Map<String, Integer> map = Arrays.asList(
            new Book("A", 1000),
            new Book("B", 2000),
            new Book("C", 500)
        ).stream()
        .collect(
            Collectors.groupingBy(
                Book::getTitle,
                Collectors.summingInt(Book::getPrice)
            )
        );
        map.forEach((k, v) -> {
            System.out.println(k + ":" + v);
        });
    }
}', '未定',
'reduce(Book::getPrice)', 'reduce(b -> b.getPrice())',
'summingInt(b -> b.getPrice())',
'Collectors.groupingBy(Book::getTitle, Collectors.summingInt(Book::getPrice))',
'D', 25),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.Set;
import java.util.List;
import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Sample {
    public static void main(String[] args) {
        List<String> list
            = Arrays.asList("banana", "apple", "orange");
            Stream<String> stream = list.stream();
            Set keys = stream.collect(
                Collectors.partitioningBy(str -> str.length() > 5)
            ).keySet();
            keys.forEach(System.out::print);
    }
}', '未定',
'「true」「false」と表示される', '「TRUE」「FALSE」と表示される', '「banana」「orange」と表示される', 'コンパイルエラーが発生する',
'A', 26),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.List;
import java.util.Arrays;
import java.util.stream.Stream;

public class Sample {
    public static void main(String[] args) {
        List<String> list
            = Arrays.asList("banana", "apple", "orange");
            Stream<String> stream = list.stream();
            stream
                .filter(str -> str.length() > 5)
                .peek(str -> System.out.print(str + ""))
                .map(str -> str.toUpperCase())
                .peek(str -> System.out.print(str + ""))
                .forEach(System.out::print);
    }
}', '未定',
'「banana orange BANANA ORANGE BANANA ORANGE」と表示される',
'「banana orange BANANA APPLE ORANGE BANANA  APPLE ORANGE」と表示される',
'「banana BANANA orange ORANGE」と表示される',
'「banana BANANA BANANAorange ORANGE ORANGE」と表示される',
'D', 27),

(4, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

import java.util.List;
import java.util.Arrays;
import java.util.stream.Stream;

public class Sample {
    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1, 2, 3);
        Stream<Integer> stream = list.stream();
        System.out.print(stream.count());
        stream.forEach(System.out::print);
    }
}', '未定',
'「3」「1」「2」「3」と表示される',
'「2」「1」「2」「3」と表示される',
'コンパイルエラーが発生する',
'実行時に例外がスローされる',
'D', 28);
