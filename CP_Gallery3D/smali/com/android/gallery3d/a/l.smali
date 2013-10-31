.class Lcom/android/gallery3d/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field private ct:Ljava/util/HashSet;

.field final synthetic cu:Lcom/android/gallery3d/a/as;

.field private final mUrl:Ljava/lang/String;

.field private n:Lcom/android/gallery3d/b/l;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/as;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    .line 297
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    .line 298
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/l;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/gallery3d/a/l;->n:Lcom/android/gallery3d/b/l;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/au;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v0}, Lcom/android/gallery3d/a/as;->c(Lcom/android/gallery3d/a/as;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->n:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v0}, Lcom/android/gallery3d/a/as;->c(Lcom/android/gallery3d/a/as;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    monitor-exit v1

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 7
    .parameter

    .prologue
    .line 317
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 318
    const-wide/16 v1, 0x0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    iget-object v2, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/a/as;->a(Lcom/android/gallery3d/a/as;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v1

    .line 323
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 342
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v3}, Lcom/android/gallery3d/a/as;->c(Lcom/android/gallery3d/a/as;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 329
    const/4 v3, 0x0

    .line 330
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v5}, Lcom/android/gallery3d/a/as;->d(Lcom/android/gallery3d/a/as;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-eqz v0, :cond_4

    .line 332
    :try_start_1
    new-instance v3, Lcom/android/gallery3d/a/ae;

    iget-object v6, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-direct {v3, v6, v1, v2, v0}, Lcom/android/gallery3d/a/ae;-><init>(Lcom/android/gallery3d/a/as;JLjava/io/File;)V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v0}, Lcom/android/gallery3d/a/as;->d(Lcom/android/gallery3d/a/as;)Lcom/android/gallery3d/common/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    move-object v1, v3

    .line 335
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/au;

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/au;->a(Lcom/android/gallery3d/a/ae;)V

    goto :goto_3

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 333
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 335
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v0}, Lcom/android/gallery3d/a/as;->c(Lcom/android/gallery3d/a/as;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/as;->a(Lcom/android/gallery3d/a/as;I)V

    .line 341
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_2
.end method

.method public b(Lcom/android/gallery3d/b/j;)Ljava/io/File;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    const/4 v8, 0x0

    .line 346
    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 349
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v0, "cache"

    const-string v3, ".tmp"

    iget-object v4, p0, Lcom/android/gallery3d/a/l;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v4}, Lcom/android/gallery3d/a/as;->a(Lcom/android/gallery3d/a/as;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    const/4 v3, 0x2

    :try_start_1
    invoke-interface {p1, v3}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 353
    invoke-static {p1, v2, v0}, Lcom/android/gallery3d/a/aq;->a(Lcom/android/gallery3d/b/j;Ljava/net/URL;Ljava/io/File;)Z

    move-result v2

    .line 354
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Lcom/android/gallery3d/b/j;->af(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    if-eqz v2, :cond_0

    .line 359
    invoke-interface {p1, v8}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 362
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-interface {p1, v8}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 361
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    move-object v0, v1

    .line 362
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 357
    :goto_2
    :try_start_2
    const-string v3, "DownloadCache"

    const-string v4, "fail to download %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/gallery3d/a/l;->mUrl:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/a/bx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    invoke-interface {p1, v8}, Lcom/android/gallery3d/b/j;->af(I)Z

    move-object v0, v2

    .line 360
    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    invoke-interface {p1, v8}, Lcom/android/gallery3d/b/j;->af(I)Z

    throw v0

    .line 356
    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2
.end method

.method public b(Lcom/android/gallery3d/a/au;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    invoke-static {p1, p0}, Lcom/android/gallery3d/a/au;->a(Lcom/android/gallery3d/a/au;Lcom/android/gallery3d/a/l;)Lcom/android/gallery3d/a/l;

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/a/l;->ct:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/l;->b(Lcom/android/gallery3d/b/j;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
