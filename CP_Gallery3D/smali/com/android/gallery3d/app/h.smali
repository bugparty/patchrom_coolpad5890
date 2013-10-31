.class Lcom/android/gallery3d/app/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile bR:Z

.field private volatile bS:Z

.field final synthetic bT:Lcom/android/gallery3d/app/dq;

.field private volatile mActive:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/dq;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 323
    iput-object p1, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 324
    iput-boolean v0, p0, Lcom/android/gallery3d/app/h;->mActive:Z

    .line 325
    iput-boolean v0, p0, Lcom/android/gallery3d/app/h;->bR:Z

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/h;->bS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/h;-><init>(Lcom/android/gallery3d/app/dq;)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/gallery3d/app/h;->bS:Z

    if-ne v0, p1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/h;->bS:Z

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->n(Lcom/android/gallery3d/app/dq;)Landroid/os/Handler;

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
    .line 384
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/h;->bR:Z

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 336
    move v0, v1

    .line 337
    :goto_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/h;->mActive:Z

    if-eqz v2, :cond_7

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/h;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/h;->bR:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 340
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/h;->b(Z)V

    .line 341
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 342
    monitor-exit p0

    goto :goto_0

    .line 344
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

    .line 345
    iput-boolean v1, p0, Lcom/android/gallery3d/app/h;->bR:Z

    .line 346
    invoke-direct {p0, v4}, Lcom/android/gallery3d/app/h;->b(Z)V

    .line 349
    sget-object v2, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->o(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v5

    .line 351
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    new-instance v2, Lcom/android/gallery3d/app/ap;

    iget-object v3, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct {v2, v3, v5, v6}, Lcom/android/gallery3d/app/ap;-><init>(Lcom/android/gallery3d/app/dq;J)V

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/am;

    .line 353
    if-nez v0, :cond_1

    move v2, v4

    .line 354
    :goto_1
    if-eqz v2, :cond_2

    move v0, v2

    goto :goto_0

    .line 351
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move v2, v1

    .line 353
    goto :goto_1

    .line 356
    :cond_2
    sget-object v7, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    monitor-enter v7

    .line 357
    :try_start_4
    iget-wide v8, v0, Lcom/android/gallery3d/app/am;->ko:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_3

    .line 358
    iput-wide v5, v0, Lcom/android/gallery3d/app/am;->ko:J

    .line 359
    iget-object v3, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v3}, Lcom/android/gallery3d/app/dq;->o(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/a/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v3

    iput v3, v0, Lcom/android/gallery3d/app/am;->size:I

    .line 365
    iget v3, v0, Lcom/android/gallery3d/app/am;->index:I

    iget v5, v0, Lcom/android/gallery3d/app/am;->size:I

    if-lt v3, v5, :cond_3

    .line 366
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/gallery3d/app/am;->index:I

    .line 370
    :cond_3
    iget v3, v0, Lcom/android/gallery3d/app/am;->index:I

    if-eq v3, v10, :cond_5

    .line 371
    iget-object v3, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v3}, Lcom/android/gallery3d/app/dq;->o(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/a/r;

    move-result-object v3

    iget v5, v0, Lcom/android/gallery3d/app/am;->index:I

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    iput-object v3, v0, Lcom/android/gallery3d/app/am;->kp:Lcom/android/gallery3d/a/r;

    .line 372
    iget-object v3, v0, Lcom/android/gallery3d/app/am;->kp:Lcom/android/gallery3d/a/r;

    if-nez v3, :cond_4

    monitor-exit v7

    move v0, v2

    goto/16 :goto_0

    .line 373
    :cond_4
    iget-object v3, v0, Lcom/android/gallery3d/app/am;->kp:Lcom/android/gallery3d/a/r;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aO()Lcom/android/gallery3d/a/ax;

    move-result-object v5

    .line 374
    if-nez v5, :cond_6

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/gallery3d/a/ax;

    :goto_2
    iput-object v3, v0, Lcom/android/gallery3d/app/am;->kq:[Lcom/android/gallery3d/a/ax;

    .line 377
    :cond_5
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 378
    iget-object v3, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    new-instance v5, Lcom/android/gallery3d/app/co;

    iget-object v6, p0, Lcom/android/gallery3d/app/h;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct {v5, v6, v0}, Lcom/android/gallery3d/app/co;-><init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/am;)V

    invoke-static {v3, v5}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/dq;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move v0, v2

    .line 379
    goto/16 :goto_0

    .line 374
    :cond_6
    const/4 v3, 0x1

    :try_start_5
    new-array v3, v3, [Lcom/android/gallery3d/a/ax;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    goto :goto_2

    .line 377
    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 380
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/h;->b(Z)V

    .line 381
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/h;->mActive:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
