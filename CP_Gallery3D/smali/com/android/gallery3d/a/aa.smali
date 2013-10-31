.class final Lcom/android/gallery3d/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field ig:Ljava/util/ArrayList;

.field ik:Landroid/media/MediaScannerConnection;

.field il:Z

.field mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/aa;->ig:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/aa;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/aa;->ik:Landroid/media/MediaScannerConnection;

    .line 37
    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/a/aa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/a/aa;->il:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ik:Landroid/media/MediaScannerConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    monitor-exit v1

    .line 48
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ik:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMediaScannerConnected()V
    .locals 5

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/a/aa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/a/aa;->il:Z

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/android/gallery3d/a/aa;->ik:Landroid/media/MediaScannerConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/a/aa;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    return-void
.end method
