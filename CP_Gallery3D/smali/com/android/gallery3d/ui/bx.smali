.class Lcom/android/gallery3d/ui/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic gM:Lcom/android/gallery3d/ui/bk;

.field private final mItems:Ljava/util/ArrayList;

.field private final uc:I

.field private final ud:Lcom/android/gallery3d/ui/cg;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/bk;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/cg;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p2, p0, Lcom/android/gallery3d/ui/bx;->uc:I

    .line 473
    iput-object p3, p0, Lcom/android/gallery3d/ui/bx;->mItems:Ljava/util/ArrayList;

    .line 474
    iput-object p4, p0, Lcom/android/gallery3d/ui/bx;->ud:Lcom/android/gallery3d/ui/cg;

    .line 475
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/bx;->n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;
    .locals 8
    .parameter

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    invoke-static {v1}, Lcom/android/gallery3d/ui/bk;->d(Lcom/android/gallery3d/ui/bk;)Lcom/android/gallery3d/app/bm;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    .line 480
    const/4 v1, 0x1

    .line 482
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/bx;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 483
    const-string v5, "MenuExecutor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mItems id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 485
    const/4 v0, 0x3

    .line 497
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    iget-object v2, p0, Lcom/android/gallery3d/ui/bx;->ud:Lcom/android/gallery3d/ui/cg;

    invoke-static {v1, v0, v2}, Lcom/android/gallery3d/ui/bk;->b(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V

    .line 499
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    iget v6, p0, Lcom/android/gallery3d/ui/bx;->uc:I

    invoke-static {v5, v3, p1, v6, v0}, Lcom/android/gallery3d/ui/bk;->a(Lcom/android/gallery3d/ui/bk;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/b/j;ILcom/android/gallery3d/a/dd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    const/4 v1, 0x2

    .line 491
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    add-int/lit8 v0, v2, 0x1

    iget-object v6, p0, Lcom/android/gallery3d/ui/bx;->ud:Lcom/android/gallery3d/ui/cg;

    invoke-static {v5, v2, v6}, Lcom/android/gallery3d/ui/bk;->a(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    :try_start_2
    const-string v2, "MenuExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to execute operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/bx;->uc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    iget-object v2, p0, Lcom/android/gallery3d/ui/bx;->ud:Lcom/android/gallery3d/ui/cg;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/bk;->b(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/bx;->gM:Lcom/android/gallery3d/ui/bk;

    iget-object v3, p0, Lcom/android/gallery3d/ui/bx;->ud:Lcom/android/gallery3d/ui/cg;

    invoke-static {v2, v1, v3}, Lcom/android/gallery3d/ui/bk;->b(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
