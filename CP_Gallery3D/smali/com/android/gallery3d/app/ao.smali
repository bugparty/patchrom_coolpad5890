.class Lcom/android/gallery3d/app/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field private ah:Lcom/android/gallery3d/a/ax;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lcom/android/gallery3d/app/ao;->ah:Lcom/android/gallery3d/a/ax;

    .line 674
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 678
    iget-object v0, p0, Lcom/android/gallery3d/app/ao;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 679
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 684
    :cond_0
    :goto_0
    return-object v0

    .line 680
    :cond_1
    if-eqz v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/gallery3d/app/ao;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ao;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->dE()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ao;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
