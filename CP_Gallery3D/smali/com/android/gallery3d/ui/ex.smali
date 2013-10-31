.class public Lcom/android/gallery3d/ui/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/aq;


# instance fields
.field private final Jx:Landroid/graphics/Bitmap;

.field private final Jy:[Landroid/graphics/Bitmap;

.field private final fx:I

.field private final fy:I

.field private final lX:Landroid/graphics/Bitmap$Config;

.field private mRecycled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ex;->mRecycled:Z

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ex;->fx:I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ex;->fy:I

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 43
    :cond_0
    const/high16 v0, 0x3f00

    invoke-static {p1, v0, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ex;->Jx:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ex;->Jy:[Landroid/graphics/Bitmap;

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ex;->lX:Landroid/graphics/Bitmap$Config;

    .line 50
    return-void
.end method


# virtual methods
.method public b(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/ex;->lX:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v2, p0, Lcom/android/gallery3d/ui/ex;->Jy:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    shr-int v3, p2, p1

    neg-int v3, v3

    int-to-float v3, v3

    shr-int v4, p3, p1

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/ex;->Jx:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/gallery3d/ui/ex;->fy:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/ui/ex;->fx:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/ex;->Jy:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ex;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ex;->mRecycled:Z

    .line 78
    iget-object v1, p0, Lcom/android/gallery3d/ui/ex;->Jy:[Landroid/graphics/Bitmap;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 79
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ex;->Jx:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->recycleSilently(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
