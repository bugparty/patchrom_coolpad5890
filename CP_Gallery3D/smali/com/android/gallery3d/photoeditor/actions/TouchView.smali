.class Lcom/android/gallery3d/photoeditor/actions/TouchView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "SourceFile"


# instance fields
.field private final xN:Landroid/view/GestureDetector;

.field private xO:Lcom/android/gallery3d/photoeditor/actions/j;

.field private xP:Lcom/android/gallery3d/photoeditor/actions/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/high16 v0, 0x43fa

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 61
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/ag;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ag;-><init>(Lcom/android/gallery3d/photoeditor/actions/TouchView;I)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xN:Landroid/view/GestureDetector;

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xN:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/c;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xP:Lcom/android/gallery3d/photoeditor/actions/c;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/actions/TouchView;)Lcom/android/gallery3d/photoeditor/actions/j;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xO:Lcom/android/gallery3d/photoeditor/actions/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/c;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xP:Lcom/android/gallery3d/photoeditor/actions/c;

    .line 113
    return-void
.end method

.method public a(Lcom/android/gallery3d/photoeditor/actions/j;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xO:Lcom/android/gallery3d/photoeditor/actions/j;

    .line 109
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TouchView;->xN:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
