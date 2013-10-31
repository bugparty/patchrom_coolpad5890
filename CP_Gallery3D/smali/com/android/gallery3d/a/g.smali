.class Lcom/android/gallery3d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/a;


# instance fields
.field final synthetic bW:Lcom/android/gallery3d/a/au;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/au;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    invoke-static {v0}, Lcom/android/gallery3d/a/au;->c(Lcom/android/gallery3d/a/au;)Lcom/android/gallery3d/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/l;->a(Lcom/android/gallery3d/a/au;)V

    .line 381
    iget-object v1, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/gallery3d/a/au;->a(Lcom/android/gallery3d/a/au;Z)Z

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/a/g;->bW:Lcom/android/gallery3d/a/au;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
