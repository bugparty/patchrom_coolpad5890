.class Lcom/android/gallery3d/photoeditor/actions/FlipView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "SourceFile"


# static fields
.field private static final EF:F = 20.0f


# instance fields
.field private EG:Lcom/android/gallery3d/photoeditor/actions/x;

.field private EH:F

.field private EI:F

.field private EJ:F

.field private EK:F

.field private EL:F

.field private EM:F

.field private EN:F

.field private EO:Z

.field private EP:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private a(ZFF)F
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const v1, 0x3eb33333

    mul-float/2addr v1, v0

    .line 77
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EI:F

    sub-float v0, p2, v0

    .line 79
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    move v0, v1

    .line 82
    :goto_2
    if-eqz p1, :cond_4

    .line 83
    sub-float v2, p2, v0

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EI:F

    .line 88
    :cond_0
    :goto_3
    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EH:F

    mul-float/2addr v0, v1

    return v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EJ:F

    sub-float/2addr v0, p3

    goto :goto_1

    .line 80
    :cond_3
    neg-float v0, v1

    goto :goto_2

    .line 85
    :cond_4
    add-float v2, v0, p3

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EJ:F

    goto :goto_3
.end method

.method private b(FFZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EK:F

    .line 142
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EL:F

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/gallery3d/photoeditor/actions/x;->a(FFZ)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/x;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    .line 59
    return-void
.end method

.method public m(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->b(FFZ)V

    .line 63
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 98
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EO:Z

    .line 99
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EK:F

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EM:F

    .line 100
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EL:F

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EN:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EI:F

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EJ:F

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/x;->onStartTrackingTouch()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 114
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EO:Z

    if-eqz v4, :cond_3

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EP:Z

    .line 116
    :cond_1
    :goto_1
    invoke-direct {p0, v0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->a(ZFF)F

    move-result v2

    .line 117
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EO:Z

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41a0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 118
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EO:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EP:Z

    .line 122
    :cond_2
    if-eqz v0, :cond_4

    .line 123
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EM:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EN:F

    invoke-direct {p0, v0, v2, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->b(FFZ)V

    goto :goto_0

    .line 114
    :cond_3
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EI:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EJ:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v0, v1

    goto :goto_1

    .line 125
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EM:F

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EN:F

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->b(FFZ)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EG:Lcom/android/gallery3d/photoeditor/actions/x;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/x;->onStopTrackingTouch()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public w(F)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipView;->EH:F

    .line 72
    return-void
.end method
