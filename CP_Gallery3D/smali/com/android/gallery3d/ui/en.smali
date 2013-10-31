.class public Lcom/android/gallery3d/ui/en;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final HN:I = 0x1

.field private static final HO:I = 0x1

.field private static final HP:I = 0x2

.field private static final HQ:I = 0x4

.field private static final HR:I = 0x8

.field private static final HS:I = 0x10

.field private static final HT:I = 0x20

.field private static final HU:I = 0x40

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field public static final fa:I = -0x1

.field private static final ku:I = 0xfe

.field private static final lR:I = 0x1


# instance fields
.field private BL:I

.field private Gx:I

.field private HV:Lcom/android/gallery3d/ui/aq;

.field protected HW:Lcom/android/gallery3d/ui/df;

.field private HX:I

.field private HY:I

.field private HZ:Z

.field private final Ia:Landroid/graphics/RectF;

.field private final Ib:Landroid/graphics/RectF;

.field private final Ic:Ljava/util/HashMap;

.field private Id:Lcom/android/gallery3d/ui/m;

.field private Ie:Lcom/android/gallery3d/ui/m;

.field private If:Lcom/android/gallery3d/ui/m;

.field protected Ig:I

.field protected Ih:I

.field protected Ii:F

.field private final Ij:Landroid/graphics/Rect;

