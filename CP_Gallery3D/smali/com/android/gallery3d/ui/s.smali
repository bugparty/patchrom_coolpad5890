.class public Lcom/android/gallery3d/ui/s;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropView"

.field private static final aW:I = 0x4e2

.field private static final eW:I = 0x1d4c0

.field private static final eX:I = -0xff7501

.field private static final eY:I = -0x1000000

.field private static final eZ:F = 3.0f

.field private static final fa:I = -0x1

.field private static final fb:I = 0x1e

.field private static final fc:F = 16.0f

.field public static final fd:F = -1.0f

.field private static final fe:I = 0x3

.field private static final ff:F = 2.0f

.field private static final fg:I = 0x1

.field private static final fh:I = 0x2

.field private static final fi:I = 0x4

.field private static final fj:I = 0x8

.field private static final fk:I = 0x10

.field private static final fl:F = 0.8f

.field private static final fm:F = 0.4f

.field private static final fn:F = 0.6f

.field private static final fo:I = 0x40

.field private static final fp:I = 0x1


# instance fields
.field private Y:Landroid/os/Handler;

.field private et:Lcom/android/gallery3d/app/bm;

.field private fA:Lcom/android/gallery3d/ui/as;

.field private fB:I

.field private fq:F

.field private fr:F

.field private fs:F

.field private ft:Lcom/android/gallery3d/ui/dh;

.field private fu:Lcom/android/gallery3d/ui/cj;

.field private fv:Lcom/android/gallery3d/ui/en;

.field private fw:Lcom/android/gallery3d/ui/g;

.field private fx:I

.field private fy:I

.field private fz:Lcom/android/gallery3d/ui/as;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x4040

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 78
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/s;->fq:F

    .line 79
    iput v1, p0, Lcom/android/gallery3d/ui/s;->fr:F

    .line 80
    iput v1, p0, Lcom/android/gallery3d/ui/s;->fs:F

    .line 87
    new-instance v0, Lcom/android/gallery3d/ui/g;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/g;-><init>(Lcom/android/gallery3d/ui/s;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    .line 89
    iput v3, p0, Lcom/android/gallery3d/ui/s;->fx:I

    .line 90
    iput v3, p0, Lcom/android/gallery3d/ui/s;->fy:I

    .line 94
    new-instance v0, Lcom/android/gallery3d/ui/as;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/as;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->fz:Lcom/android/gallery3d/ui/as;

    .line 95
    new-instance v0, Lcom/android/gallery3d/ui/as;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/as;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->fA:Lcom/android/gallery3d/ui/as;

    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/ui/s;->et:Lcom/android/gallery3d/app/bm;

    .line 101
    new-instance v0, Lcom/android/gallery3d/ui/en;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/en;-><init>(Lcom/android/gallery3d/app/bh;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/dh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/dh;-><init>(Lcom/android/gallery3d/ui/s;Lcom/android/gallery3d/ui/al;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->ft:Lcom/android/gallery3d/ui/dh;

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/cj;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/cj;-><init>(Lcom/android/gallery3d/ui/s;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/am;)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->ft:Lcom/android/gallery3d/ui/dh;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/am;)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/am;)V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cj;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fz:Lcom/android/gallery3d/ui/as;

    const v1, -0xff7501

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/as;->setColor(I)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fz:Lcom/android/gallery3d/ui/as;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/as;->j(F)V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fA:Lcom/android/gallery3d/ui/as;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/as;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fA:Lcom/android/gallery3d/ui/as;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/as;->j(F)V

    .line 117
    new-instance v0, Lcom/android/gallery3d/ui/al;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/al;-><init>(Lcom/android/gallery3d/ui/s;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/s;->Y:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    return-object v0
.end method

.method private a(IIF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fx:I

    sub-int/2addr v0, p1

    .line 154
    iget v1, p0, Lcom/android/gallery3d/ui/s;->fy:I

    sub-int/2addr v1, p2

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    .line 156
    iget v3, p0, Lcom/android/gallery3d/ui/s;->fB:I

    .line 157
    sparse-switch v3, :sswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 159
    :sswitch_1
    const/16 v1, 0x5a

    invoke-virtual {v2, p2, v0, p3, v1}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 160
    :sswitch_2
    const/16 v3, 0xb4

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 161
    :sswitch_3
    const/16 v0, 0x10e

    invoke-virtual {v2, v1, p1, p3, v0}, Lcom/android/gallery3d/ui/en;->c(IIFI)Z

    move-result v0

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fA:Lcom/android/gallery3d/ui/as;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/s;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fx:I

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/ui/s;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fy:I

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/app/bm;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->et:Lcom/android/gallery3d/app/bm;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/ui/s;)F
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fq:F

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/ui/s;)F
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fr:F

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/ui/s;)F
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fs:F

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fz:Lcom/android/gallery3d/ui/as;

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/ui/s;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/dh;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->ft:Lcom/android/gallery3d/ui/dh;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/aq;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 751
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 752
    invoke-interface {p1}, Lcom/android/gallery3d/ui/aq;->j()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/s;->fx:I

    .line 753
    invoke-interface {p1}, Lcom/android/gallery3d/ui/aq;->k()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/s;->fy:I

    .line 759
    :goto_0
    iput p2, p0, Lcom/android/gallery3d/ui/s;->fB:I

    .line 761
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/aq;)V

    .line 762
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->initialize()V

    .line 763
    return-void

    .line 755
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/aq;->k()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/s;->fx:I

    .line 756
    invoke-interface {p1}, Lcom/android/gallery3d/ui/aq;->j()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/s;->fy:I

    goto :goto_0
