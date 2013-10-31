.class Lcom/android/gallery3d/ui/ep;
.super Lcom/android/gallery3d/ui/an;
.source "SourceFile"


# instance fields
.field volatile IA:I

.field Ix:I

.field Iy:Lcom/android/gallery3d/ui/ep;

.field Iz:Landroid/graphics/Bitmap;

.field mX:I

.field mY:I

.field final synthetic sx:Lcom/android/gallery3d/ui/en;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/en;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;-><init>()V

    .line 594
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 597
    iput p2, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    .line 598
    iput p3, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    .line 599
    iput p4, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    .line 600
    return-void
.end method


# virtual methods
.method protected cp()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 625
    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/ui/ep;->IA:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;

    .line 630
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;

    .line 631
    iput v1, p0, Lcom/android/gallery3d/ui/ep;->IA:I

    .line 632
    return-object v0

    .line 625
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    const-string v2, "TileImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method gj()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 610
    const/16 v1, 0x100

    .line 611
    iget v2, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    shl-int v2, v0, v2

    .line 613
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    invoke-static {v3}, Lcom/android/gallery3d/ui/en;->b(Lcom/android/gallery3d/ui/en;)Lcom/android/gallery3d/ui/aq;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    iget v5, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    sub-int v2, v6, v2

    invoke-interface {v3, v4, v5, v2, v1}, Lcom/android/gallery3d/ui/aq;->b(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/a/cy;->n(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ep;->Iz:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    :goto_1
    return v0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    const-string v2, "TileImageView"

    const-string v3, "fail to decode tile"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public gk()Lcom/android/gallery3d/ui/ep;
    .locals 4

    .prologue
    .line 643
    iget v0, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    iget v1, v1, Lcom/android/gallery3d/ui/en;->sh:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    .line 644
    :cond_0
    const/16 v0, 0xfe

    iget v1, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    add-int/lit8 v1, v1, 0x1

    shl-int/2addr v0, v1

    .line 645
    iget v1, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    div-int/2addr v1, v0

    mul-int/2addr v1, v0

    .line 646
    iget v2, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    .line 647
    iget-object v2, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    iget v3, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/android/gallery3d/ui/en;->a(Lcom/android/gallery3d/ui/en;III)Lcom/android/gallery3d/ui/ep;

    move-result-object v0

    goto :goto_0
.end method

.method protected h(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    return-void
.end method

.method public l(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput p1, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    .line 637
    iput p2, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    .line 638
    iput p3, p0, Lcom/android/gallery3d/ui/ep;->Ix:I

    .line 639
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ep;->cF()V

    .line 640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 652
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/ep;->mX:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/ep;->mY:I

    div-int/lit16 v3, v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    invoke-static {v3}, Lcom/android/gallery3d/ui/en;->c(Lcom/android/gallery3d/ui/en;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/gallery3d/ui/ep;->sx:Lcom/android/gallery3d/ui/en;

    iget v3, v3, Lcom/android/gallery3d/ui/en;->sh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
