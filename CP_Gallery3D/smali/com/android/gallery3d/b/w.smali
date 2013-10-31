.class Lcom/android/gallery3d/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;
.implements Lcom/android/gallery3d/b/l;


# instance fields
.field private Cs:Lcom/android/gallery3d/b/ab;

.field private Ct:Lcom/android/gallery3d/b/l;

.field private cA:Lcom/android/gallery3d/b/u;

.field private cD:Ljava/lang/Object;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/b/w;->mState:I

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/b/w;->Cs:Lcom/android/gallery3d/b/ab;

    .line 50
    iput-object p2, p0, Lcom/android/gallery3d/b/w;->cA:Lcom/android/gallery3d/b/u;

    .line 51
    return-void
.end method


# virtual methods
.method public N()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/b/w;->get()Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 105
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/b/w;->mState:I

    if-ne v0, v6, :cond_0

    monitor-exit p0

    .line 127
    :goto_0
    return-object v1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/w;->Cs:Lcom/android/gallery3d/b/ab;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 117
    :goto_1
    monitor-enter p0

    .line 118
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/b/w;->mState:I

    if-ne v2, v6, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 109
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    const-string v3, "JobLimiter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error executing job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/android/gallery3d/b/af;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    .line 119
    :cond_1
    const/4 v1, 0x1

    :try_start_4
    iput v1, p0, Lcom/android/gallery3d/b/w;->mState:I

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/b/w;->cA:Lcom/android/gallery3d/b/u;

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/b/w;->cA:Lcom/android/gallery3d/b/u;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/b/w;->Cs:Lcom/android/gallery3d/b/ab;

    .line 123
    iput-object v0, p0, Lcom/android/gallery3d/b/w;->cD:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Lcom/android/gallery3d/b/u;->a(Lcom/android/gallery3d/b/l;)V

    :cond_2
    move-object v1, v0

    .line 127
    goto :goto_0
.end method

.method public declared-synchronized c(Lcom/android/gallery3d/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/b/w;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/gallery3d/b/w;->Ct:Lcom/android/gallery3d/b/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/b/w;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/b/w;->cA:Lcom/android/gallery3d/b/u;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/b/w;->Cs:Lcom/android/gallery3d/b/ab;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/b/w;->cA:Lcom/android/gallery3d/b/u;

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/b/w;->Ct:Lcom/android/gallery3d/b/l;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/b/w;->Ct:Lcom/android/gallery3d/b/l;

    invoke-interface {v1}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/b/w;->Ct:Lcom/android/gallery3d/b/l;

    .line 71
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/b/w;->mState:I

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/b/w;->cD:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/gallery3d/b/u;->a(Lcom/android/gallery3d/b/l;)V

    .line 76
    :cond_1
    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/b/w;->mState:I

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/b/w;->cD:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/b/w;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public isDone()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/gallery3d/b/w;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
