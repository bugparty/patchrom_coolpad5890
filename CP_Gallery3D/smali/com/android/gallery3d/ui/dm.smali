.class Lcom/android/gallery3d/ui/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BJ:I

.field private BK:I

.field private BL:I

.field private BM:Lcom/android/gallery3d/ui/df;

.field final synthetic BN:Lcom/android/gallery3d/ui/ap;

.field private dX:I

.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dm;-><init>(Lcom/android/gallery3d/ui/ap;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dm;Lcom/android/gallery3d/ui/df;)Lcom/android/gallery3d/ui/df;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dm;)Z
    .locals 1
    .parameter

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dm;->mVisible:Z

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/dm;)I
    .locals 1
    .parameter

    .prologue
    .line 752
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->BL:I

    return v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/dm;)Lcom/android/gallery3d/ui/df;
    .locals 1
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    return-object v0
.end method


# virtual methods
.method public a(ZLandroid/graphics/Bitmap;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/dm;->mEnabled:Z

    .line 765
    iput p3, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    .line 766
    if-nez p2, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 768
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    .line 780
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p2, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 773
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    .line 778
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dm;->fE()V

    goto :goto_0

    .line 776
    :cond_3
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    goto :goto_1
.end method

.method public aP(I)V
    .locals 3
    .parameter

    .prologue
    .line 783
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dm;->mVisible:Z

    .line 784
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    iget v1, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/ap;->d(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/gallery3d/ui/dm;->BL:I

    .line 786
    return-void

    .line 783
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aQ(I)V
    .locals 3
    .parameter

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dm;->mVisible:Z

    .line 790
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    iget v1, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    iget v2, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/ap;->d(III)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/dm;->BL:I

    .line 792
    return-void

    .line 789
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fD()I
    .locals 2

    .prologue
    .line 795
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->q(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->q(II)I

    move-result v0

    goto :goto_0
.end method

.method public fE()V
    .locals 12

    .prologue
    const/16 v11, 0x320

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v7

    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v8

    .line 809
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    move v6, v2

    .line 811
    :goto_1
    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/ui/n;->e(II)F

    move-result v0

    .line 815
    :goto_2
    int-to-float v3, v7

    int-to-float v4, v8

    div-float/2addr v3, v4

    int-to-float v4, v8

    int-to-float v5, v7

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 816
    const v4, 0x3f3ae148

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    const v4, 0x3f428f5c

    cmpg-float v4, v3, v4

    if-lez v4, :cond_2

    :cond_1
    const-wide v4, 0x3fe1eb851eb851ecL

    float-to-double v9, v3

    cmpg-double v4, v4, v9

    if-gtz v4, :cond_a

    float-to-double v3, v3

    const-wide v9, 0x3fe23d70a3d70a3dL

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_a

    :cond_2
    move v3, v2

    .line 817
    :goto_3
    if-eqz v3, :cond_7

    .line 819
    iget-object v3, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_b

    move v5, v2

    .line 821
    :goto_4
    if-eqz v6, :cond_c

    iget-object v3, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Lcom/android/gallery3d/ui/n;->g(II)Z

    move-result v3

    move v4, v3

    .line 825
    :goto_5
    if-eqz v6, :cond_3

    if-nez v5, :cond_4

    :cond_3
    if-nez v6, :cond_d

    if-nez v5, :cond_d

    :cond_4
    move v3, v2

    .line 828
    :goto_6
    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->j(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/en;

    move-result-object v3

    iget v3, v3, Lcom/android/gallery3d/ui/en;->fy:I

    if-ge v3, v11, :cond_5

    if-lt v8, v11, :cond_6

    :cond_5
    move v1, v2

    .line 831
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    const v1, 0x3f147ae1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    const v1, 0x3f9d70a4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_7

    .line 833
    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/ui/n;->f(II)F

    move-result v0

    .line 840
    :cond_7
    :goto_8
    int-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    .line 841
    int-to-float v1, v8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    goto/16 :goto_0

    :cond_8
    move v6, v1

    .line 809
    goto/16 :goto_1

    .line 811
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lcom/android/gallery3d/ui/n;->e(II)F

    move-result v0

    goto/16 :goto_2

    :cond_a
    move v3, v1

    .line 816
    goto :goto_3

    :cond_b
    move v5, v1

    .line 819
    goto :goto_4

    .line 821
    :cond_c
    iget-object v3, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Lcom/android/gallery3d/ui/n;->g(II)Z

    move-result v3

    move v4, v3

    goto :goto_5

    :cond_d
    move v3, v1

    .line 825
    goto :goto_6

    .line 828
    :cond_e
    iget-object v3, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ap;->j(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/en;

    move-result-object v3

    iget v3, v3, Lcom/android/gallery3d/ui/en;->fx:I

    if-ge v3, v11, :cond_f

    if-lt v7, v11, :cond_6

    :cond_f
    move v1, v2

    goto :goto_7

    .line 833
    :cond_10
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lcom/android/gallery3d/ui/n;->f(II)F

    move-result v0

    goto :goto_8
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dm;->mEnabled:Z

    return v0
.end method

.method public m(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 849
    iget v1, p0, Lcom/android/gallery3d/ui/dm;->BL:I

    .line 850
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->getHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_1

    .line 853
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 855
    int-to-float v0, v1

    int-to-float v2, v3

    invoke-interface {p1, v0, v2, v4}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 856
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v4, v4, v2}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 857
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v2, v3

    int-to-float v2, v2

    invoke-interface {p1, v0, v2, v4}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dm;->BM:Lcom/android/gallery3d/ui/df;

    iget v2, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v1, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/dm;->BJ:I

    iget v5, p0, Lcom/android/gallery3d/ui/dm;->BK:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/df;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 861
    iget v0, p0, Lcom/android/gallery3d/ui/dm;->dX:I

    if-eqz v0, :cond_1

    .line 862
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 865
    :cond_1
    return-void
.end method
