INSERT INTO public.questions
(chapter_number, description, explanation, choice_1, choice_2, choice_3, choice_4, correct_answer, question_number)
VALUES
('3', '次のプログラムをコンパイル、実行した時の結果として、正しいものを選びなさい。（１つ選択）

public class Main {
    public static void main(String[] args) {
        Thread t = new Thread() {
            @Override
            public synchronized void start() {
                super.start();
                System.out.println("A");
            }
            @Override
            public void run() {
                supper.run();
                System.out.println("B");
            }
        };
        t.run();
    }
}', '未定',
 '「A」だけが表示される', '「A」だけが表示される', '常に「A」「B」の順で表示される', '「A」と「B」の両方が表示されるが、順序は不定である',
 'B', 1),

('3', 'マルチスレッドで並列処理をするために記述として、正しいものを選びなさい。（２つ選択）', '未定',
 'Threadクラスを継承したクラスを作り、runメソッドをオーバーライドする',
 'Threadクラスを継承したクラスを作り、startメソッドをオーバーライドする',
 'Runnableインターフェイスを実現したクラスを作り、runメソッドを実装',
 'Runnableインターフェイスを実現したクラスを作り、startメソッドを実装する',
 'AC', 2),

('3', 'あらかじめいくつかのスレッドを作ってプールしておき、時間の経過で不要なスレッドを削除する ExecutorServiceを取得するExecutorsクラスのメソッドとして、正しいものを選びなさい（１つ選択）', '未定',
 'newSingleThreadExecutorメソッド', 'newFixedThreadPoolメソッド', 'newCachedThreadPoolメソッド', 'newManageThreadPoolメソッド',
 'C', 3),

('3', 'java.util.concurrent.ScheduledExecutorServiceインタフェースを使って、1秒後にコンソールに「done.」と表示する遅延実行スレッドを作りたい。正しいコードを選びなさい。（１つ選択）', '未定',
 'exec.schedule(() -> { System.out.println("done."); }, 1, TimeUnit.SECONDS);',
 'exec.schedule(() -> { System.out.println("done."); }, 1000);',
 'exec.execute(() -> { System.out.println("done."); }, 1, TimeUnit.SECONDS);',
 'exec.execute(() -> { System.out.println("done."); }, 1, TimeUnit.SECONDS);',
 'A', 4),

('3', 'java.util.concurrent.ScheduledExecutorServiceインタフェースを使って処理を定期的に実行したい。使用するメソッドとして正しいものを選びなさい（１つ選択）', '未定',
 'scheduleメソッド', 'scheduleAtFixedRateメソッド', 'repeatメソッド', 'scheduleAtLoopメソッド',
 'B', 5),

('3', 'マルチスレッドでタスクをほぼ一定間隔で実行したい。ScheduledExecutorService のどのメソッドを使用すれば良いか。（１つ選択）', '未定',
 'scheduleメソッド', 'scheduleAtFixedRateメソッド', 'scheduleWithFixedDelayメソッド', 'scheduleDelayメソッド',
 'C', 6),

('3', 'ScheduledExecutorService を使用し、複数のスレッドをプールしながら効率よくマルチスレッドによる処理を実行したい。使用するメソッドとして正しいものを選びなさい。（１つ選択）', '未定',
 'scheduledExecutorServiceのnewThreadPoolメソッド',
 'scheduledExecutorServiceのnew ScheduledThreadPoolメソッド',
 'ExecutorのnewThreadPoolメソッド',
 'Executorのnew ScheduledThreadPoolメソッド',
 'D', 7),

('3', 'Runnable インターフェイスを使ってマルチスレッドによる処理を実行している。Future の get メソッドは、スレッドが終了した時点で何を受け取るか。（１つ選択）', '未定',
 'int型の整数', 'boolean型の真偽値', 'java.util.concurrent.Result型の列挙定数', 'null',
 'D', 8),

('3', '次のコードを実行したとき、Future インターフェイスの get メソッドの戻り値として正しいものを選びなさい（１つ選択）

Future<Integer> future = exec.submit(() -> {
    try {
        // do somthing
    } catch(InterruptedException e) {
        throw new RuntimeException(e);
    }
}, 0);', '未定',
 '負の整数', '0', 'null', 'RuntimeExceptionがスローされる',
 'B', 9),

('3', 'RunnableとCallableの特徴として、正しいものを選びなさい。（２つ選択）', '未定',
 'Runnableは戻り値を戻せない', 'Runnableは任意の戻り値を戻せる',
 'Callableは戻り値を戻せない', 'Callableは任意の戻り値を戻せる',
 'AD', 10),

('3', 'Callable を使ってタスクを定義している。タスク内で SampleException をスローした場合、受け取る側で補足する例外の型として最も適切なものを選びなさい。（１つ選択）', '未定',
 'SampleException', 'ExecutionException', 'FutureException', 'ConcurrentException',
 'B', 11),

('3', '複数のスレッドの終了を待って処理する同期化処理を実現したい。使用するクラスあるいはインタフェースとして正しいものを選びなさい。（１つ選択）', '未定',
 'CyclicBarrier', 'CopyOnWriteArrayList', 'ExecutorService', 'ScheduledExecutorService',
 'A', 12),

('3', 'マルチスレッド・アプリケーションで共有されるインタフェースで、競合が発生しないように排他制御をしたい。このとき使用するキーワードとして正しいものを選びなさい。（１つ選択）', '未定',
 'synchronized', 'volatil', 'strictfp', 'transient',
 'A', 13),

('3', '複数のスレッド間で排他制御された複数のインスタンスを共有していて、インスタンス同士が連携することで発生する待ち状態を意味する用語として正しいものを選びなさい（１つ選択）', '未定',
 '待ち行列', 'デッドロック', '同期化', 'ライブロック',
 'B', 14),

('3', 'synchronized を使わず、フィールドの競合が発生しないようにするために用意されたクラスとメソッドとして正しいものを選びなさい（１つ選択）', '未定',
 'IntegerのaddAndGetメソッド', 'Integerのgetメソッド',
 'AtomicIntegerのaddAndGetメソッド', 'AtomicIntegerのgetメソッド',
 'C', 15),

('3', 'マルチスレッド・アプリケーションでコレクションを複数スレッドで共有している。一方のスレッドが読み出し中に他方が変更しても例外が発生しないコレクションはどれか。（１つ選択）', '未定',
 'ArrayList', 'Vector', 'ThreadSafeList', 'CopyOnWriteArrayList',
 'D', 16),

('3', '複数のメソッドにまたがる排他制御を実現したい。最も適切な方法を選びなさい。（１つ選択）', '未定',
 'クラス宣言をsynchronizedで修飾する',
 '排他制御したい全てのメソッドをsynchronizedで修飾する',
 'java.util.concurrent.atomicパッケージに属するクラスを利用する',
 'ReentranLockクラスを利用する',
 'D', 17);
