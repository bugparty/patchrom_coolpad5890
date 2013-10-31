.class Lcom/android/gallery3d/app/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic or:Lcom/android/gallery3d/app/eg;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/eg;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/eg;Lcom/android/gallery3d/app/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dc;-><init>(Lcom/android/gallery3d/app/eg;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/dc;->n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    monitor-enter v1

    .line 101
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->a(Lcom/android/gallery3d/app/eg;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->b(Lcom/android/gallery3d/app/eg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->c(Lcom/android/gallery3d/app/eg;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    goto :goto_1

    .line 110
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->a(Lcom/android/gallery3d/app/eg;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0, v6}, Lcom/android/gallery3d/app/eg;->a(Lcom/android/gallery3d/app/eg;Z)Z

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->d(Lcom/android/gallery3d/app/eg;)Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->e(Lcom/android/gallery3d/app/eg;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    monitor-enter v1

    .line 118
    :try_start_4
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->c(Lcom/android/gallery3d/app/eg;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    iget-object v2, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v2}, Lcom/android/gallery3d/app/eg;->f(Lcom/android/gallery3d/app/eg;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/eg;->a(Lcom/android/gallery3d/app/eg;I)I

    .line 120
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 124
    :cond_3
    if-nez v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    monitor-enter v1

    .line 126
    :try_start_5
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->g(Lcom/android/gallery3d/app/eg;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/eg;->b(Lcom/android/gallery3d/app/eg;Z)Z

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 132
    :cond_5
    invoke-virtual {v1, v7}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 136
    if-eqz v0, :cond_7

    .line 137
    iget-object v2, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    monitor-enter v2

    .line 138
    :try_start_6
    iget-object v3, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v3}, Lcom/android/gallery3d/app/eg;->c(Lcom/android/gallery3d/app/eg;)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/ck;

    iget-object v5, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v5}, Lcom/android/gallery3d/app/eg;->h(Lcom/android/gallery3d/app/eg;)I

    move-result v5

    invoke-direct {v4, v1, v5, v0}, Lcom/android/gallery3d/app/ck;-><init>(Lcom/android/gallery3d/a/ax;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->c(Lcom/android/gallery3d/app/eg;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    :cond_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/dc;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->i(Lcom/android/gallery3d/app/eg;)I

    goto/16 :goto_0

    .line 143
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