.field private final Ik:[Landroid/graphics/Rect;

.field private final Il:Lcom/android/gallery3d/ui/bn;

.field private Im:Z

.field private In:Lcom/android/gallery3d/b/l;

.field private Io:Z

.field private Z:Lcom/android/gallery3d/b/n;

.field protected dX:I

.field protected fx:I

.field protected fy:I

.field protected sh:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bh;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 83
    iput v2, p0, Lcom/android/gallery3d/ui/en;->HX:I

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ia:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ib:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    .line 99
    new-instance v0, Lcom/android/gallery3d/ui/m;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/m;-><init>(Lcom/android/gallery3d/ui/aj;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    .line 100
    new-instance v0, Lcom/android/gallery3d/ui/m;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/m;-><init>(Lcom/android/gallery3d/ui/aj;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    .line 101
    new-instance v0, Lcom/android/gallery3d/ui/m;

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/m;-><init>(Lcom/android/gallery3d/ui/aj;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    .line 104
    iput v1, p0, Lcom/android/gallery3d/ui/en;->fx:I

    .line 105
    iput v1, p0, Lcom/android/gallery3d/ui/en;->fy:I

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ij:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Ik:[Landroid/graphics/Rect;

    .line 116
    new-instance v0, Lcom/android/gallery3d/ui/bn;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/bn;-><init>(Lcom/android/gallery3d/ui/en;Lcom/android/gallery3d/ui/aj;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Il:Lcom/android/gallery3d/ui/bn;

    .line 134
    invoke-interface {p1}, Lcom/android/gallery3d/app/bh;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->Z:Lcom/android/gallery3d/b/n;

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Z:Lcom/android/gallery3d/b/n;

    new-instance v1, Lcom/android/gallery3d/ui/es;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/es;-><init>(Lcom/android/gallery3d/ui/en;Lcom/android/gallery3d/ui/aj;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/en;III)Lcom/android/gallery3d/ui/ep;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/en;->j(III)Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;IIIFI)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    move/from16 v0, p6

    neg-int v1, v0

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 286
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getWidth()I

    move-result v3

    int-to-double v3, v3

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getHeight()I

    move-result v5

    int-to-double v5, v5

    .line 289
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 290
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 291
    mul-double v9, v7, v3

    mul-double v11, v1, v5

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    mul-double v11, v7, v3

    mul-double v13, v1, v5

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 293
    mul-double v10, v1, v3

    mul-double v12, v7, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v1, v3

    mul-double v3, v7, v5

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 296
    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v9

    const/high16 v4, 0x4000

    mul-float v4, v4, p5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 297
    move/from16 v0, p3

    int-to-float v3, v0

    int-to-float v4, v1

    const/high16 v5, 0x4000

    mul-float v5, v5, p5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 298
    int-to-float v4, v2

    int-to-float v5, v9

    div-float v5, v5, p5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 299
    int-to-float v5, v3

    int-to-float v1, v1

    div-float v1, v1, p5

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 302
    const/16 v5, 0xfe

    shl-int v5, v5, p4

    .line 303
    const/4 v6, 0x0

    div-int/2addr v2, v5

    mul-int/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 304
    const/4 v6, 0x0

    div-int/2addr v3, v5

    mul-int/2addr v3, v5

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 305
    iget v5, p0, Lcom/android/gallery3d/ui/en;->fx:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 306
    iget v5, p0, Lcom/android/gallery3d/ui/en;->fy:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 308
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    return-void
.end method

.method private a(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/en;->a(Landroid/graphics/Rect;IIIFI)V

    .line 274
    return-void
.end method

.method static a(Lcom/android/gallery3d/ui/ep;Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x437e

    const/high16 v3, 0x4000

    .line 560
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ep;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 563
    invoke-interface {p1, p0, p2, p3}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 564
    const/4 v0, 0x1

    .line 569
    :goto_1
    return v0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ep;->gk()Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    .line 569
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 570
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    iget v2, v0, Lcom/android/gallery3d/ui/ep;->mX:I

    if-ne v1, v2, :cond_2

    .line 571
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 572
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 577
    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    iget v2, v0, Lcom/android/gallery3d/ui/ep;->mY:I

    if-ne v1, v2, :cond_3

    .line 578
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 579
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    :goto_3
    move-object p0, v0

    .line 585
    goto :goto_0

    .line 574
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 575
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 581
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 582
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/aq;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    return-object v0
.end method

.method private b(IIFI)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getWidth()I

    move-result v7

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getHeight()I

    move-result v8

    .line 201
    const/high16 v0, 0x3f80

    div-float/2addr v0, p3

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/en;->sh:I

    invoke-static {v0, v10, v1}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    .line 206
    iget v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    iget v1, p0, Lcom/android/gallery3d/ui/en;->sh:I

    if-eq v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->Ij:Landroid/graphics/Rect;

    .line 208
    iget v4, p0, Lcom/android/gallery3d/ui/en;->HX:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/en;->a(Landroid/graphics/Rect;IIIFI)V

    .line 209
    int-to-float v0, v7

    div-float/2addr v0, v9

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->BL:I

    .line 210
    int-to-float v0, v8

    div-float/2addr v0, v9

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->Gx:I

    .line 211
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/ui/en;->HX:I

    shl-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f40

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    add-int/lit8 v0, v0, -0x1

    .line 219
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/en;->sh:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 220
    add-int/lit8 v0, v6, 0x2

    iget v1, p0, Lcom/android/gallery3d/ui/en;->sh:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 222
    iget-object v8, p0, Lcom/android/gallery3d/ui/en;->Ik:[Landroid/graphics/Rect;

    move v4, v6

    .line 223
    :goto_1
    if-ge v4, v7, :cond_2

    .line 224
    sub-int v0, v4, v6

    aget-object v1, v8, v0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/en;->a(Landroid/graphics/Rect;IIII)V

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    add-int/lit8 v0, v0, -0x2

    .line 215
    int-to-float v1, v7

    div-float/2addr v1, v9

    int-to-float v2, p1

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/en;->BL:I

    .line 216
    int-to-float v1, v8

    div-float/2addr v1, v9

    int-to-float v2, p2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/en;->Gx:I

    goto :goto_0

    .line 228
    :cond_2
    rem-int/lit8 v0, p4, 0x5a

    if-eqz v0, :cond_3

    .line 260
    :goto_2
    return-void

    .line 230
    :cond_3
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/en;->Io:Z

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    .line 242
    iget v2, v0, Lcom/android/gallery3d/ui/ep;->Ix:I

    .line 243
    if-lt v2, v6, :cond_5

    if-ge v2, v7, :cond_5

    sub-int/2addr v2, v6

    aget-object v2, v8, v2

    iget v3, v0, Lcom/android/gallery3d/ui/ep;->mX:I

    iget v4, v0, Lcom/android/gallery3d/ui/ep;->mY:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/en;->e(Lcom/android/gallery3d/ui/ep;)V

    goto :goto_3

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v2, v6

    .line 250
    :goto_4
    if-ge v2, v7, :cond_9

    .line 251
    const/16 v0, 0xfe

    shl-int v3, v0, v2

    .line 252
    sub-int v0, v2, v6

    aget-object v4, v8, v0

    .line 253
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    move v1, v0

    :goto_5
    if-ge v1, v5, :cond_8

    .line 254
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    :goto_6
    if-ge v0, v9, :cond_7

    .line 255
    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/ui/en;->i(III)V

    .line 254
    add-int/2addr v0, v3

    goto :goto_6

    .line 253
    :cond_7
    add-int v0, v1, v3

    move v1, v0

    goto :goto_5

    .line 250
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 259
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->invalidate()V

    goto :goto_2
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/en;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/en;->HX:I

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/m;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    return-object v0
.end method

.method private declared-synchronized h(III)Lcom/android/gallery3d/ui/ep;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->L()Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 450
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/ep;->l(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/ui/ep;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ep;-><init>(Lcom/android/gallery3d/ui/en;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/en;->k(III)Ljava/lang/Long;

    move-result-object v1

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    .line 469
    if-eqz v0, :cond_1

    .line 470
    iget v1, v0, Lcom/android/gallery3d/ui/ep;->IA:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 471
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/en;->h(III)Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    .line 476
    iget-object v2, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private j(III)Lcom/android/gallery3d/ui/ep;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/en;->k(III)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    return-object v0
.end method

.method private static k(III)Ljava/lang/Long;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x10

    .line 484
    int-to-long v0, p0

    .line 485
    shl-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 486
    shl-long/2addr v0, v4

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private m(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    if-nez p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 151
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    goto :goto_0

    .line 154
    :cond_3
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    goto :goto_0
.end method

.method private o(Lcom/android/gallery3d/ui/b;)V
    .locals 3
    .parameter

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/en;->Io:Z

    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    .line 408
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ep;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/en;->c(Lcom/android/gallery3d/ui/ep;)V

    goto :goto_0

    .line 410
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->cK()V

    .line 141
    :cond_0
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/b;IIIFFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ia:Landroid/graphics/RectF;

    .line 524
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->Ib:Landroid/graphics/RectF;

    .line 525
    add-float v2, p5, p7

    add-float v3, p6, p7

    invoke-virtual {v1, p5, p6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 526
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x437e

    const/high16 v5, 0x437e

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 528
    invoke-direct {p0, p2, p3, p4}, Lcom/android/gallery3d/ui/en;->j(III)Lcom/android/gallery3d/ui/ep;

    move-result-object v2

    .line 529
    if-eqz v2, :cond_4

    .line 530
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/ep;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 531
    iget v3, v2, Lcom/android/gallery3d/ui/ep;->IA:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 532
    iget v3, p0, Lcom/android/gallery3d/ui/en;->HY:I

    if-lez v3, :cond_2

    .line 533
    iget v3, p0, Lcom/android/gallery3d/ui/en;->HY:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/ui/en;->HY:I

    .line 534
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/ep;->j(Lcom/android/gallery3d/ui/b;)V

    .line 543
    :cond_0
    :goto_0
    invoke-static {v2, p1, v0, v1}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/ep;Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    :cond_1
    :goto_1
    return-void

    .line 536
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/en;->HZ:Z

    goto :goto_0

    .line 538
    :cond_3
    iget v3, v2, Lcom/android/gallery3d/ui/ep;->IA:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 539
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/en;->HZ:Z

    .line 540
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/en;->c(Lcom/android/gallery3d/ui/ep;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    if-eqz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    .line 547
    const/16 v3, 0xfe

    shl-int/2addr v3, p4

    .line 548
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/ui/en;->fx:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 549
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/ui/en;->fy:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 550
    int-to-float v6, p2

    mul-float/2addr v6, v4

    int-to-float v7, p3

    mul-float/2addr v7, v5

    add-int v8, p2, v3

    int-to-float v8, v8

    mul-float/2addr v4, v8

    add-int/2addr v3, p3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {v0, v6, v7, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 552
    invoke-interface {p1, v2, v0, v1}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method b(Lcom/android/gallery3d/ui/ep;)V
    .locals 3
    .parameter

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/m;->a(Lcom/android/gallery3d/ui/ep;)Z

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Il:Lcom/android/gallery3d/ui/bn;

    iget-object v0, v0, Lcom/android/gallery3d/ui/bn;->sw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->Il:Lcom/android/gallery3d/ui/bn;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/eh;->a(Lcom/android/gallery3d/ui/ey;)V

    .line 419
    :cond_0
    return-void

    .line 415
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 14
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 363
    iput v0, p0, Lcom/android/gallery3d/ui/en;->HY:I

    .line 364
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/en;->HZ:Z

    .line 366
    iget v4, p0, Lcom/android/gallery3d/ui/en;->HX:I

    .line 367
    iget v11, p0, Lcom/android/gallery3d/ui/en;->dX:I

    .line 369
    if-eqz v11, :cond_0

    .line 370
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 371
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 372
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3, v5}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 373
    int-to-float v2, v11

    const/high16 v3, 0x3f80

    invoke-interface {p1, v2, v5, v5, v3}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 374
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v5}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 377
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/ui/en;->sh:I

    if-eq v4, v0, :cond_2

    .line 378
    const/16 v0, 0xfe

    shl-int v12, v0, v4

    .line 379
    int-to-float v0, v12

    iget v1, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    mul-float v7, v0, v1

    .line 380
    iget-object v13, p0, Lcom/android/gallery3d/ui/en;->Ij:Landroid/graphics/Rect;

    .line 382
    iget v3, v13, Landroid/graphics/Rect;->top:I

    move v10, v9

    :goto_0
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v0, :cond_3

    .line 383
    iget v0, p0, Lcom/android/gallery3d/ui/en;->Gx:I

    int-to-float v0, v0

    int-to-float v1, v10

    mul-float/2addr v1, v7

    add-float v6, v0, v1

    .line 384
    iget v2, v13, Landroid/graphics/Rect;->left:I

    move v8, v9

    :goto_1
    iget v0, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_1

    .line 385
    iget v0, p0, Lcom/android/gallery3d/ui/en;->BL:I

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, v7

    add-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 386
    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/b;IIIFFF)V

    .line 384
    add-int/2addr v2, v12

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 382
    :cond_1
    add-int/2addr v3, v12

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    iget v2, p0, Lcom/android/gallery3d/ui/en;->BL:I

    iget v3, p0, Lcom/android/gallery3d/ui/en;->Gx:I

    iget v1, p0, Lcom/android/gallery3d/ui/en;->fx:I

    int-to-float v1, v1

    iget v4, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v1, p0, Lcom/android/gallery3d/ui/en;->fy:I

    int-to-float v1, v1

    iget v5, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/df;->a(Lcom/android/gallery3d/ui/b;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 398
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/en;->HZ:Z

    if-eqz v0, :cond_7

    .line 399
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/en;->Io:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/en;->o(Lcom/android/gallery3d/ui/b;)V

    .line 403
    :cond_5
    :goto_2
    return-void

    .line 395
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_6

    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    :cond_6
    throw v0

    .line 401
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->invalidate()V

    goto :goto_2
.end method

.method declared-synchronized c(Lcom/android/gallery3d/ui/ep;)V
    .locals 2
    .parameter

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/m;->a(Lcom/android/gallery3d/ui/ep;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(IIFI)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iget v0, p0, Lcom/android/gallery3d/ui/en;->Ig:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/en;->Ih:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    .line 314
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/en;->Ig:I

    .line 315
    iput p2, p0, Lcom/android/gallery3d/ui/en;->Ih:I

    .line 316
    iput p3, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    .line 317
    iput p4, p0, Lcom/android/gallery3d/ui/en;->dX:I

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/en;->b(IIFI)V

    .line 319
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->invalidate()V

    .line 320
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cK()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->gf()V

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/en;->HW:Lcom/android/gallery3d/ui/df;

    .line 163
    iput v1, p0, Lcom/android/gallery3d/ui/en;->fx:I

    .line 164
    iput v1, p0, Lcom/android/gallery3d/ui/en;->fy:I

    .line 165
    iput v1, p0, Lcom/android/gallery3d/ui/en;->sh:I

    .line 172
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/en;->Ig:I

    iget v1, p0, Lcom/android/gallery3d/ui/en;->Ih:I

    iget v2, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    iget v3, p0, Lcom/android/gallery3d/ui/en;->dX:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/en;->b(IIFI)V

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/en;->invalidate()V

    .line 174
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/aq;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/en;->m(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/aq;->k()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->fx:I

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/aq;->j()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->fy:I

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/aq;->m()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/en;->sh:I

    goto :goto_0
.end method

.method d(Lcom/android/gallery3d/ui/ep;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget v1, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    monitor-exit p0

    .line 442
    :goto_0
    return v0

    .line 431
    :cond_0
    const/4 v1, 0x4

    iput v1, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 432
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ep;->gj()Z

    move-result v1

    .line 434
    monitor-enter p0

    .line 435
    :try_start_1
    iget v2, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 436
    const/16 v1, 0x40

    iput v1, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 437
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;

    .line 438
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/m;->a(Lcom/android/gallery3d/ui/ep;)Z

    .line 439
    monitor-exit p0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 432
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 441
    :cond_1
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    :goto_1
    :try_start_3
    iput v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 442
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    .line 441
    :cond_2
    const/16 v0, 0x10

    goto :goto_1
.end method

.method declared-synchronized e(Lcom/android/gallery3d/ui/ep;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 458
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 462
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/m;->a(Lcom/android/gallery3d/ui/ep;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized gf()V
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/en;->e(Lcom/android/gallery3d/ui/ep;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit p0

    return-void
.end method

.method public gg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/en;->Im:Z

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    .line 329
    iput-object v3, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ep;

    .line 333
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ep;->recycle()V

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ij:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Ie:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->If:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->M()V

    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->L()Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    .line 342
    :goto_1
    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ep;->recycle()V

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->Id:Lcom/android/gallery3d/ui/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/m;->L()Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    goto :goto_1

    .line 346
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/en;->m(Landroid/graphics/Bitmap;)V

    .line 348
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public gh()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->Z:Lcom/android/gallery3d/b/n;

    new-instance v2, Lcom/android/gallery3d/ui/es;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/es;-><init>(Lcom/android/gallery3d/ui/en;Lcom/android/gallery3d/ui/aj;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/en;->In:Lcom/android/gallery3d/b/l;

    .line 354
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/en;->Im:Z

    if-eqz v1, :cond_2

    .line 355
    iget v1, p0, Lcom/android/gallery3d/ui/en;->Ig:I

    iget v2, p0, Lcom/android/gallery3d/ui/en;->Ih:I

    iget v3, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    iget v4, p0, Lcom/android/gallery3d/ui/en;->dX:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/en;->b(IIFI)V

    .line 356
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/en;->Im:Z

    .line 357
    iget-object v1, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/en;->HV:Lcom/android/gallery3d/ui/aq;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/aq;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/en;->m(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/am;->onLayout(ZIIII)V

    .line 180
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/en;->Ig:I

    iget v1, p0, Lcom/android/gallery3d/ui/en;->Ih:I

    iget v2, p0, Lcom/android/gallery3d/ui/en;->Ii:F

    iget v3, p0, Lcom/android/gallery3d/ui/en;->dX:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/en;->b(IIFI)V

    .line 181
    :cond_0
    return-void
.end method
