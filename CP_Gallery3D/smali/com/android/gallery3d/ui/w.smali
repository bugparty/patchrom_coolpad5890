.class public Lcom/android/gallery3d/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gN:I

.field private gO:I

.field private gP:I

.field private gQ:I

.field private gR:I

.field private gS:I

.field private gT:Lcom/android/gallery3d/ui/du;

.field private gU:I

.field private gV:I

.field private gW:I

.field private gX:I

.field private gY:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/w;)I
    .locals 1
    .parameter

    .prologue
    .line 433
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gP:I

    return v0
.end method

.method private a(IIII[I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 510
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v0, p2

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v2, p4

    div-int/2addr v0, v2

    .line 511
    if-nez v0, :cond_0

    move v0, v1

    .line 512
    :cond_0
    iput v0, p0, Lcom/android/gallery3d/ui/w;->gU:I

    .line 515
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gU:I

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gP:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 516
    mul-int v2, v0, p4

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gS:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 518
    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    aput v0, p5, v4

    .line 521
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gP:I

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gU:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gU:I

    div-int/2addr v0, v2

    .line 522
    mul-int v2, v0, p3

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gS:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gV:I

    .line 526
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gV:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p5, v1

    .line 527
    return-void
.end method

.method private bb()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 531
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v0, v0, Lcom/android/gallery3d/ui/du;->DL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 532
    iput v6, p0, Lcom/android/gallery3d/ui/w;->gS:I

    .line 533
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v0, v0, Lcom/android/gallery3d/ui/du;->DL:I

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v0, v0, Lcom/android/gallery3d/ui/du;->DM:I

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gR:I

    .line 542
    :goto_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 544
    iget v1, p0, Lcom/android/gallery3d/ui/w;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/w;->mHeight:I

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v4, p0, Lcom/android/gallery3d/ui/w;->gR:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/w;->a(IIII[I)V

    .line 545
    aget v0, v5, v6

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gX:I

    .line 546
    aget v0, v5, v7

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gY:I

    .line 552
    invoke-direct {p0}, Lcom/android/gallery3d/ui/w;->bc()V

    .line 553
    return-void

    .line 536
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/w;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/w;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v0, v0, Lcom/android/gallery3d/ui/du;->DN:I

    .line 537
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v1, v1, Lcom/android/gallery3d/ui/du;->DP:I

    iput v1, p0, Lcom/android/gallery3d/ui/w;->gS:I

    .line 538
    iget v1, p0, Lcom/android/gallery3d/ui/w;->mHeight:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gS:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gR:I

    .line 539
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gR:I

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    iget v0, v0, Lcom/android/gallery3d/ui/du;->DO:I

    goto :goto_1
.end method

.method private bc()V
    .locals 4

    .prologue
    .line 562
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gW:I

    .line 565
    iget v1, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    .line 566
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gU:I

    mul-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 567
    iget v2, p0, Lcom/android/gallery3d/ui/w;->mWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 569
    iget v2, p0, Lcom/android/gallery3d/ui/w;->gP:I

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gU:I

    mul-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 570
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/w;->k(II)V

    .line 579
    return-void
.end method

.method private k(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 588
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gN:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/w;->gO:I

    if-ne p2, v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_0
    if-ge p1, p2, :cond_1

    .line 590
    iput p1, p0, Lcom/android/gallery3d/ui/w;->gN:I

    .line 591
    iput p2, p0, Lcom/android/gallery3d/ui/w;->gO:I

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gO:I

    iput v0, p0, Lcom/android/gallery3d/ui/w;->gN:I

    goto :goto_0
.end method


# virtual methods
.method public B(I)Z
    .locals 3
    .parameter

    .prologue
    .line 460
    iput p1, p0, Lcom/android/gallery3d/ui/w;->gP:I

    .line 461
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gY:I

    .line 462
    iget v1, p0, Lcom/android/gallery3d/ui/w;->gX:I

    .line 463
    invoke-direct {p0}, Lcom/android/gallery3d/ui/w;->bb()V

    .line 464
    iget v2, p0, Lcom/android/gallery3d/ui/w;->gX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/w;->gY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C(I)Landroid/graphics/Rect;
    .locals 5
    .parameter

    .prologue
    .line 470
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gU:I

    div-int v0, p1, v0

    .line 471
    iget v1, p0, Lcom/android/gallery3d/ui/w;->gU:I

    mul-int/2addr v1, v0

    sub-int v1, p1, v1

    .line 477
    iget v2, p0, Lcom/android/gallery3d/ui/w;->gY:I

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v4, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v3, v4

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 478
    iget v2, p0, Lcom/android/gallery3d/ui/w;->gX:I

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gR:I

    iget v4, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 479
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/w;->gR:I

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public a(Lcom/android/gallery3d/ui/du;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/gallery3d/ui/w;->gT:Lcom/android/gallery3d/ui/du;

    .line 457
    return-void
.end method

.method public aZ()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    return v0
.end method

.method public ba()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gR:I

    return v0
.end method

.method public bd()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gN:I

    return v0
.end method

.method public be()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gO:I

    return v0
.end method

.method public bf()I
    .locals 2

    .prologue
    .line 644
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gV:I

    iget v1, p0, Lcom/android/gallery3d/ui/w;->mWidth:I

    sub-int/2addr v0, v1

    .line 645
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gV:I

    return v0
.end method

.method public h(FF)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 606
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gW:I

    add-int/2addr v1, v2

    .line 607
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    .line 609
    iget v3, p0, Lcom/android/gallery3d/ui/w;->gY:I

    sub-int/2addr v1, v3

    .line 610
    iget v3, p0, Lcom/android/gallery3d/ui/w;->gX:I

    sub-int/2addr v2, v3

    .line 612
    if-ltz v1, :cond_0

    if-gez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v4, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v3, v4

    div-int v3, v1, v3

    .line 617
    iget v4, p0, Lcom/android/gallery3d/ui/w;->gR:I

    iget v5, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v4, v5

    div-int v4, v2, v4

    .line 623
    iget v5, p0, Lcom/android/gallery3d/ui/w;->gU:I

    if-ge v4, v5, :cond_0

    .line 627
    iget v5, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    iget v6, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v5, v6

    rem-int/2addr v1, v5

    iget v5, p0, Lcom/android/gallery3d/ui/w;->gQ:I

    if-ge v1, v5, :cond_0

    .line 631
    iget v1, p0, Lcom/android/gallery3d/ui/w;->gR:I

    iget v5, p0, Lcom/android/gallery3d/ui/w;->gS:I

    add-int/2addr v1, v5

    rem-int v1, v2, v1

    iget v2, p0, Lcom/android/gallery3d/ui/w;->gR:I

    if-ge v1, v2, :cond_0

    .line 635
    iget v1, p0, Lcom/android/gallery3d/ui/w;->gU:I

    mul-int/2addr v1, v3

    add-int/2addr v1, v4

    .line 639
    iget v2, p0, Lcom/android/gallery3d/ui/w;->gP:I

    if-ge v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 582
    iget v0, p0, Lcom/android/gallery3d/ui/w;->gW:I

    if-ne v0, p1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/w;->gW:I

    .line 584
    invoke-direct {p0}, Lcom/android/gallery3d/ui/w;->bc()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 556
    iput p1, p0, Lcom/android/gallery3d/ui/w;->mWidth:I

    .line 557
    iput p2, p0, Lcom/android/gallery3d/ui/w;->mHeight:I

    .line 558
    invoke-direct {p0}, Lcom/android/gallery3d/ui/w;->bb()V

    .line 559
    return-void
.end method
