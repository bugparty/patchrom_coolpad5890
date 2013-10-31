.class abstract Lcom/android/gallery3d/ui/ao;
.super Lcom/android/gallery3d/ui/an;
.source "SourceFile"


# instance fields
.field private final lX:Landroid/graphics/Bitmap$Config;

.field protected mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;-><init>()V

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ao;->lX:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/ao;->setSize(II)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ao;->setOpaque(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method protected cp()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/ao;->lX:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ao;->mCanvas:Landroid/graphics/Canvas;

    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/ui/ao;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/ao;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 41
    return-object v0
.end method

.method protected h(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/android/gallery3d/ui/ao;->cf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    return-void
.end method
