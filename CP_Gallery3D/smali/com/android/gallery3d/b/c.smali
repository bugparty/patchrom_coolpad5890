.class public Lcom/android/gallery3d/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/l;
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "FutureTask"


# instance fields
.field private cA:Lcom/android/gallery3d/b/u;

.field private volatile cB:Z

.field private cC:Z

.field private cD:Ljava/lang/Object;

.field private cz:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/b/c;-><init>(Ljava/util/concurrent/Callable;Lcom/android/gallery3d/b/u;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/android/gallery3d/b/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/b/c;->cz:Ljava/util/concurrent/Callable;

    .line 32
    iput-object p2, p0, Lcom/android/gallery3d/b/c;->cA:Lcom/android/gallery3d/b/u;

    .line 33
    return-void
.end method


# virtual methods
.method public N()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/b/c;->get()Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/c;->cB:Z

    .line 41
    return-void
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/c;->cC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 51
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/b/c;->cD:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/gallery3d/b/c;->cB:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/c;->cC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    iget-boolean v1, p0, Lcom/android/gallery3d/b/c;->cB:Z

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/b/c;->cz:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    monitor-enter p0

    .line 78
    :try_start_1
    iput-object v0, p0, Lcom/android/gallery3d/b/c;->cD:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/c;->cC:Z

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/b/c;->cA:Lcom/android/gallery3d/b/u;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/b/c;->cA:Lcom/android/gallery3d/b/u;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/b/u;->a(Lcom/android/gallery3d/b/l;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v2, "FutureTask"

    const-string v3, "Exception in running a task"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/b/af;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
