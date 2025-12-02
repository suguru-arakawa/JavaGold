INSERT INTO public.questions
(chapter_number, description, explanation, choice_1, choice_2, choice_3, choice_4, correct_answer)
VALUES
(1, '次の問題のうち、正しいものを選びなさい。（２つ選択）', '未定',
 'インナークラスはprivateで修飾できない', 'staticなインナークラスはpublicで修飾できない',
 'ローカルクラスはpublicで修飾できない', '匿名クラスはfinalで修飾できない', 'CD'),

(1, '次のプログラムの「// insert code here」に記述するコードとして、正しいものを選びなさい（１つ選択）

public class Outer {
    class Inner {
        public void test() {
            System.out.println("test");
        }
    }

    public static void main*(String[] args) {
        // insert code here
    }
}', '未定',
 'new Inner();', 'new Outer.Inner();', 'new Outer().new Inner();', 'new Outer:Inner();', 'C'),

(1, '次のクラスをインスタンス化するためのコードとして、正しいものを選びなさい（１つ選択）

public class Outer {
    public static class Inner {
        // do something
    }
}', '未定',
 'Inner inner = new Inner();', 'Inner inner = new Outer().new Inner();', 'Inner inner = Outer.new Inner();', 'Inner inner = new Outer.Inner();', 'A'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものとして選びなさい（１つ選択）

public class Outer {
    private int num = 2;
    public void hoge() {
        Inner test = new Inner();
        test.data = 100;
        test.execute();
    }

    private static class Inner {
        private int data;
        void execute() {
            System.out.println(num + data);
        }
    }
}', '未定',
 '５行目でコンパイルエラーが発生する', '１１行目でコンパイルエラーが発生する', '「200」と表示される', '実行時に例外がスローされる', 'B'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public class Outer {

    public void test() {
        Inner.message = "Hello Java";
    }

    class Inner {
        private static String message;
        public void test() {
            System.out.println(message);
        }
    }
    public static void main*(String[] args) {
        Outer outer = new Outer();
        outer.test();
        outer.new Inner().test();
    }
}', '未定',
 '「null」と表示される', '「Hello Java」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'C'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public interface Test {
    void execute();
}

public class Sample() {

    private String message;

    public Test test(String value) {

        class A implements Test() {
            @Override
            public void execute() {
                System.out.println(message + value);
            }
        }
        value = "LocalClass";
        message = "Hello, ";
        return new A();
    }
}

public class Main {
    public static void main*(String[] args) {
        new Sample()
            .test("Java")
            .execute();
    }
}', '未定',
 '「Hello, LocalClass」と表示される', '「Hello, Java」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'C'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public class Sample() {

    private int num;

    public Sample(int num) {
        this.num = num;
    }

    public int getNum() {
        return num;
    }

    public setNum(int num) {
        this.num = num;
    }
}

public class Main {
    public static void main*(String[] args) {

        var sample = new Sample(10) {
            void modify(int num) {
                setNum(num);
            }
        }
        sample.modify(100);
        System.out.println(sample.getNum());
    }
}', '未定',
 '「10」と表示される', '「100」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'B'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public class Sample() {

    public Sample() {
        System.out.println("A");
    }
}

public class Main {
    public static void main*(String[] args) {

        Sample sample = new Sample() {
            public Sample() {
                System.out.println("B");
            }
        }
}', '未定',
 '「A」と表示される', '「B」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'C'),

(1, '次のプログラムの説明として、正しいものを選びなさい（３つ選択）

public interfase A {
    static void test() {
        System.out.println("A");
    }
}

public interface B extends A {}

public interface C implements A {}

public interface D implements A {
    public static void main*(String[] args) {
        A.test();
        B.test();
        C.test();
        test();
    }
}', '未定',
 'Dクラスの3行目でコンパイルエラーが発生する', 'Dクラスの4行目でコンパイルエラーが発生する',
 'Dクラスの5行目でコンパイルエラーが発生する', 'Dクラスの6行目でコンパイルエラーが発生する', 'BCD'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public interfase Sample {
    static void test() {
        System.out.println("A");
    }
}

public interface SampleIml implements Sample {

    public static void test() {
        System.out.println("B");
    }
     public static void main*(String[] args) {
        Sample.test();
     }

}', '未定',
 '「A」と表示される', '「B」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'A'),

(1, '次のプログラムの「// insert code here」に記述するコードとして、正しいものを選びなさい（１つ選択）

public interfase A {
    default void test() {
        System.out.println("A");
    }
}

public interfase B {
    default void test() {
        System.out.println("B");
    }
}

public interface C extends B {}

public interface D extends C {}

public class Sample implements A, D {

    @Override
    public void test() {
        // insert code here
    }
}', '未定',
 'A.super.test();', 'B.super.test();', 'C.super.test();', '上記の選択肢はいずれもコンパイルエラーとなる', 'A'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public interfase A {
    default void test() {
        System.out.println("A");
    }
}

public interfase B {
    public void test() {
        System.out.println("B");
    }
}

public interface C extends B implements A{}

public interface D extends C {}

public class Main {
    public static void main(String[] args) {
        A a = new C();
        a.test();
    }
}', '未定',
 '「A」と表示される', '「B」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'B'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public interfase A {
    default void test() {
        System.out.println("A");
    }
}

public abstruct B {
    protected void test() {
        System.out.println("B");
    }
}

public class Sample extends B implements A {
    public static void main(String[] args) {
        new Sample().test();
    }
}', '未定',
 '「A」と表示される', '「B」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'C'),

(1, '次のプログラムの「// insert code here」に記述するコードとして、正しいものを選びなさい（１つ選択）

public interfase Sample {
    default void test() {
       // insert code here
    }
}', '未定',
 'private void a();', 'private void b() {
    // do something
}', 'private default void c() {
    // do something
}', '上記の選択肢はいずれもコンパイルエラーとなる', 'B'),

(1, '次のプログラムをコンパイルし、実行結果に「A」と表示したい、「// insert code here」に記述するコードとして、正しいものを選びなさい（１つ選択）

public enum Test {
    A,B,C
}

public class Main() {
    public static void main(String[] args) {
        // insert code here
    }
}', '未定',
 'System.out.println(Test.values()[0]);', 'System.out.println(Test.values());', 'System.out.println(Test.values()[1]);', 'System.out.println(Test.valueOf()[1]);', 'A'),

(1, '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい（１つ選択）

public enum Sample {

    A("hello"), B("hello"), C("hello");

    private final String value;

    private Sample(String value) {
        System.out.println(value);
        this.value = value;
    }

    @Override
    public String toString() {
        return rhis.value;
    }
}

public class Main() {
    public static void main(String[] args) {
        System.out.println(Sample.A);
    }
}', '未定',
 '「A」と表示される', '「hello」が1回表示される', '「hello」が3回表示される', '「hello」が4回表示される', 'D');
