.class public Lcom/android/gallery3d/a/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iC:Lcom/android/gallery3d/a/r;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/a/cb;->DZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/a/cb;->iC:Lcom/android/gallery3d/a/r;

    .line 33
    invoke-interface {p3}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/gallery3d/a/ao;->a(Landroid/net/Uri;Lcom/android/gallery3d/a/cb;)V

    .line 34
    return-void
.end method


# virtual methods
.method public fP()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/cb;->DZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    return-void
.end method

.method public fg()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/cb;->onChange(Z)V

    .line 43
    return-void
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/a/cb;->DZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/a/cb;->DZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/a/cb;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aS()V

    .line 53
    :cond_0
    return-void
.end method
