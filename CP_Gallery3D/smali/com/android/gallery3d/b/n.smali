.class public Lcom/android/gallery3d/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadPool"

.field private static final rf:I = 0x4

.field private static final rg:I = 0x8

.field private static final rh:I = 0xa

.field public static final ri:I = 0x0

.field public static final rj:I = 0x1

.field public static final rk:I = 0x2

.field public static final rl:Lcom/android/gallery3d/b/j;


# instance fields
.field rm:Lcom/android/gallery3d/b/m;

.field rn:Lcom/android/gallery3d/b/m;

.field private final ro:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/gallery3d/b/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/q;-><init>(Lcom/android/gallery3d/b/h;)V

    sput-object v0, Lcom/android/gallery3d/b/n;->rl:Lcom/android/gallery3d/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/gallery3d/b/m;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/m;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/b/n;->rm:Lcom/android/gallery3d/b/m;

    .line 38
    new-instance v0, Lcom/android/gallery3d/b/m;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/m;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/b/n;->rn:Lcom/android/gallery3d/b/m;

    .line 81
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/android/gallery3d/b/f;

    const-string v8, "thread-pool"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/android/gallery3d/b/f;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/n;->ro:Ljava/util/concurrent/Executor;

    .line 86
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/android/gallery3d/b/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/b/x;-><init>(Lcom/android/gallery3d/b/n;Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)V

    .line 92
    iget-object v1, p0, Lcom/android/gallery3d/b/n;->ro:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-object v0
.end method
