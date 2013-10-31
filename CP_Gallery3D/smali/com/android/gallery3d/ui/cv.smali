.class Lcom/android/gallery3d/ui/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/a;


# instance fields
.field final synthetic za:Lcom/android/gallery3d/ui/es;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/es;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/gallery3d/ui/cv;->za:Lcom/android/gallery3d/ui/es;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/ui/cv;->za:Lcom/android/gallery3d/ui/es;

    iget-object v1, v0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    monitor-enter v1

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cv;->za:Lcom/android/gallery3d/ui/es;

    iget-object v0, v0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 685
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
