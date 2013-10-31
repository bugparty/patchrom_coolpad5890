.class Lcom/android/gallery3d/ui/et;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic BN:Lcom/android/gallery3d/ui/ap;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/et;-><init>(Lcom/android/gallery3d/ui/ap;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 613
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f99999a

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 614
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v4

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/ui/n;->a(FFF)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/n;->c(FF)V

    .line 626
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->V()V

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/ui/et;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cN()Z

    .line 633
    return-void
.end method
