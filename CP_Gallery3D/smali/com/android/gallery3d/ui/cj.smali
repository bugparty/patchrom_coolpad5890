.class Lcom/android/gallery3d/ui/cj;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic aS:Lcom/android/gallery3d/ui/s;

.field private dw:Landroid/graphics/RectF;

.field private xj:Landroid/graphics/RectF;

.field private xk:Landroid/graphics/PointF;

.field private xl:Lcom/android/gallery3d/ui/bm;

.field private xm:I

.field private xn:F

.field private xo:F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/s;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f40

    const/high16 v1, 0x3e80

    .line 431
    iput-object p1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 421
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    .line 422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cj;->dw:Landroid/graphics/RectF;

    .line 423
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cj;->xk:Landroid/graphics/PointF;

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 432
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    invoke-static {p1}, Lcom/android/gallery3d/ui/s;->f(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/app/bm;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02000d

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    .line 434
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/cj;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    return-object v0
.end method

.method private a(Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 632
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v12

    .line 633
    const/high16 v1, 0x4040

    invoke-interface {v12, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    .line 634
    const/16 v1, 0xb20

    invoke-interface {v12, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 636
    const/16 v1, 0xb90

    invoke-interface {v12, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 637
    const/16 v1, 0x400

    invoke-interface {v12, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 638
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 639
    const/16 v1, 0x207

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 641
    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->h(Lcom/android/gallery3d/ui/s;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->i(Lcom/android/gallery3d/ui/s;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 642
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 643
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->j(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->b(FFFFLcom/android/gallery3d/ui/as;)V

    .line 662
    :goto_0
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 663
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e00

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 665
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/high16 v6, -0x6000

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 667
    const/16 v1, 0xb90

    invoke-interface {v12, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 668
    return-void

    .line 645
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->h(Lcom/android/gallery3d/ui/s;)F

    move-result v2

    mul-float v4, v1, v2

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->i(Lcom/android/gallery3d/ui/s;)F

    move-result v2

    mul-float v5, v1, v2

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    .line 650
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v13, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v14, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 651
    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v2, v13, v1

    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v3, v14, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->j(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->b(FFFFLcom/android/gallery3d/ui/as;)V

    .line 652
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->j(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/b;->b(FFFFLcom/android/gallery3d/ui/as;)V

    .line 654
    const/16 v1, 0x205

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 655
    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    const/16 v3, 0x1e01

    invoke-interface {v12, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 657
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v13, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v14, v1

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->j(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;

    move-result-object v11

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/b;->b(FFFFLcom/android/gallery3d/ui/as;)V

    .line 658
    const/high16 v1, 0x4000

    div-float v1, v5, v1

    sub-float v7, v13, v1

    const/high16 v1, 0x4000

    div-float v1, v4, v1

    sub-float v8, v14, v1

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move v9, v5

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 659
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, -0x8000

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    goto/16 :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v7, 0x4180

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->getScale()F

    move-result v0

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/cj;->xn:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/cj;->xo:F

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/cj;->xn:F

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/cj;->xo:F

    .line 465
    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    .line 467
    iget v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 468
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float v4, v8, v4

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    .line 469
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v4

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    .line 470
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 471
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 472
    iget v0, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 473
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 528
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->invalidate()V

    .line 529
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->xk:Landroid/graphics/PointF;

    .line 476
    iget v1, p0, Lcom/android/gallery3d/ui/cj;->xn:F

    iget v3, p0, Lcom/android/gallery3d/ui/cj;->xo:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/g;->b(Landroid/graphics/PointF;)V

    .line 478
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v7, v3

    add-float/2addr v1, v3

    .line 479
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v4}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v7, v4

    sub-float/2addr v3, v4

    .line 480
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v5}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v7, v5

    add-float/2addr v4, v5

    .line 481
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v6}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v7, v6

    sub-float/2addr v5, v6

    .line 482
    iget v6, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 483
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v1, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->right:F

    .line 485
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 486
    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v9, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 488
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    .line 489
    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v9, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 491
    :cond_4
    iget v6, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_5

    .line 492
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v4, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v0

    const/high16 v6, -0x4080

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v0

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v6}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v6}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 496
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v0

    if-lez v6, :cond_7

    .line 497
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v0

    .line 498
    iget v7, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_6

    .line 499
    iget v7, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    invoke-static {v6, v4, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 511
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    cmpl-float v6, v6, v0

    if-lez v6, :cond_a

    .line 512
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v0, v4

    .line 513
    iget v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 514
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    invoke-static {v0, v9, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 501
    :cond_6
    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v7, v6

    invoke-static {v6, v9, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 504
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v0

    .line 505
    iget v7, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    .line 506
    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float v6, v7, v6

    invoke-static {v6, v9, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 508
    :cond_8
    iget v7, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    invoke-static {v6, v1, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v6

    iput v6, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 516
    :cond_9
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 519
    :cond_a
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v0, v1, v0

    .line 520
    iget v1, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    .line 521
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    invoke-static {v0, v4, v8}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 523
    :cond_b
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    invoke-static {v0, v9, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v12, 0x4000

    const/high16 v11, -0x4080

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v10, 0x41f0

    .line 532
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/ui/cj;->dw:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/ui/g;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 536
    iget v0, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v10

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1

    iget v0, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v10

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1

    iget v0, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v10

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v10

    cmpg-float v0, v8, v0

    if-gez v0, :cond_1

    .line 538
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v10

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_9

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v10

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_9

    move v0, v1

    .line 544
    :goto_1
    iget v3, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v10

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_a

    iget v3, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v10

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_a

    move v5, v1

    .line 547
    :goto_2
    if-eqz v0, :cond_4

    .line 548
    iget v3, v6, Landroid/graphics/RectF;->left:F

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_b

    move v3, v1

    .line 549
    :goto_3
    iget v4, v6, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_c

    move v4, v1

    .line 550
    :goto_4
    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    .line 551
    iget v3, v6, Landroid/graphics/RectF;->left:F

    sub-float v3, v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v6, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    move v4, v1

    .line 552
    :goto_5
    if-nez v4, :cond_e

    move v3, v1

    .line 554
    :goto_6
    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 555
    :cond_2
    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 556
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v3

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 557
    iget v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v9

    div-float/2addr v3, v12

    cmpl-float v3, v8, v3

    if-lez v3, :cond_f

    const/16 v3, 0x8

    :goto_7
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 561
    :cond_4
    if-eqz v5, :cond_0

    .line 562
    iget v3, v6, Landroid/graphics/RectF;->top:F

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_10

    move v3, v1

    .line 563
    :goto_8
    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_11

    move v4, v1

    .line 564
    :goto_9
    if-eqz v3, :cond_13

    if-eqz v4, :cond_13

    .line 565
    iget v3, v6, Landroid/graphics/RectF;->top:F

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v8, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    move v3, v1

    .line 566
    :goto_a
    if-nez v3, :cond_5

    move v2, v1

    .line 568
    :cond_5
    :goto_b
    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 569
    :cond_6
    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 570
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v2}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v2

    cmpl-float v2, v2, v11

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 571
    iget v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    div-float/2addr v2, v12

    cmpl-float v2, v7, v2

    if-lez v2, :cond_8

    const/4 v1, 0x4

    :cond_8
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 542
    goto/16 :goto_1

    :cond_a
    move v5, v2

    .line 544
    goto/16 :goto_2

    :cond_b
    move v3, v2

    .line 548
    goto/16 :goto_3

    :cond_c
    move v4, v2

    .line 549
    goto/16 :goto_4

    :cond_d
    move v4, v2

    .line 551
    goto/16 :goto_5

    :cond_e
    move v3, v2

    .line 552
    goto/16 :goto_6

    .line 557
    :cond_f
    const/4 v3, 0x2

    goto :goto_7

    :cond_10
    move v3, v2

    .line 562
    goto :goto_8

    :cond_11
    move v4, v2

    .line 563
    goto :goto_9

    :cond_12
    move v3, v2

    .line 565
    goto :goto_a

    :cond_13
    move v2, v4

    goto :goto_b

    :cond_14
    move v13, v4

    move v4, v3

    move v3, v13

    goto/16 :goto_6
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 598
    :goto_0
    return v2

    .line 581
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xn:F

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xo:F

    .line 583
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cj;->e(Landroid/view/MotionEvent;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->invalidate()V

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cj;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 592
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    .line 593
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/g;->b(Landroid/graphics/RectF;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->invalidate()V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 603
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->dw:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/g;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 604
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/cj;->a(Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;)V

    .line 606
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    div-float v2, v0, v4

    .line 607
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    div-float v3, v0, v4

    .line 608
    iget v0, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 609
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 614
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 615
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 619
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 620
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    iget-object v4, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 624
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/ui/cj;->xm:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 625
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->xl:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 629
    :cond_7
    return-void

    .line 608
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public eS()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3ef5c290

    const v6, 0x3ca3d70a

    const/high16 v5, 0x3f00

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v0

    const/high16 v3, -0x4080

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    .line 442
    :goto_0
    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 443
    div-float v0, v1, v0

    .line 450
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    sub-float v3, v5, v1

    sub-float v4, v5, v0

    add-float/2addr v4, v6

    add-float/2addr v1, v5

    add-float/2addr v0, v5

    sub-float/2addr v0, v6

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 451
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->e(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->d(Lcom/android/gallery3d/ui/s;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    goto :goto_0

    .line 445
    :cond_1
    mul-float/2addr v0, v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1
.end method

.method public f(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->xj:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/ui/cj;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/g;->b(Landroid/graphics/RectF;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cj;->invalidate()V

    .line 457
    return-void
.end method
