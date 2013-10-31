.class public Lcom/android/gallery3d/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hj:Landroid/widget/OverScroller;

.field private hk:Z

.field private mOverflingDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    .line 32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/x;->mOverflingDistance:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/x;->getPosition()I

    move-result v1

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/x;->hk:Z

    if-eqz v3, :cond_0

    iget v9, p0, Lcom/android/gallery3d/ui/x;->mOverflingDistance:I

    :goto_0
    move v3, p1

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 82
    return-void

    :cond_0
    move v9, v2

    .line 76
    goto :goto_0
.end method

.method public b(III)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v6

    .line 88
    add-int v0, v6, p1

    invoke-static {v0, p2, p3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    .line 89
    if-eq v7, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    sub-int v3, v7, v1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 94
    :cond_0
    add-int v0, v6, p1

    sub-int/2addr v0, v7

    return v0
.end method

.method public bh()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 55
    return-void
.end method

.method public c(J)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/x;->hk:Z

    .line 38
    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setPosition(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/x;->hj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 72
    return-void
.end method
