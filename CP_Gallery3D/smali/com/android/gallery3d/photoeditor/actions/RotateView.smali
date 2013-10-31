.class Lcom/android/gallery3d/photoeditor/actions/RotateView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "SourceFile"


# static fields
.field private static final Fr:F = 3.1415927f

.field private static final Fs:F = 1.5707964f

.field private static final Ft:F = 57.295776f


# instance fields
.field private FA:Z

.field private FB:F

.field private FC:F

.field private FD:F

.field private FE:F

.field private FF:F

.field private final Fu:Landroid/graphics/Paint;

.field private final Fv:Landroid/graphics/Path;

.field private final Fw:Landroid/graphics/Path;

.field private final Fx:I

.field private final Fy:I

.field private Fz:Lcom/android/gallery3d/photoeditor/actions/e;

.field private centerX:I

.field private centerY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fx:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fy:I

    .line 77
    return-void

    .line 73
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private c(FZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 212
    neg-float v0, p1

    const v1, 0x42652ee0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FD:F

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/e;->a(FZ)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->invalidate()V

    .line 217
    return-void
.end method

.method private f(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter

    .prologue
    const v5, 0x40490fdb

    const/4 v4, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 154
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 157
    cmpl-float v2, v1, v4

    if-nez v2, :cond_2

    .line 158
    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    const v0, 0x3fc90fdb

    .line 163
    :goto_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    .line 164
    sub-float/2addr v0, v5

    .line 168
    :cond_0
    :goto_1
    return v0

    .line 158
    :cond_1
    const v0, -0x4036f025

    goto :goto_0

    .line 160
    :cond_2
    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    .line 165
    :cond_3
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 166
    add-float/2addr v0, v5

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/e;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    .line 97
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FA:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fx:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FD:F

    neg-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fy:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fu:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4080

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onSizeChanged(IIII)V

    .line 108
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    .line 109
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 113
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 114
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    neg-float v3, v1

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v2, v2

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fw:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->centerX:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v1, v0, v5

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    add-float/2addr v0, v1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v1, v0, v5

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fv:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    add-float/2addr v0, v1

    goto :goto_1

    .line 133
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return v3

    .line 178
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FD:F

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FE:F

    .line 179
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->f(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FF:F

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/e;->onStartTrackingTouch()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->f(Landroid/view/MotionEvent;)F

    move-result v0

    .line 188
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FF:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FE:F

    add-float/2addr v1, v2

    .line 190
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FB:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FC:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 193
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FD:F

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FE:F

    .line 194
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FF:F

    goto :goto_0

    .line 196
    :cond_2
    neg-float v0, v1

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->c(FZ)V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->Fz:Lcom/android/gallery3d/photoeditor/actions/e;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/e;->onStopTrackingTouch()V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public v(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FA:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->invalidate()V

    .line 102
    return-void
.end method

.method public x(F)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->c(FZ)V

    .line 81
    return-void
.end method

.method public y(F)V
    .locals 2
    .parameter

    .prologue
    .line 87
    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 88
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FB:F

    .line 92
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FB:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FC:F

    .line 93
    return-void

    .line 90
    :cond_0
    const v0, 0x42652ee0

    div-float v0, p1, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateView;->FB:F

    goto :goto_0
.end method
