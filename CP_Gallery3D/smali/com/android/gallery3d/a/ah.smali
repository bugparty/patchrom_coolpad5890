.class Lcom/android/gallery3d/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/a;


# instance fields
.field final synthetic nI:Lcom/android/gallery3d/a/p;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/a/ah;->nI:Lcom/android/gallery3d/a/p;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
