.class public Lcom/android/gallery3d/ui/h;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final aT:I = 0x80

.field private static final aU:I = 0x40

.field private static final aV:I = -0x555556

.field private static final aW:I = 0x1f4


# instance fields
.field private aX:Lcom/android/gallery3d/ui/ah;

.field private aY:Lcom/android/gallery3d/ui/ah;

.field private aZ:Landroid/graphics/Bitmap;

.field private final ba:Lcom/android/gallery3d/d/b;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 38
    new-instance v0, Lcom/android/gallery3d/d/b;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/d/b;-><init>(FFI)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/h;->ba:Lcom/android/gallery3d/d/b;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 44
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x555556

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 45
    iput-object v0, p0, Lcom/android/gallery3d/ui/h;->mPaint:Landroid/graphics/Paint;

    .line 46
    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    if-nez v1, :cond_0

    .line 74
    iput-object v0, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->invalidate()V

    .line 82
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->aX:Lcom/android/gallery3d/ui/ah;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->aX:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ah;->recycle()V

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    iput-object v1, p0, Lcom/android/gallery3d/ui/h;->aX:Lcom/android/gallery3d/ui/ah;

    .line 78
    iput-object v0, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->ba:Lcom/android/gallery3d/d/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/d/b;->start()V

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v7, 0x3fe0

    .line 49
    const/16 v1, 0x80

    const/16 v2, 0x40

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 51
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 56
    mul-int/lit8 v5, v1, 0x40

    mul-int/lit16 v6, v4, 0x80

    if-le v5, v6, :cond_0

    .line 57
    const/high16 v5, 0x4280

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 58
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 59
    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v4, v7

    double-to-int v1, v4

    rsub-int v1, v1, 0x80

    div-int/lit8 v1, v1, 0x2

    .line 65
    :goto_0
    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v4, p0, Lcom/android/gallery3d/ui/h;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/ei;->b(Landroid/graphics/Bitmap;II)V

    .line 68
    return-object v2

    .line 61
    :cond_0
    const/high16 v5, 0x4300

    int-to-float v1, v1

    div-float v1, v5, v1

    .line 62
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-double v4, v1

    add-double/2addr v4, v7

    double-to-int v1, v4

    rsub-int/lit8 v1, v1, 0x40

    div-int/lit8 v1, v1, 0x2

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 15
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->getHeight()I

    move-result v5

    .line 103
    int-to-float v0, v5

    const/high16 v1, 0x4280

    div-float/2addr v0, v1

    .line 104
    const/high16 v1, 0x4300

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 105
    iget v14, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 106
    div-int v0, v14, v4

    mul-int/2addr v0, v4

    .line 108
    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->aX:Lcom/android/gallery3d/ui/ah;

    if-nez v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->getWidth()I

    move-result v1

    add-int v7, v14, v1

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    sub-int v2, v6, v14

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ah;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 109
    add-int v0, v6, v4

    move v6, v0

    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/h;->ba:Lcom/android/gallery3d/d/b;

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/d/b;->h(J)Z

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/ui/h;->ba:Lcom/android/gallery3d/d/b;

    invoke-virtual {v2}, Lcom/android/gallery3d/d/b;->get()F

    move-result v9

    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->getWidth()I

    move-result v2

    add-int/2addr v2, v14

    :goto_2
    if-ge v0, v2, :cond_3

    .line 117
    iget-object v7, p0, Lcom/android/gallery3d/ui/h;->aX:Lcom/android/gallery3d/ui/ah;

    iget-object v8, p0, Lcom/android/gallery3d/ui/h;->aY:Lcom/android/gallery3d/ui/ah;

    sub-int v10, v0, v14

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move v12, v4

    move v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;Lcom/android/gallery3d/ui/ah;FIIII)V

    .line 116
    add-int/2addr v0, v4

    goto :goto_2

    .line 120
    :cond_3
    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->invalidate()V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->aZ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->aZ:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/h;->c(Landroid/graphics/Bitmap;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/h;->aZ:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/h;->ba:Lcom/android/gallery3d/d/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/d/b;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/h;->aZ:Landroid/graphics/Bitmap;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/h;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    if-ne v0, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/h;->invalidate()V

    goto :goto_0
.end method
