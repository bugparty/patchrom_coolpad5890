.class public Lcom/android/gallery3d/a/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cB:Z

.field private rd:Lcom/android/gallery3d/a/l;

.field private re:Lcom/android/gallery3d/a/ae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/a/au;->cB:Z

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/au;Lcom/android/gallery3d/a/l;)Lcom/android/gallery3d/a/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/gallery3d/a/au;->rd:Lcom/android/gallery3d/a/l;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/a/au;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/gallery3d/a/au;->cB:Z

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/a/au;)Lcom/android/gallery3d/a/l;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/a/au;->rd:Lcom/android/gallery3d/a/l;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Lcom/android/gallery3d/a/ae;)V
    .locals 1
    .parameter

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/au;->cB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/gallery3d/a/au;->re:Lcom/android/gallery3d/a/ae;

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m(Lcom/android/gallery3d/b/j;)Lcom/android/gallery3d/a/ae;
    .locals 3
    .parameter

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/a/g;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/g;-><init>(Lcom/android/gallery3d/a/au;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 387
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/au;->cB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/au;->re:Lcom/android/gallery3d/a/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 389
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/a/au;->re:Lcom/android/gallery3d/a/ae;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method
