.class public Lcom/android/gallery3d/ui/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/b;


# static fields
.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"

.field private static final xV:F = 0.95f

.field private static final xW:I = 0x0

.field private static final xX:I = 0x4

.field private static final xY:I = 0x6

.field private static final xZ:[F


# instance fields
.field private mAlpha:F

.field private mHeight:I

.field private final ya:Ljavax/microedition/khronos/opengles/GL11;

.field private final yb:[F

.field private final yc:[F

.field private final yd:[F

.field private final ye:[F

.field private yf:I

.field private final yg:Lcom/android/gallery3d/ui/ds;

.field private yh:J

.field private final yi:Landroid/graphics/Rect;

.field private final yj:Ljava/util/Stack;

.field private yk:Lcom/android/gallery3d/ui/ez;

.field private final yl:Landroid/graphics/RectF;

.field private final ym:Landroid/graphics/RectF;

.field private final yn:[F

.field private final yo:Lcom/android/gallery3d/b/d;

.field private final yp:Lcom/android/gallery3d/b/d;

.field private yq:Z

.field yr:I

.field ys:I

.field yt:I

.field yu:I

.field yv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/ui/cp;->xZ:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    .line 52
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yd:[F

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->ye:[F

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yi:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yj:Ljava/util/Stack;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yl:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->ym:Landroid/graphics/RectF;

    .line 73
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yn:[F

    .line 74
    new-instance v0, Lcom/android/gallery3d/b/d;

    invoke-direct {v0}, Lcom/android/gallery3d/b/d;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    .line 75
    new-instance v0, Lcom/android/gallery3d/b/d;

    invoke-direct {v0}, Lcom/android/gallery3d/b/d;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yp:Lcom/android/gallery3d/b/d;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/ds;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/ds;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->initialize()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/cp;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yi:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static a(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private a(FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 241
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eX()V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/gallery3d/ui/cp;->translate(FFF)V

    .line 243
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/cp;->scale(FFF)V

    .line 245
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 246
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 248
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eY()V

    .line 249
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->yu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->yu:I

    .line 250
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/ah;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v0

    .line 416
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v1

    .line 417
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/ah;->cb()I

    move-result v2

    .line 418
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/ah;->cc()I

    move-result v3

    .line 420
    iget v4, p1, Landroid/graphics/RectF;->left:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 421
    iget v4, p1, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 422
    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 423
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 426
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 427
    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 428
    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 430
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 432
    :cond_0
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 433
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 434
    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 436
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 438
    :cond_1
    return-void
.end method

.method private a(Lcom/android/gallery3d/ui/ah;IFIIIIF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 469
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;IIIIF)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    .line 472
    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->a(FFFFI)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 480
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const/high16 v1, 0x3f80

    mul-float v2, p8, p3

    sub-float/2addr v1, v2

    .line 494
    const v2, 0x3f733333

    cmpg-float v2, p8, v2

    if-gez v2, :cond_5

    .line 495
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p3

    mul-float/2addr v3, p8

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ds;->q(F)V

    .line 501
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const v3, 0x8570

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ds;->aT(I)V

    .line 505
    ushr-int/lit8 v2, p2, 0x18

    int-to-float v2, v2

    const v3, 0x477e0100

    div-float/2addr v2, v3

    .line 506
    ushr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v2

    ushr-int/lit8 v4, p2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v2

    and-int/lit16 v5, p2, 0xff

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/gallery3d/ui/cp;->b(FFFF)V

    .line 509
    const/16 v1, 0x2300

    const/16 v2, 0x2201

    iget-object v3, p0, Lcom/android/gallery3d/ui/cp;->ye:[F

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 511
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 512
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 513
    const/16 v1, 0x2300

    const v2, 0x8581

    const v3, 0x47057600

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 514
    const/16 v1, 0x2300

    const v2, 0x8591

    const/high16 v3, 0x4440

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 515
    const/16 v1, 0x2300

    const v2, 0x8589

    const v3, 0x47057600

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 516
    const/16 v1, 0x2300

    const v2, 0x8599

    const v3, 0x44408000

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 519
    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 520
    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 523
    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 524
    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 526
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;IIII)V

    .line 527
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ds;->aT(I)V

    goto/16 :goto_0

    .line 476
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 497
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ds;->q(F)V

    goto/16 :goto_2
.end method

.method private a(Lcom/android/gallery3d/ui/ah;Lcom/android/gallery3d/ui/ah;FIIIIF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 534
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;IIIIF)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 537
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;IIIIF)V

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 549
    iget-object v6, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 550
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/high16 v0, 0x3f80

    mul-float v1, p8, p3

    sub-float/2addr v0, v1

    .line 564
    const v1, 0x3f733333

    cmpg-float v1, p8, v1

    if-gez v1, :cond_6

    .line 565
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p3

    mul-float/2addr v2, p8

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->q(F)V

    .line 570
    :goto_3
    const v1, 0x84c1

    invoke-interface {v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 571
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 573
    const/16 v0, 0xde1

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 575
    const v0, 0x84c0

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto :goto_0

    .line 543
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 546
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 567
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->q(F)V

    goto :goto_3

    .line 578
    :cond_7
    const/16 v1, 0xde1

    invoke-interface {v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 581
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->aT(I)V

    .line 582
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v6, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 583
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v6, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 588
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/gallery3d/ui/cp;->b(FFFF)V

    .line 589
    const/16 v0, 0x2300

    const/16 v1, 0x2201

    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->ye:[F

    const/4 v3, 0x0

    invoke-interface {v6, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 592
    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 593
    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 596
    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 597
    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 600
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;IIII)V

    .line 603
    const/16 v0, 0xde1

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 605
    const v0, 0x84c0

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/android/gallery3d/ui/ez;)V
    .locals 1
    .parameter

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yk:Lcom/android/gallery3d/ui/ez;

    iput-object v0, p1, Lcom/android/gallery3d/ui/ez;->JQ:Lcom/android/gallery3d/ui/ez;

    .line 869
    iput-object p1, p0, Lcom/android/gallery3d/ui/cp;->yk:Lcom/android/gallery3d/ui/ez;

    .line 870
    return-void
.end method

.method private a([FIIII)[F
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yd:[F

    .line 290
    const/4 v5, 0x6

    .line 291
    int-to-float v1, p2

    aput v1, v0, v5

    .line 292
    const/4 v1, 0x7

    int-to-float v2, p3

    aput v2, v0, v1

    .line 293
    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 294
    const/16 v1, 0x9

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 296
    const/4 v1, 0x0

    .line 297
    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 298
    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 299
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 302
    int-to-float v1, p4

    aput v1, v0, v5

    .line 303
    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 304
    const/4 v1, 0x2

    .line 305
    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 306
    aget v2, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 307
    const/4 v1, 0x3

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 309
    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/cp;)Ljavax/microedition/khronos/opengles/GL11;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method private b(FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ye:[F

    .line 459
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 460
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 461
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 462
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 463
    return-void
.end method

.method private b(Lcom/android/gallery3d/ui/ah;IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-static {v0}, Lcom/android/gallery3d/ui/cp;->b([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cb()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cc()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cb()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cc()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cp;->c(FFFF)V

    .line 355
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cp;->a(FFFF)V

    .line 369
    :cond_0
    :goto_1
    return-void

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cb()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->cc()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/cp;->c(FFFF)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->a([FIIII)[F

    move-result-object v0

    .line 360
    aget v1, v0, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 361
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 362
    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v4, v3, v1

    .line 363
    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v5, v0, v2

    .line 364
    if-lez v4, :cond_0

    if-lez v5, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v3, v6

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 366
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->yv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->yv:I

    goto :goto_1
.end method

.method private b(Lcom/android/gallery3d/ui/ah;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 451
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/ah;->f(Lcom/android/gallery3d/ui/b;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ds;->t(Z)V

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xde1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    goto :goto_0
.end method

.method private static b([F)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const v4, 0x3727c5ac

    .line 615
    .line 616
    const/4 v2, 0x4

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    aget v2, p0, v0

    const v3, -0x48d83a54

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x5

    aget v2, p0, v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private c(FFFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 788
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 790
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 791
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 792
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 794
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 795
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yc:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 796
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 797
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/cp;)[F
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    return-object v0
.end method

.method private eV()Lcom/android/gallery3d/ui/ez;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yk:Lcom/android/gallery3d/ui/ez;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yk:Lcom/android/gallery3d/ui/ez;

    .line 875
    iget-object v1, v0, Lcom/android/gallery3d/ui/ez;->JQ:Lcom/android/gallery3d/ui/ez;

    iput-object v1, p0, Lcom/android/gallery3d/ui/cp;->yk:Lcom/android/gallery3d/ui/ez;

    .line 878
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/ez;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ez;-><init>(Lcom/android/gallery3d/ui/ck;)V

    goto :goto_0
.end method

.method private eX()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 915
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yn:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    return-void
.end method

.method private eY()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yn:[F

    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    return-void
.end method

.method private g(Landroid/graphics/RectF;)V
    .locals 4
    .parameter

    .prologue
    .line 783
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cp;->c(FFFF)V

    .line 784
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const v8, 0x8892

    const/4 v7, 0x1

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 140
    sget-object v1, Lcom/android/gallery3d/ui/cp;->xZ:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    .line 141
    invoke-static {v1}, Lcom/android/gallery3d/ui/cp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/android/gallery3d/ui/cp;->xZ:[F

    sget-object v3, Lcom/android/gallery3d/ui/cp;->xZ:[F

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    new-array v2, v7, [I

    .line 145
    invoke-interface {v0, v7, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 146
    aget v2, v2, v4

    iput v2, p0, Lcom/android/gallery3d/ui/cp;->yf:I

    .line 148
    iget v2, p0, Lcom/android/gallery3d/ui/cp;->yf:I

    invoke-interface {v0, v8, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 149
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const v3, 0x88e4

    invoke-interface {v0, v8, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 153
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 154
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 157
    const v1, 0x84c1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 158
    invoke-interface {v0, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 159
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 160
    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 163
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    .line 164
    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/android/gallery3d/ui/ah;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-static {v0}, Lcom/android/gallery3d/ui/cp;->b([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot support rotated matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    add-int v3, p2, p4

    add-int v4, p1, p3

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->a([FIIII)[F

    move-result-object v0

    .line 628
    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v4, v1

    .line 629
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v5, v1

    .line 630
    const/4 v1, 0x2

    aget v1, v0, v1

    float-to-int v1, v1

    sub-int/2addr v1, v4

    .line 631
    const/4 v2, 0x3

    aget v0, v0, v2

    float-to-int v0, v0

    sub-int v2, v0, v5

    .line 633
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 635
    invoke-static {p0}, Lcom/android/gallery3d/ui/r;->e(Lcom/android/gallery3d/ui/b;)Lcom/android/gallery3d/ui/r;

    move-result-object v9

    .line 636
    const/16 v3, 0xde1

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/r;->getId()I

    move-result v6

    invoke-interface {v0, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 637
    invoke-virtual {v9, v1, v2}, Lcom/android/gallery3d/ui/r;->setSize(II)V

    .line 639
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v3, v6

    const/4 v6, 0x2

    aput v1, v3, v6

    const/4 v1, 0x3

    aput v2, v3, v1

    .line 640
    const/16 v1, 0xde1

    const v2, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {v0, v1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 642
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 644
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 646
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v3, 0x46180400

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 648
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 650
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/r;->cb()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/r;->cc()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL11;->glCopyTexImage2D(IIIIIIII)V

    .line 654
    return-object v9
.end method

.method public a()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 780
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 125
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFFFI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget v1, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    invoke-virtual {v0, p5, v1}, Lcom/android/gallery3d/ui/ds;->a(IF)V

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eX()V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/gallery3d/ui/cp;->translate(FFF)V

    .line 208
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/cp;->scale(FFF)V

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 211
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 213
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eY()V

    .line 214
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->ys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->ys:I

    .line 215
    return-void
.end method

.method public a(FFFFLcom/android/gallery3d/ui/as;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 187
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/ds;->a(IF)V

    .line 188
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->cW()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->j(F)V

    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->cX()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->s(Z)V

    .line 191
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eX()V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/gallery3d/ui/cp;->translate(FFF)V

    .line 193
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/ui/cp;->scale(FFF)V

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 196
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 198
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eY()V

    .line 199
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    .line 200
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 774
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 775
    iput-wide p1, p0, Lcom/android/gallery3d/ui/cp;->yh:J

    .line 776
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/ui/ah;IFIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iget v8, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;IFIIIIF)V

    .line 443
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ah;IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    iget v6, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;IIIIF)V

    .line 374
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ah;IIIIF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {v0, p6}, Lcom/android/gallery3d/ui/ds;->q(F)V

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;IIII)V

    goto :goto_0

    .line 384
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/ui/ah;IIIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x8892

    const/4 v6, 0x0

    const/16 v5, 0x1406

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 254
    iget v2, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    .line 255
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f733333

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/ds;->q(F)V

    .line 263
    const/high16 v0, 0x3f80

    const/high16 v2, 0x3f80

    invoke-direct {p0, v6, v6, v0, v2}, Lcom/android/gallery3d/ui/cp;->c(FFFF)V

    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eX()V

    .line 266
    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {p0, v0, v2, v6}, Lcom/android/gallery3d/ui/cp;->translate(FFF)V

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8893

    invoke-interface {v0, v2, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x5

    const/16 v3, 0x1401

    invoke-interface {v0, v2, p7, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, p0, Lcom/android/gallery3d/ui/cp;->yf:I

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 284
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eY()V

    .line 285
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->yt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->yt:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 257
    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/ui/ah;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yl:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ym:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 397
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yl:Landroid/graphics/RectF;

    .line 398
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->ym:Landroid/graphics/RectF;

    .line 400
    iget-object v3, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ah;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    const v4, 0x3f733333

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cp;->b(Lcom/android/gallery3d/ui/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0, v1, v2, p1}, Lcom/android/gallery3d/ui/cp;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/ah;)V

    .line 404
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/cp;->g(Landroid/graphics/RectF;)V

    .line 405
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    iget v1, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ds;->q(F)V

    .line 406
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/gallery3d/ui/cp;->a(FFFF)V

    goto :goto_0

    .line 400
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/ui/ah;Lcom/android/gallery3d/ui/ah;FIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iget v8, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ah;Lcom/android/gallery3d/ui/ah;FIIIIF)V

    .line 448
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/cp;->yq:Z

    .line 378
    return-void
.end method

.method public a([FI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yn:[F

    .line 234
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ah;)Z
    .locals 3
    .parameter

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    monitor-enter v1

    .line 803
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/ah;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 805
    :goto_0
    return v0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    iget v2, p1, Lcom/android/gallery3d/ui/ah;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/b/d;->q(I)V

    .line 805
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public b(FFFFLcom/android/gallery3d/ui/as;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/ds;->a(IF)V

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->cW()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->j(F)V

    .line 171
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yg:Lcom/android/gallery3d/ui/ds;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/as;->cX()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ds;->s(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eX()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/gallery3d/ui/cp;->translate(FFF)V

    .line 175
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/ui/cp;->scale(FFF)V

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 178
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 180
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eY()V

    .line 181
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    .line 182
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yp:Lcom/android/gallery3d/b/d;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/b/d;->q(I)V

    .line 812
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yo:Lcom/android/gallery3d/b/d;

    .line 818
    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->ak()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 820
    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->clear()V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yp:Lcom/android/gallery3d/b/d;

    .line 824
    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->ak()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 826
    invoke-virtual {v0}, Lcom/android/gallery3d/b/d;->clear()V

    .line 828
    :cond_1
    monitor-exit v1

    .line 829
    return-void

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clipRect(IIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cp;->a([FIIII)[F

    move-result-object v2

    .line 317
    aget v0, v2, v6

    aget v1, v2, v8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 318
    aget v0, v2, v8

    float-to-int v1, v0

    .line 319
    aget v0, v2, v6

    float-to-int v0, v0

    .line 324
    :goto_0
    aget v3, v2, v7

    aget v4, v2, v9

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 325
    aget v3, v2, v9

    float-to-int v3, v3

    .line 326
    aget v2, v2, v7

    float-to-int v2, v2

    .line 331
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/cp;->yi:Landroid/graphics/Rect;

    .line 333
    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    .line 334
    if-nez v0, :cond_0

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 336
    return v0

    .line 321
    :cond_1
    aget v0, v2, v6

    float-to-int v1, v0

    .line 322
    aget v0, v2, v8

    float-to-int v0, v0

    goto :goto_0

    .line 328
    :cond_2
    aget v3, v2, v7

    float-to-int v3, v3

    .line 329
    aget v2, v2, v9

    float-to-int v2, v2

    goto :goto_1
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/gallery3d/ui/cp;->yh:J

    return-wide v0
.end method

.method public eW()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 902
    const-string v0, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/gallery3d/ui/cp;->yt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->yu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->yv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->ys:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 906
    iput v4, p0, Lcom/android/gallery3d/ui/cp;->yt:I

    .line 907
    iput v4, p0, Lcom/android/gallery3d/ui/cp;->yu:I

    .line 908
    iput v4, p0, Lcom/android/gallery3d/ui/cp;->yv:I

    .line 909
    iput v4, p0, Lcom/android/gallery3d/ui/cp;->ys:I

    .line 910
    iput v4, p0, Lcom/android/gallery3d/ui/cp;->yr:I

    .line 911
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    return v0
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yj:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yj:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ez;

    .line 863
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/ez;->d(Lcom/android/gallery3d/ui/cp;)V

    .line 864
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/cp;->a(Lcom/android/gallery3d/ui/ez;)V

    .line 865
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yn:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 227
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 228
    iget-object v4, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 229
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-void
.end method

.method public save()I
    .locals 1

    .prologue
    .line 832
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cp;->save(I)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 836
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cp;->eV()Lcom/android/gallery3d/ui/ez;

    move-result-object v0

    .line 838
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 839
    iget v1, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    iput v1, v0, Lcom/android/gallery3d/ui/ez;->mAlpha:F

    .line 844
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, v0, Lcom/android/gallery3d/ui/ez;->JP:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yi:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 850
    :goto_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    iget-object v2, v0, Lcom/android/gallery3d/ui/ez;->eo:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/cp;->yj:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yj:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 841
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/android/gallery3d/ui/ez;->mAlpha:F

    goto :goto_0

    .line 847
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/ez;->JP:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 853
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/ez;->eo:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_2
.end method

.method public scale(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 223
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 120
    iput p1, p0, Lcom/android/gallery3d/ui/cp;->mAlpha:F

    .line 121
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 93
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 94
    iput p2, p0, Lcom/android/gallery3d/ui/cp;->mHeight:I

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 97
    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 98
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 99
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 100
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v4, v2, v4, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 102
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 103
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 104
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    .line 106
    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 107
    iget v3, p0, Lcom/android/gallery3d/ui/cp;->mHeight:I

    int-to-float v3, v3

    invoke-static {v2, v1, v4, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 108
    const/high16 v3, -0x4080

    invoke-static {v2, v1, v5, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/ui/cp;->yi:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 112
    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public translate(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/ui/cp;->yb:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 219
    return-void
.end method
