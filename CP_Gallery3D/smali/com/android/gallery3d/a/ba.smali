.class Lcom/android/gallery3d/a/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/da;
.implements Lcom/android/gallery3d/b/l;


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery.MultiSetSync"


# instance fields
.field private cB:Z

.field private mResult:I

.field private final sG:Lcom/android/gallery3d/a/da;

.field private final sH:[Lcom/android/gallery3d/b/l;

.field private sI:I

.field final synthetic sJ:Lcom/android/gallery3d/a/r;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/r;[Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/da;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-object p1, p0, Lcom/android/gallery3d/a/ba;->sJ:Lcom/android/gallery3d/a/r;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-boolean v0, p0, Lcom/android/gallery3d/a/ba;->cB:Z

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/a/ba;->mResult:I

    .line 278
    iput-object p3, p0, Lcom/android/gallery3d/a/ba;->sG:Lcom/android/gallery3d/a/da;

    .line 279
    array-length v1, p2

    iput v1, p0, Lcom/android/gallery3d/a/ba;->sI:I

    .line 280
    array-length v1, p2

    new-array v1, v1, [Lcom/android/gallery3d/b/l;

    iput-object v1, p0, Lcom/android/gallery3d/a/ba;->sH:[Lcom/android/gallery3d/b/l;

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/gallery3d/a/ba;->sH:[Lcom/android/gallery3d/b/l;

    aget-object v3, p2, v0

    invoke-virtual {v3, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;

    move-result-object v3

    aput-object v3, v2, v0

    .line 285
    const-string v2, "Gallery.MultiSetSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  request sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/a/bx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    monitor-exit p0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized N()V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ba;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    :try_start_1
    const-string v0, "Gallery.MultiSetSync"

    const-string v1, "waitDone() interrupted"

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :cond_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/android/gallery3d/a/r;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 326
    const/4 v0, 0x0

    .line 327
    monitor-enter p0

    .line 328
    if-ne p2, v1, :cond_0

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/android/gallery3d/a/ba;->mResult:I

    .line 329
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/a/ba;->sI:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/a/ba;->sI:I

    .line 330
    iget v1, p0, Lcom/android/gallery3d/a/ba;->sI:I

    if-nez v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/a/ba;->sG:Lcom/android/gallery3d/a/da;

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 334
    :cond_1
    const-string v1, "Gallery.MultiSetSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSyncDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #pending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/a/ba;->sI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/a/bx;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/a/ba;->sJ:Lcom/android/gallery3d/a/r;

    iget v2, p0, Lcom/android/gallery3d/a/ba;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/a/da;->a(Lcom/android/gallery3d/a/r;I)V

    .line 338
    :cond_2
    return-void

    .line 336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/ba;->cB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/a/ba;->cB:Z

    .line 294
    iget-object v1, p0, Lcom/android/gallery3d/a/ba;->sH:[Lcom/android/gallery3d/b/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/android/gallery3d/b/l;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/a/ba;->mResult:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/a/ba;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dK()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ba;->N()V

    .line 311
    iget v0, p0, Lcom/android/gallery3d/a/ba;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ba;->dK()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/ba;->cB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/a/ba;->sI:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
