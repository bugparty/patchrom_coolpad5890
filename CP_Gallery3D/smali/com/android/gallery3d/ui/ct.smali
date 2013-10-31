.class Lcom/android/gallery3d/ui/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic bq:Lcom/android/gallery3d/ui/ej;

.field private yE:Z


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ej;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ej;Lcom/android/gallery3d/ui/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ct;-><init>(Lcom/android/gallery3d/ui/ej;)V

    return-void
.end method

.method private fc()V
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ct;->yE:Z

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ct;->yE:Z

    .line 668
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->b(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/bw;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/bw;->onUp()V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ct;->fc()V

    .line 680
    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/w;->bf()I

    move-result v1

    .line 681
    if-nez v1, :cond_0

    .line 686
    :goto_0
    return v0

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ej;->c(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/x;

    move-result-object v2

    neg-float v3, p3

    float-to-int v3, v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/ui/x;->a(III)V

    .line 684
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->d(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/dg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->d(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/dg;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->em()V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ej;->invalidate()V

    .line 686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ct;->fc()V

    .line 715
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->g(Lcom/android/gallery3d/ui/ej;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ej;->cC()V

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/w;->h(FF)I

    move-result v0

    .line 719
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->b(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/bw;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/bw;->u(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ej;->cD()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ej;->cD()V

    throw v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ct;->fc()V

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->c(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/x;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/w;->bf()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/x;->b(III)I

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->e(Lcom/android/gallery3d/ui/ej;)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->f(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/ec;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ec;->t(F)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ej;->invalidate()V

    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ct;->yE:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/w;->h(FF)I

    move-result v0

    .line 659
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 660
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ct;->yE:Z

    .line 661
    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->b(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/bw;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/bw;->s(I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 705
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ct;->fc()V

    .line 706
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->g(Lcom/android/gallery3d/ui/ej;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v3

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/w;->h(FF)I

    move-result v0

    .line 708
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ct;->bq:Lcom/android/gallery3d/ui/ej;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ej;->b(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/bw;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/bw;->t(I)V

    goto :goto_0
.end method
