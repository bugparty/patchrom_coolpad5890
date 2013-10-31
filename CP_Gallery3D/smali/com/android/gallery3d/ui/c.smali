.class Lcom/android/gallery3d/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ak:Lcom/android/gallery3d/ui/GLRootView;

.field private mActive:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/c;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/bs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/c;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/c;->mActive:Z

    if-eqz v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/c;->mActive:Z

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 426
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/c;->mActive:Z

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->b(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 441
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 429
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ey;

    .line 430
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    iget-object v1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->c(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->d(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/cp;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/ey;->a(Lcom/android/gallery3d/ui/eh;Lcom/android/gallery3d/ui/b;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->c(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->c(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 438
    :try_start_3
    iget-object v2, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/c;->enable()V

    .line 440
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 435
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/c;->ak:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->c(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
