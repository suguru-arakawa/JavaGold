INSERT INTO public.questions
(chapter_number, description, explanation, choice_1, choice_2, choice_3, choice_4, correct_answer, question_number)
VALUES
('2', 'java.util.function.Supplierインターフェイスで宣言されている抽象メソッドとして、正しいものを選びなさい。なお、Tはジェネリクスの型パラメータとする。（１つ選択）', '未定',
 'T get();', 'T set();', 'void put(T t)', 'void add(T t)', 'A', 1),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'Supplier<String> s = (str) -> System.out.println(str); s.get("test")',
 'Supplier<String> s = (str) -> "test" + str; System.out.println(s.get());',
 'Supplier<String> s = () -> "test"; System.out.println(s.get());',
 'Supplier<String> s = () -> "test"; System.out.println(s.apply());',
 'C', 2),

('2', 'java.util.function.Consumerインターフェイスで宣言されている抽象メソッドとして、正しいものを選びなさい。(１つ選択)', '未定',
 'void spent(T t);', 'void accept(T t);', 'T purchase();', 'T refund();', 'B', 3),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'Consumer<String> c = x -> System.out.println(x); c.accepy("hello")',
 'Consumer<String> c = x -> "Hello, " + x; System.out.println(c.accept("test"));',
 'Consumer<String> c = () -> "Hello, test"; System.out.println(c.accept());',
 'Consumer<String> c = () -> System.out.println("test"); c.accept();',
 'A', 4),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'Biconsumer<Integer, Integer> test = (a, b) -> a + b;',
 'Biconsumer<Integer, Integer> test = (a, b) -> System.out.println(a + b);',
 'Biconsumer<Integer, Integer> test = (a) -> a * 2;',
 'Biconsumer<Integer, Integer> test = (a) -> System.out.println(a * 2);',
 'B', 5),

('2', 'java.util.function.Predicateインターフェイスで宣言されている抽象メソッドとして、正しいものを選びなさい。(１つ選択)', '未定',
 'get', 'apply', 'accept', 'test', 'D', 6),

('2', '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）\n\nimport java.util.function.Predicate;\n\npublic class Q7 {\n    public static void main(String[] args) {\n        Predicate<Integer> p1 = x -> x > 0;\n        Predicate<Integer> p2 = x -> x < 100;\n        System.out.println(p1.or(p2).test(100));\n    }\n}', '未定',
 '「true」と表示される', '「false」と表示される', 'コンパイルエラーが発生する', '実行時に例外がスローされる', 'A', 7),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'BiPredicate<Integer, Integer> p = (a, b) -> a + b;',
 'BiPredicate<Integer, Integer> p = (a, b) -> a == b;',
 'BiPredicate<Integer, Integer> p = (a) -> a > 0;',
 'BiPredicate<Integer, Integer> p = (a) -> a == 0;',
 'B', 8),

('2', 'java.util.function.Functionインターフェイスで宣言されている抽象メソッドとして、正しいものを選びなさい。(１つ選択)', '未定',
 'get', 'apply', 'accept', 'test', 'C', 9),

('2', '次のようなコードがある。\n\nFunction<Integer, Integer> a = x -> x + 2;\nFunction<Integer, Integer> b = x -> x * 2;\n\nこれらを組み合わせて「22」という結果をコンソールに表示したい。正しいコードを選びなさい。（１つ選択）', '未定',
 'System.out.println(a.compose(b).apply(10));',
 'System.out.println(a.andThen(b).apply(10));',
 'System.out.println(a.after(b).apply(10));',
 'System.out.println(a.before(b).apply(10));',
 'A', 10),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'BiFunction<Integer, Integer, String> test = (a, b) -> a + b;',
 'BiFunction<Integer, Integer, String> test = (a, b) -> Integer.toString(a + b);',
 'BiFunction<Integer, String> test = (a, b) -> a + b;',
 'BiFunction<Integer, String> test = (a, b) -> Integer.toString(a + b);',
 'B', 11),

('2', 'java.util.function.UnaryOperatorインターフェイスで宣言されている抽象メソッドとして、正しいものを選びなさい。(１つ選択)', '未定',
 'execute', 'do', 'get', 'apply', 'D', 12),

('2', 'リストで扱っているコレクションに対して、一律に処理を実行したい。使用する関数型インタフェースとして、最も適切なものを選びなさい。', '未定',
 'Function', 'Consumer', 'UnaryOperation', 'Spplier', 'C', 13),

('2', '次のコードのうち、正しく記述されているものを選びなさい（１つ選択）', '未定',
 'BinaryOperator op = (a, b) -> a + b;',
 'BinaryOperator<Integer> op = (a, b) -> a + b;',
 'BinaryOperator<Integer, Integer> op = (a, b) -> a + b;',
 'BinaryOperator<Integer, Integer, Integer> op = (a, b) -> a + b;',
 'B', 14);
