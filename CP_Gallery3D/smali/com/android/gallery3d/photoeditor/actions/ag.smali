.class Lcom/android/gallery3d/photoeditor/actions/ag;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic zA:I

.field final synthetic zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/TouchView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zA:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 89
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 90
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    .line 91
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zA:I

    int-to-float v6, v6

    cmpl-float v6, p3, v6

    if-lez v6, :cond_1

    cmpg-float v6, v1, v0

    if-gez v6, :cond_1

    int-to-float v6, v4

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/j;->bP()V

    .line 101
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zA:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, p3, v6

    if-gez v6, :cond_2

    cmpg-float v6, v1, v0

    if-gez v6, :cond_2

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/j;->bO()V

    goto :goto_0

    .line 95
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zA:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-gez v2, :cond_3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    neg-int v2, v5

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/j;->bQ()V

    goto :goto_0

    .line 97
    :cond_3
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zA:I

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    int-to-float v0, v5

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/j;->bR()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->a(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->a(FFLandroid/graphics/PointF;)V

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ag;->zB:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->a(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/c;->a(Landroid/graphics/PointF;)V

    .line 78
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
