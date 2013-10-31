.class Lcom/android/gallery3d/ui/g;
.super Lcom/android/gallery3d/d/d;
.source "SourceFile"


# instance fields
.field private aJ:I

.field private aK:I

.field private aL:F

.field private aM:I

.field private aN:I

.field private aO:F

.field private aP:I

.field private aQ:I

.field private aR:F

.field final synthetic aS:Lcom/android/gallery3d/ui/s;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/s;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-direct {p0}, Lcom/android/gallery3d/d/d;-><init>()V

    .line 291
    const/16 v0, 0x4e2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/g;->setDuration(I)V

    .line 292
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/g;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 293
    return-void
.end method

.method private d(Landroid/graphics/RectF;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 384
    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 386
    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 388
    const v3, 0x3f19999a

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v5}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float v4, v0, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v6}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3, v2, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 391
    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 393
    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 396
    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 397
    mul-float/2addr v0, v7

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 398
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v4}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 400
    iget-object v4, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v4}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_2

    .line 405
    mul-float/2addr v1, v7

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 406
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v4}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 408
    iget-object v4, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v4}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 412
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/g;->aP:I

    .line 413
    iput v1, p0, Lcom/android/gallery3d/ui/g;->aQ:I

    .line 414
    iput v2, p0, Lcom/android/gallery3d/ui/g;->aR:F

    .line 416
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method


# virtual methods
.method public B()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aK:I

    return v0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 342
    iget v2, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    .line 343
    iget v3, p0, Lcom/android/gallery3d/ui/g;->aK:I

    .line 344
    iget v4, p0, Lcom/android/gallery3d/ui/g;->aL:F

    .line 345
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v6}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v5, v0

    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v7}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v8}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v2, v2

    sub-float v2, v7, v2

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v7}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p2, v5, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    return-object p2
.end method

.method protected b(F)V
    .locals 4
    .parameter

    .prologue
    .line 355
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aM:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/g;->aP:I

    iget v2, p0, Lcom/android/gallery3d/ui/g;->aM:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    .line 356
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/g;->aQ:I

    iget v2, p0, Lcom/android/gallery3d/ui/g;->aN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aK:I

    .line 357
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aO:F

    iget v1, p0, Lcom/android/gallery3d/ui/g;->aR:F

    iget v2, p0, Lcom/android/gallery3d/ui/g;->aO:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    .line 359
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/g;->aP:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 360
    iget v1, p0, Lcom/android/gallery3d/ui/g;->aK:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/g;->aQ:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    .line 361
    iget v2, p0, Lcom/android/gallery3d/ui/g;->aL:F

    iget v3, p0, Lcom/android/gallery3d/ui/g;->aR:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    .line 362
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/g;->fk()V

    .line 368
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 332
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    .line 333
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/s;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 335
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/s;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float v0, v1, v0

    iget v1, p0, Lcom/android/gallery3d/ui/g;->aK:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0, v3, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 337
    return-void
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4280

    const v7, 0x3f4ccccd

    const v6, 0x3ecccccd

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/g;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->getWidth()I

    move-result v1

    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/s;->getHeight()I

    move-result v2

    .line 308
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 309
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 311
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_0

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    cmpl-float v3, v4, v6

    if-ltz v3, :cond_0

    cmpg-float v3, v4, v7

    if-gez v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_0

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-int/lit8 v1, v1, -0x40

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v1, v2, -0x40

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aM:I

    .line 317
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aK:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aN:I

    .line 318
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aO:F

    .line 319
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/g;->d(Landroid/graphics/RectF;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/g;->start()V

    goto :goto_0
.end method

.method public c(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/g;->d(Landroid/graphics/RectF;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/g;->fk()V

    .line 326
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aP:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aM:I

    .line 327
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aQ:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aK:I

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aN:I

    .line 328
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aR:F

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aO:F

    .line 329
    return-void
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    return v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aJ:I

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aK:I

    .line 298
    const/high16 v0, 0x4000

    iget-object v1, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/s;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/s;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/g;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/g;->aL:F

    .line 301
    return-void
.end method
