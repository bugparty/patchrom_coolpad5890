.class Lcom/android/gallery3d/app/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;


# instance fields
.field final synthetic He:Lcom/android/gallery3d/app/cd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/app/ef;->He:Lcom/android/gallery3d/app/cd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 88
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 89
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 92
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    const/high16 v4, 0x4480

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/gallery3d/app/ef;->He:Lcom/android/gallery3d/app/cd;

    invoke-static {v2}, Lcom/android/gallery3d/app/cd;->b(Lcom/android/gallery3d/app/cd;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/ef;->He:Lcom/android/gallery3d/app/cd;

    invoke-static {v3}, Lcom/android/gallery3d/app/cd;->b(Lcom/android/gallery3d/app/cd;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/android/gallery3d/app/bu;

    invoke-direct {v5, v0, v1}, Lcom/android/gallery3d/app/bu;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
