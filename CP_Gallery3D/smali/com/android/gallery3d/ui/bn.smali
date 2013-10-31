.class Lcom/android/gallery3d/ui/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ey;


# instance fields
.field sw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic sx:Lcom/android/gallery3d/ui/en;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/en;)V
    .locals 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/gallery3d/ui/bn;->sx:Lcom/android/gallery3d/ui/en;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bn;->sw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/en;Lcom/android/gallery3d/ui/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/bn;-><init>(Lcom/android/gallery3d/ui/en;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/eh;Lcom/android/gallery3d/ui/b;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 495
    move v0, v1

    .line 499
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/bn;->sx:Lcom/android/gallery3d/ui/en;

    monitor-enter v3

    .line 500
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/bn;->sx:Lcom/android/gallery3d/ui/en;

    invoke-static {v4}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/m;->L()Lcom/android/gallery3d/ui/ep;

    move-result-object v4

    .line 501
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    if-eqz v4, :cond_1

    if-gtz v0, :cond_2

    .line 514
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/bn;->sw:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    if-eqz v4, :cond_5

    :goto_2
    return v1

    .line 501
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 503
    :cond_2
    invoke-virtual {v4, p2}, Lcom/android/gallery3d/ui/ep;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 506
    :try_start_2
    iget v3, v4, Lcom/android/gallery3d/ui/ep;->IA:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    :goto_4
    invoke-virtual {v4, p2}, Lcom/android/gallery3d/ui/ep;->j(Lcom/android/gallery3d/ui/b;)V

    .line 511
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 506
    goto :goto_3

    .line 507
    :catch_0
    move-exception v3

    .line 508
    const-string v5, "TileImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move v0, v2

    .line 514
    goto :goto_1

    :cond_5
    move v1, v2

    .line 515
    goto :goto_2
.end method
