.class Lcom/android/gallery3d/app/cb;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile bR:Z

.field private bS:Z

.field private volatile mActive:Z

.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/c;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 936
    iput-object p1, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 937
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cb;->mActive:Z

    .line 938
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cb;->bR:Z

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/cb;->bS:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cb;-><init>(Lcom/android/gallery3d/app/c;)V

    return-void
.end method

.method private a(Lcom/android/gallery3d/app/be;)Lcom/android/gallery3d/a/ax;
    .locals 3
    .parameter

    .prologue
    .line 997
    iget-object v0, p1, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    .line 998
    iget v1, p1, Lcom/android/gallery3d/app/be;->iW:I

    iget v2, p1, Lcom/android/gallery3d/app/be;->pO:I

    sub-int/2addr v1, v2

    .line 999
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    goto :goto_0
.end method

.method private b(Lcom/android/gallery3d/app/be;)I
    .locals 5
    .parameter

    .prologue
    .line 1003
    iget-object v0, p1, Lcom/android/gallery3d/app/be;->pN:Lcom/android/gallery3d/a/dd;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/app/be;->iW:I

    .line 1022
    :goto_0
    return v0

    .line 1004
    :cond_0
    iget-object v2, p1, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    .line 1008
    if-eqz v2, :cond_2

    .line 1009
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1010
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    iget-object v4, p1, Lcom/android/gallery3d/app/be;->pN:Lcom/android/gallery3d/a/dd;

    if-ne v0, v4, :cond_1

    .line 1012
    iget v0, p1, Lcom/android/gallery3d/app/be;->pO:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 1009
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    const-string v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findCurrentMediaItem  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->t(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    iget-object v1, p1, Lcom/android/gallery3d/app/be;->pN:Lcom/android/gallery3d/a/dd;

    iget v2, p1, Lcom/android/gallery3d/app/be;->iW:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/dd;I)I

    move-result v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cb;->bS:Z

    if-ne v0, p1, :cond_0

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/cb;->bS:Z

    .line 945
    iget-object v0, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;

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
    .line 987
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cb;->bR:Z

    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    monitor-exit p0

    return-void

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 950
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cb;->mActive:Z

    if-eqz v0, :cond_5

    .line 951
    monitor-enter p0

    .line 954
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cb;->bR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/cb;->mActive:Z

    if-eqz v0, :cond_0

    .line 961
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/cb;->b(Z)V

    .line 962
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 963
    monitor-exit p0

    goto :goto_0

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 955
    :catch_0
    move-exception v0

    .line 957
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 965
    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    iput-boolean v6, p0, Lcom/android/gallery3d/app/cb;->bR:Z

    .line 967
    iget-object v0, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    new-instance v1, Lcom/android/gallery3d/app/cz;

    iget-object v2, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/app/cz;-><init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/be;

    .line 968
    sget-object v1, Lcom/android/gallery3d/a/ao;->oX:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/cb;->b(Z)V

    .line 970
    iget-object v2, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->t(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v2

    .line 971
    iget-wide v4, v0, Lcom/android/gallery3d/app/be;->ko:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 972
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/gallery3d/app/be;->pM:Z

    .line 973
    iget-object v2, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->t(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v2

    iput v2, v0, Lcom/android/gallery3d/app/be;->size:I

    .line 975
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/be;->pM:Z

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 981
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 976
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v2}, Lcom/android/gallery3d/app/c;->t(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    iget v3, v0, Lcom/android/gallery3d/app/be;->pO:I

    iget v4, v0, Lcom/android/gallery3d/app/be;->pP:I

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/gallery3d/app/be;->oo:Ljava/util/ArrayList;

    .line 977
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/cb;->a(Lcom/android/gallery3d/app/be;)Lcom/android/gallery3d/a/ax;

    move-result-object v2

    .line 978
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    iget-object v3, v0, Lcom/android/gallery3d/app/be;->pN:Lcom/android/gallery3d/a/dd;

    if-eq v2, v3, :cond_4

    .line 979
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/cb;->b(Lcom/android/gallery3d/app/be;)I

    move-result v2

    iput v2, v0, Lcom/android/gallery3d/app/be;->iW:I

    .line 981
    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 982
    iget-object v1, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    new-instance v2, Lcom/android/gallery3d/app/ce;

    iget-object v3, p0, Lcom/android/gallery3d/app/cb;->o:Lcom/android/gallery3d/app/c;

    invoke-direct {v2, v3, v0}, Lcom/android/gallery3d/app/ce;-><init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/be;)V

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/c;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 984
    :cond_5
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 992
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cb;->mActive:Z

    .line 993
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    monitor-exit p0

    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
