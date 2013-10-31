.class Lcom/android/gallery3d/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PositionController"

.field private static final cM:J = -0x1L

.field private static final cN:J = -0x2L

.field private static final cQ:I = 0x0

.field private static final cR:I = 0x1

.field private static final cS:I = 0x2

.field private static final cT:I = 0x3

.field private static final cU:I = 0x4

.field private static final cV:I = 0x5

.field private static final cW:I = 0x6

.field private static final cX:[I = null

.field private static final cY:F = 2.0f


# instance fields
.field private aJ:I

.field private aK:I

.field private aL:F

.field private cL:J

.field private cO:I

.field private cP:F

.field private cZ:Lcom/android/gallery3d/ui/ap;

.field private da:Lcom/android/gallery3d/ui/cx;

.field private db:I

.field private dc:I

.field private dd:I

.field private de:I

.field private df:I

.field private dg:I

.field private dh:I

.field private di:I

.field private dj:F

.field private dk:F

.field private dl:I

.field private dm:I

.field private dn:Z

.field private do:F

.field private dp:F

.field private dq:Lcom/android/gallery3d/ui/bh;

.field private dr:I

.field private ds:I

.field private dt:I

.field private du:I

.field private dv:Z

.field private dw:Landroid/graphics/RectF;

.field private dx:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/ui/n;->cX:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/ap;Landroid/content/Context;Lcom/android/gallery3d/ui/cx;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 88
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dp:F

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/n;->dv:Z

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/n;->dw:Landroid/graphics/RectF;

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/n;->dx:[F

    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    .line 107
    iput-object p3, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    .line 108
    new-instance v0, Lcom/android/gallery3d/ui/bh;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/bh;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    .line 109
    return-void
.end method

.method private static a(IIIF)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 273
    int-to-float v0, p2

    div-float/2addr v0, v3

    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private a(FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ae()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->af()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 415
    return-void
.end method

.method private a(IIFI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-static {p3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 474
    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aK:I

    if-ne p2, v1, :cond_1

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->df:I

    .line 478
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dh:I

    .line 479
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dj:F

    .line 481
    iput p1, p0, Lcom/android/gallery3d/ui/n;->dg:I

    .line 482
    iput p2, p0, Lcom/android/gallery3d/ui/n;->di:I

    .line 483
    const v0, 0x3f19999a

    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dp:F

    mul-float/2addr v1, v2

    invoke-static {p3, v0, v1}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dk:F

    .line 489
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dk:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 490
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->di:I

    .line 493
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 494
    iput p4, p0, Lcom/android/gallery3d/ui/n;->cO:I

    .line 495
    iget v0, p0, Lcom/android/gallery3d/ui/n;->cO:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 496
    sget-object v0, Lcom/android/gallery3d/ui/n;->cX:[I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->cO:I

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->cP:F

    .line 498
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/n;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->invalidate()V

    goto :goto_0
.end method

.method private aa()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-wide v1, p0, Lcom/android/gallery3d/ui/n;->cL:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/n;->dn:Z

    if-nez v1, :cond_0

    .line 622
    iget v1, p0, Lcom/android/gallery3d/ui/n;->cO:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ap;->isDown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/n;->ab()Z

    move-result v0

    goto :goto_0
.end method

.method private ac()Z
    .locals 4

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->cO:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->cO:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()F
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dk:F

    goto :goto_0
.end method

.method private ae()I
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dg:I

    goto :goto_0
.end method

.method private af()I
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->di:I

    goto :goto_0
.end method

.method private c(F)V
    .locals 4
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bh;->l(F)V

    .line 566
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 567
    iget v1, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 568
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bh;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 569
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bh;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 572
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dr:I

    if-le v0, v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dr:I

    if-ne v2, v3, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bh;->dr()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 574
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/ui/cx;->A(II)V

    .line 580
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dt:I

    if-le v1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dt:I

    if-ne v0, v2, :cond_3

    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bh;->ds()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/cx;->A(II)V

    .line 587
    :cond_1
    :goto_1
    return-void

    .line 575
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/n;->ds:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->ds:I

    if-ne v0, v2, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bh;->dr()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 577
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/ui/cx;->A(II)V

    goto :goto_0

    .line 583
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/n;->du:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->du:I

    if-ne v0, v1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bh;->ds()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 585
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/cx;->A(II)V

    goto :goto_1
.end method

.method private d(F)V
    .locals 5
    .parameter

    .prologue
    .line 605
    iget v0, p0, Lcom/android/gallery3d/ui/n;->df:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dj:F

    mul-float/2addr v0, v1

    .line 606
    iget v1, p0, Lcom/android/gallery3d/ui/n;->dg:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dk:F

    mul-float/2addr v1, v2

    .line 607
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 609
    iget v1, p0, Lcom/android/gallery3d/ui/n;->dh:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dj:F

    mul-float/2addr v1, v2

    .line 610
    iget v2, p0, Lcom/android/gallery3d/ui/n;->di:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dk:F

    mul-float/2addr v2, v3

    .line 611
    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 613
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dj:F

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dk:F

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dj:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 614
    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 615
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 616
    return-void
.end method

.method private static d(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 377
    sub-float v0, p0, p1

    .line 378
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(F)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 668
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v0, v0

    mul-float v1, v2, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dr:I

    .line 669
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/n;->ds:I

    .line 670
    iget v0, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v0, v0

    mul-float v1, v2, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dt:I

    .line 671
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dt:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/n;->du:I

    .line 675
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 676
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->du:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dt:I

    .line 680
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 681
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->ds:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dr:I

    .line 683
    :cond_1
    return-void
.end method


# virtual methods
.method public T()V
    .locals 4

    .prologue
    .line 214
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->do:F

    const/4 v3, 0x6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 215
    return-void
.end method

.method public U()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 334
    iget-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    iput-wide v2, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 336
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dg:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 337
    iget v0, p0, Lcom/android/gallery3d/ui/n;->di:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 338
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dk:F

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    goto :goto_0
.end method

.method public V()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/n;->dn:Z

    .line 365
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->aa()Z

    .line 366
    return-void
.end method

.method public W()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    return v0
.end method

.method public X()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/n;->d(FF)Z

    move-result v0

    return v0
.end method

.method public Y()V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/n;->ab()Z

    .line 383
    return-void
.end method

.method public Z()Z
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 503
    iget-wide v4, p0, Lcom/android/gallery3d/ui/n;->cL:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return v2

    .line 505
    :cond_0
    iget-wide v4, p0, Lcom/android/gallery3d/ui/n;->cL:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 506
    iput-wide v6, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cR()V

    goto :goto_0

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->aa()Z

    move-result v2

    goto :goto_0

    .line 515
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 517
    iget v0, p0, Lcom/android/gallery3d/ui/n;->cP:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_7

    move v0, v3

    .line 523
    :goto_1
    cmpl-float v4, v0, v3

    if-ltz v4, :cond_8

    .line 525
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dg:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 526
    iget v0, p0, Lcom/android/gallery3d/ui/n;->di:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 527
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dk:F

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 528
    iput-wide v8, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 552
    :goto_2
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dd:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->de:I

    if-ge v0, v3, :cond_a

    move v0, v1

    .line 553
    :goto_3
    iget v3, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dc:I

    if-ge v3, v4, :cond_3

    move v2, v1

    .line 554
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v4, p0, Lcom/android/gallery3d/ui/n;->do:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    .line 555
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 556
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 557
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/ui/n;->e(II)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 560
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/ap;->c(IIF)V

    move v2, v1

    .line 561
    goto :goto_0

    .line 520
    :cond_7
    iget-wide v6, p0, Lcom/android/gallery3d/ui/n;->cL:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lcom/android/gallery3d/ui/n;->cP:F

    div-float/2addr v0, v4

    goto :goto_1

    .line 530
    :cond_8
    sub-float v4, v3, v0

    .line 531
    iget v5, p0, Lcom/android/gallery3d/ui/n;->cO:I

    packed-switch v5, :pswitch_data_0

    .line 545
    :goto_4
    iget v3, p0, Lcom/android/gallery3d/ui/n;->cO:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 546
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->c(F)V

    goto :goto_2

    .line 534
    :pswitch_0
    sub-float v0, v3, v4

    .line 535
    goto :goto_4

    .line 537
    :pswitch_1
    mul-float v0, v4, v4

    sub-float v0, v3, v0

    .line 538
    goto :goto_4

    .line 542
    :pswitch_2
    mul-float v0, v4, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    goto :goto_4

    .line 548
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->d(F)V

    goto :goto_2

    :cond_a
    move v0, v2

    .line 552
    goto :goto_3

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 356
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ad()F

    move-result v0

    mul-float/2addr v0, p1

    .line 357
    iget v1, p0, Lcom/android/gallery3d/ui/n;->dl:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float v2, p2, v2

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 358
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dm:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, p3, v3

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 360
    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 361
    return-void
.end method

.method public a(FFFI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 200
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dp:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget p3, p0, Lcom/android/gallery3d/ui/n;->dp:F

    .line 203
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dd:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 204
    iget v1, p0, Lcom/android/gallery3d/ui/n;->de:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 206
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 207
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dr:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->ds:I

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 208
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dt:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->du:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 209
    sget-object v2, Lcom/android/gallery3d/ui/n;->cX:[I

    aput p4, v2, v4

    .line 210
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 211
    return-void
.end method

.method public a(FFZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 419
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->ae()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    invoke-direct {p0}, Lcom/android/gallery3d/ui/n;->af()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 426
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dt:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->du:I

    if-eq v2, v3, :cond_0

    .line 427
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dt:I

    if-ge v1, v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dt:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/ui/cx;->z(II)V

    .line 434
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dt:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->du:I

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 438
    if-nez p4, :cond_3

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dr:I

    if-ge v0, v2, :cond_3

    .line 439
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dr:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 440
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/ui/cx;->z(II)V

    .line 441
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dr:I

    .line 448
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 449
    return-void

    .line 429
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/n;->du:I

    if-le v1, v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    iget v3, p0, Lcom/android/gallery3d/ui/n;->du:I

    sub-int v3, v1, v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/ui/cx;->z(II)V

    goto :goto_0

    .line 442
    :cond_3
    if-nez p3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->ds:I

    if-le v0, v2, :cond_1

    .line 443
    iget v2, p0, Lcom/android/gallery3d/ui/n;->ds:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 444
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->da:Lcom/android/gallery3d/ui/cx;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/ui/cx;->z(II)V

    .line 445
    iget v0, p0, Lcom/android/gallery3d/ui/n;->ds:I

    goto :goto_1
.end method

.method public ab()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 629
    const/4 v1, 0x0

    .line 630
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 632
    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v4, p0, Lcom/android/gallery3d/ui/n;->do:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dp:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 634
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dp:F

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    move v1, v2

    .line 637
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 638
    iget v3, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dr:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->ds:I

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    .line 639
    iget v4, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->dt:I

    iget v6, p0, Lcom/android/gallery3d/ui/n;->du:I

    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    .line 641
    iget v5, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    .line 642
    iget v6, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    if-ne v6, v3, :cond_2

    iget v6, p0, Lcom/android/gallery3d/ui/n;->aK:I

    if-ne v6, v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v1, v2

    .line 646
    :cond_3
    if-eqz v1, :cond_4

    .line 647
    const/4 v2, 0x2

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 650
    :cond_4
    return v1
.end method

.method public ag()Landroid/graphics/RectF;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v0, 0x0

    const/high16 v7, 0x7f80

    const/high16 v6, -0x80

    .line 704
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->dx:[F

    .line 712
    iget v2, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v1, v9

    aput v2, v1, v0

    .line 713
    const/4 v2, 0x1

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/ui/n;->aK:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v1, v3

    aput v4, v1, v2

    .line 714
    const/4 v2, 0x2

    const/4 v3, 0x6

    iget v4, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v1, v3

    aput v4, v1, v2

    .line 715
    const/4 v2, 0x5

    const/4 v3, 0x7

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dc:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->aK:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v1, v3

    aput v4, v1, v2

    .line 717
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->dw:Landroid/graphics/RectF;

    .line 718
    invoke-virtual {v2, v7, v7, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 721
    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 722
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dd:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 723
    iget v5, p0, Lcom/android/gallery3d/ui/n;->de:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 724
    :goto_0
    if-ge v0, v9, :cond_4

    .line 725
    add-int v6, v0, v0

    aget v6, v1, v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v4

    .line 726
    add-int v7, v0, v0

    add-int/lit8 v7, v7, 0x1

    aget v7, v1, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v5

    .line 727
    iget v8, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 728
    :cond_0
    iget v8, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    iput v6, v2, Landroid/graphics/RectF;->right:F

    .line 729
    :cond_1
    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_2

    iput v7, v2, Landroid/graphics/RectF;->top:F

    .line 730
    :cond_2
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v7, v6

    if-lez v6, :cond_3

    iput v7, v2, Landroid/graphics/RectF;->bottom:F

    .line 724
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_4
    return-object v2
.end method

.method public ah()Z
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 745
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dr:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai()Z
    .locals 2

    .prologue
    .line 749
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 750
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v1, p0, Lcom/android/gallery3d/ui/n;->ds:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/n;->dn:Z

    .line 343
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dl:I

    .line 345
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dm:I

    .line 347
    return-void
.end method

.method public d(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const v9, 0x3f9d70a4

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 115
    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/n;->dv:Z

    .line 116
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dd:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    .line 117
    iget v0, p0, Lcom/android/gallery3d/ui/n;->de:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    .line 118
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 119
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 120
    iput v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 121
    iput v3, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ap;->c(IIF)V

    .line 196
    :goto_0
    return-void

    .line 125
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/n;->dv:Z

    .line 128
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    iget v3, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 131
    int-to-float v0, p1

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, p2

    int-to-float v5, p1

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 133
    const v3, 0x3f3ae148

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_2

    const v3, 0x3f428f5c

    cmpg-float v3, v0, v3

    if-lez v3, :cond_3

    :cond_2
    const-wide v5, 0x3fe1eb851eb851ecL

    float-to-double v7, v0

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_c

    float-to-double v5, v0

    const-wide v7, 0x3fe23d70a3d70a3dL

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_c

    :cond_3
    move v0, v1

    .line 134
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/n;->dd:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->de:I

    if-le v3, v5, :cond_d

    move v3, v1

    .line 135
    :goto_2
    iget v5, p0, Lcom/android/gallery3d/ui/n;->de:I

    iget v6, p0, Lcom/android/gallery3d/ui/n;->dd:I

    if-le v5, v6, :cond_e

    move v6, v1

    .line 136
    :goto_3
    if-le p1, p2, :cond_f

    move v5, v1

    .line 137
    :goto_4
    if-le p2, p1, :cond_4

    move v2, v1

    .line 138
    :cond_4
    const v1, 0x3f147ae1

    cmpg-float v1, v4, v1

    if-ltz v1, :cond_5

    cmpg-float v1, v4, v9

    if-gtz v1, :cond_11

    :cond_5
    if-eqz v6, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-eqz v3, :cond_11

    if-eqz v5, :cond_11

    :cond_7
    if-eqz v0, :cond_11

    .line 140
    iget v1, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v1, v1

    int-to-float v4, p1

    div-float/2addr v1, v4

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v4, v4

    int-to-float v7, p2

    div-float/2addr v4, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 148
    :goto_5
    iget v4, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    invoke-static {v4, v7, p1, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 149
    iget v4, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-static {v4, v7, p2, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 150
    iget v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 153
    iget v4, p0, Lcom/android/gallery3d/ui/n;->df:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    invoke-static {v4, v7, p1, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->df:I

    .line 154
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dh:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-static {v4, v7, p2, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->dh:I

    .line 155
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dj:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/android/gallery3d/ui/n;->dj:F

    .line 158
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dg:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    invoke-static {v4, v7, p1, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->dg:I

    .line 159
    iget v4, p0, Lcom/android/gallery3d/ui/n;->di:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-static {v4, v7, p2, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->di:I

    .line 160
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dk:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/android/gallery3d/ui/n;->dk:F

    .line 163
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dl:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    invoke-static {v4, v7, p1, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->dl:I

    .line 164
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dm:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-static {v4, v7, p2, v1}, Lcom/android/gallery3d/ui/n;->a(IIIF)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/n;->dm:I

    .line 166
    iput p1, p0, Lcom/android/gallery3d/ui/n;->db:I

    .line 167
    iput p2, p0, Lcom/android/gallery3d/ui/n;->dc:I

    .line 169
    iget v1, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v4, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-virtual {p0, v1, v4}, Lcom/android/gallery3d/ui/n;->e(II)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 171
    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_a

    if-eqz v6, :cond_8

    if-nez v2, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    :cond_9
    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/n;->f(II)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 180
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cT()Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_10

    .line 184
    const/high16 v1, 0x4370

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 185
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v3, v0, Lcom/android/gallery3d/ui/cq;->x:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 186
    iget v2, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget v0, v0, Lcom/android/gallery3d/ui/cq;->y:F

    sub-float v0, v2, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 187
    iput v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cU()V

    .line 190
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/n;->ab()Z

    .line 195
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ap;->c(IIF)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 133
    goto/16 :goto_1

    :cond_d
    move v3, v2

    .line 134
    goto/16 :goto_2

    :cond_e
    move v6, v2

    .line 135
    goto/16 :goto_3

    :cond_f
    move v5, v2

    .line 136
    goto/16 :goto_4

    .line 191
    :cond_10
    iget-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 193
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dp:F

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    goto :goto_6

    :cond_11
    move v1, v4

    goto/16 :goto_5
.end method

.method public e(II)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 218
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public e(FF)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 453
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aL:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    .line 458
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/n;->e(F)V

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    neg-float v3, p1

    iget v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-float v4, p2

    iget v5, p0, Lcom/android/gallery3d/ui/n;->aL:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/ui/n;->dr:I

    iget v6, p0, Lcom/android/gallery3d/ui/n;->ds:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->dt:I

    iget v8, p0, Lcom/android/gallery3d/ui/n;->du:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/bh;->fling(IIIIIIII)V

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bh;->getFinalX()I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bh;->getFinalY()I

    move-result v1

    .line 465
    iget-object v2, p0, Lcom/android/gallery3d/ui/n;->dq:Lcom/android/gallery3d/ui/bh;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bh;->getDuration()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/gallery3d/ui/n;->cP:F

    .line 466
    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 467
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(II)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 229
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public g(II)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/high16 v6, 0x3ff0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    iget v2, p0, Lcom/android/gallery3d/ui/n;->dd:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/n;->de:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    move v3, v0

    .line 241
    :goto_0
    int-to-float v2, p1

    int-to-float v4, p2

    div-float/2addr v2, v4

    float-to-double v4, v2

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    move v2, v0

    .line 242
    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    .line 244
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v3, v1

    .line 240
    goto :goto_0

    :cond_3
    move v2, v1

    .line 241
    goto :goto_1

    :cond_4
    move v0, v1

    .line 242
    goto :goto_2
.end method

.method public h(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dd:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->de:I

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 279
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/ui/n;->dd:I

    .line 280
    iput p2, p0, Lcom/android/gallery3d/ui/n;->de:I

    .line 282
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/n;->dv:Z

    if-eqz v3, :cond_3

    .line 283
    iput p1, p0, Lcom/android/gallery3d/ui/n;->db:I

    .line 284
    iput p2, p0, Lcom/android/gallery3d/ui/n;->dc:I

    .line 285
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 286
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 287
    iput v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 288
    iput v4, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ap;->c(IIF)V

    .line 327
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 277
    goto :goto_0

    .line 299
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v4, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    .line 300
    if-nez v3, :cond_a

    move v3, v2

    .line 301
    :goto_2
    iget v4, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/ui/n;->e(II)F

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 303
    iget v4, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/ui/n;->db:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 305
    const v5, 0x3f3ae148

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_4

    const v5, 0x3f428f5c

    cmpg-float v5, v4, v5

    if-lez v5, :cond_5

    :cond_4
    const-wide v5, 0x3fe1eb851eb851ecL

    float-to-double v7, v4

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_b

    float-to-double v4, v4

    const-wide v6, 0x3fe23d70a3d70a3dL

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_b

    :cond_5
    move v4, v2

    .line 306
    :goto_3
    if-eqz v4, :cond_8

    .line 307
    iget v4, p0, Lcom/android/gallery3d/ui/n;->dd:I

    iget v5, p0, Lcom/android/gallery3d/ui/n;->de:I

    if-le v4, v5, :cond_c

    move v4, v2

    .line 308
    :goto_4
    iget v5, p0, Lcom/android/gallery3d/ui/n;->de:I

    iget v6, p0, Lcom/android/gallery3d/ui/n;->dd:I

    if-le v5, v6, :cond_d

    move v5, v2

    .line 310
    :goto_5
    iget v6, p0, Lcom/android/gallery3d/ui/n;->dc:I

    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    if-le v6, v7, :cond_e

    move v6, v2

    .line 312
    :goto_6
    iget v7, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v8, p0, Lcom/android/gallery3d/ui/n;->dc:I

    if-le v7, v8, :cond_f

    .line 314
    :goto_7
    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    const v7, 0x3f9d70a4

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_8

    if-eqz v5, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 316
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/ui/n;->db:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->dc:I

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/ui/n;->f(II)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    .line 321
    :cond_8
    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    iget v1, p0, Lcom/android/gallery3d/ui/n;->do:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_9

    if-eqz v3, :cond_1

    .line 322
    :cond_9
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 323
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 324
    iget v0, p0, Lcom/android/gallery3d/ui/n;->do:F

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aL:F

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/ui/n;->cZ:Lcom/android/gallery3d/ui/ap;

    iget v1, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aK:I

    iget v3, p0, Lcom/android/gallery3d/ui/n;->aL:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ap;->c(IIF)V

    goto/16 :goto_1

    :cond_a
    move v3, v1

    .line 300
    goto/16 :goto_2

    :cond_b
    move v4, v1

    .line 305
    goto :goto_3

    :cond_c
    move v4, v1

    .line 307
    goto :goto_4

    :cond_d
    move v5, v1

    .line 308
    goto :goto_5

    :cond_e
    move v6, v1

    .line 310
    goto :goto_6

    :cond_f
    move v2, v1

    .line 312
    goto :goto_7
.end method

.method public j()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    return v0
.end method

.method public o(I)V
    .locals 4
    .parameter

    .prologue
    .line 397
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    .line 399
    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->df:I

    .line 400
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dc:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/n;->dh:I

    .line 401
    iget v0, p0, Lcom/android/gallery3d/ui/n;->df:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aJ:I

    .line 402
    iget v0, p0, Lcom/android/gallery3d/ui/n;->dh:I

    iput v0, p0, Lcom/android/gallery3d/ui/n;->aK:I

    .line 403
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/ui/n;->dc:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/ui/n;->aL:F

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/n;->a(IIFI)V

    .line 405
    return-void

    .line 397
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/n;->db:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public p(I)V
    .locals 3
    .parameter

    .prologue
    .line 408
    int-to-float v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/n;->a(FFI)V

    .line 409
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 330
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/n;->cL:J

    .line 331
    return-void
.end method
