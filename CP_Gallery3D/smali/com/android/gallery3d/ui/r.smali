.class Lcom/android/gallery3d/ui/r;
.super Lcom/android/gallery3d/ui/ah;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/b;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/ui/ah;-><init>(Lcom/android/gallery3d/ui/b;II)V

    .line 29
    return-void
.end method

.method public static e(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/r;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-array v0, v3, [I

    .line 33
    invoke-interface {p0}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 34
    invoke-interface {v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 35
    new-instance v1, Lcom/android/gallery3d/ui/r;

    aget v0, v0, v2

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/r;-><init>(Lcom/android/gallery3d/ui/b;I)V

    return-object v1
.end method


# virtual methods
.method protected f(Lcom/android/gallery3d/ui/b;)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot bind to different canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
