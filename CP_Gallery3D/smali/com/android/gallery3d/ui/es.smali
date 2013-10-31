.class Lcom/android/gallery3d/ui/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field private IX:Lcom/android/gallery3d/b/a;

.field final synthetic sx:Lcom/android/gallery3d/ui/en;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/en;)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 680
    new-instance v0, Lcom/android/gallery3d/ui/cv;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/cv;-><init>(Lcom/android/gallery3d/ui/es;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/es;->IX:Lcom/android/gallery3d/b/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/en;Lcom/android/gallery3d/ui/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/es;-><init>(Lcom/android/gallery3d/ui/en;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/es;->n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 692
    iget-object v0, p0, Lcom/android/gallery3d/ui/es;->IX:Lcom/android/gallery3d/b/a;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 693
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    iget-object v1, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-static {v0}, Lcom/android/gallery3d/ui/en;->d(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->L()Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    .line 697
    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    iget-object v2, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 700
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/en;->d(Lcom/android/gallery3d/ui/ep;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/es;->sx:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/en;->b(Lcom/android/gallery3d/ui/ep;)V

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 704
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