.end method

.method public aA()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cj;->eS()V

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cj;->setVisibility(I)V

    .line 799
    return-void
.end method

.method public az()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cj;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-static {v0}, Lcom/android/gallery3d/ui/cj;->a(Lcom/android/gallery3d/ui/cj;)Landroid/graphics/RectF;

    move-result-object v1

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/android/gallery3d/ui/s;->fx:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/gallery3d/ui/s;->fy:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/android/gallery3d/ui/s;->fx:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/android/gallery3d/ui/s;->fy:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method public c(Lcom/android/gallery3d/ui/b;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    .line 169
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/g;->h(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/s;->invalidate()V

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->B()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->C()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->getScale()F

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/gallery3d/ui/s;->a(IIF)Z

    .line 171
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 172
    return-void
.end method

.method public d(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->a()V

    .line 177
    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 766
    iget v1, p0, Lcom/android/gallery3d/ui/s;->fB:I

    .line 767
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 769
    const-wide v4, 0x40fd4c0000000000L

    mul-int v0, v2, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 774
    div-int/lit8 v4, v1, 0x5a

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 775
    int-to-float v4, v2

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    .line 776
    int-to-float v5, v3

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 777
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 779
    int-to-float v1, v1

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v6, v1, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 780
    int-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v5

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 781
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, p1, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    :goto_0
    new-instance v1, Lcom/android/gallery3d/ui/p;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/p;-><init>(Lcom/android/gallery3d/ui/s;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/p;->start()V

    .line 794
    return-void

    .line 783
    :cond_0
    int-to-float v4, v3

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    .line 784
    int-to-float v5, v2

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 785
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 787
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 789
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v1, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    int-to-float v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v5

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 791
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v10}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, p1, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public g(F)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/android/gallery3d/ui/s;->fq:F

    .line 128
    return-void
.end method

.method public g(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/android/gallery3d/ui/s;->fr:F

    .line 132
    iput p2, p0, Lcom/android/gallery3d/ui/s;->fs:F

    .line 133
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fy:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fx:I

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 137
    sub-int v0, p4, p2

    .line 138
    sub-int v1, p5, p3

    .line 140
    iget-object v2, p0, Lcom/android/gallery3d/ui/s;->ft:Lcom/android/gallery3d/ui/dh;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/dh;->layout(IIII)V

    .line 141
    iget-object v2, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/cj;->layout(IIII)V

    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/android/gallery3d/ui/en;->layout(IIII)V

    .line 143
    iget v0, p0, Lcom/android/gallery3d/ui/s;->fy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/g;->initialize()V

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cj;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fw:Lcom/android/gallery3d/ui/g;

    iget-object v1, p0, Lcom/android/gallery3d/ui/s;->fu:Lcom/android/gallery3d/ui/cj;

    invoke-static {v1}, Lcom/android/gallery3d/ui/cj;->a(Lcom/android/gallery3d/ui/cj;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/g;->c(Landroid/graphics/RectF;)V

    .line 150
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->gg()V

    .line 807
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/gallery3d/ui/s;->fv:Lcom/android/gallery3d/ui/en;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/en;->gh()V

    .line 803
    return-void
.end method
