.class Lcom/android/gallery3d/app/cc;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile bR:Z

.field private bS:Z

.field final synthetic gD:Lcom/android/gallery3d/app/aj;

.field private volatile mActive:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/aj;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 309
    iput-object p1, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 311
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cc;->mActive:Z

    .line 312
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cc;->bR:Z

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/cc;->bS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cc;-><init>(Lcom/android/gallery3d/app/aj;)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cc;->bS:Z

    if-ne v0, p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/cc;->bS:Z

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->m(Lcom/android/gallery3d/app/aj;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized G()V
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cc;->bR:Z

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 323
    move v0, v1

    .line 324
    :goto_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/cc;->mActive:Z

    if-eqz v2, :cond_5

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/cc;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/cc;->bR:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 327
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/cc;->b(Z)V

    .line 328
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 329
    monitor-exit p0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iput-boolean v1, p0, Lcom/android/gallery3d/app/cc;->bR:Z

    .line 333
    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/cc;->b(Z)V

    .line 335
    sget-object v2, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v0}, Lcom/android/gallery3d/app/aj;->n(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v4

    .line 337
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    new-instance v2, Lcom/android/gallery3d/app/bf;

    iget-object v6, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct {v2, v6, v4, v5}, Lcom/android/gallery3d/app/bf;-><init>(Lcom/android/gallery3d/app/aj;J)V

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/aj;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ax;

    .line 339
    if-nez v0, :cond_1

    move v2, v3

    .line 340
    :goto_1
    if-eqz v2, :cond_2

    move v0, v2

    goto :goto_0

    .line 337
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move v2, v1

    .line 339
    goto :goto_1

    .line 341
    :cond_2
    sget-object v6, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    monitor-enter v6

    .line 342
    :try_start_4
    iget-wide v7, v0, Lcom/android/gallery3d/app/ax;->ko:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_3

    .line 343
    iget-object v7, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v7}, Lcom/android/gallery3d/app/aj;->n(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/a/r;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/app/ax;->size:I

    .line 344
    iput-wide v4, v0, Lcom/android/gallery3d/app/ax;->ko:J

    .line 346
    :cond_3
    iget v4, v0, Lcom/android/gallery3d/app/ax;->on:I

    if-lez v4, :cond_4

    .line 347
    iget-object v4, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-static {v4}, Lcom/android/gallery3d/app/aj;->n(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/a/r;

    move-result-object v4

    iget v5, v0, Lcom/android/gallery3d/app/ax;->om:I

    iget v7, v0, Lcom/android/gallery3d/app/ax;->on:I

    invoke-virtual {v4, v5, v7}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/ax;->oo:Ljava/util/ArrayList;

    .line 349
    :cond_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 350
    iget-object v4, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    new-instance v5, Lcom/android/gallery3d/app/as;

    iget-object v6, p0, Lcom/android/gallery3d/app/cc;->gD:Lcom/android/gallery3d/app/aj;

    invoke-direct {v5, v6, v0}, Lcom/android/gallery3d/app/as;-><init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/ax;)V

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/aj;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move v0, v2

    .line 351
    goto/16 :goto_0

    .line 349
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 352
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/cc;->b(Z)V

    .line 353
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 361
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cc;->mActive:Z

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
