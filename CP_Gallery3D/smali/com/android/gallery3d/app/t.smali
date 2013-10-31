.class Lcom/android/gallery3d/app/t;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic ec:Lcom/android/gallery3d/app/dw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/app/t;->ec:Lcom/android/gallery3d/app/dw;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/t;->ec:Lcom/android/gallery3d/app/dw;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dw;->onBackPressed()V

    .line 103
    :cond_0
    return v1
.end method

.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->a()V

    .line 109
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/t;->ec:Lcom/android/gallery3d/app/dw;

    invoke-static {v0}, Lcom/android/gallery3d/app/dw;->a(Lcom/android/gallery3d/app/dw;)Lcom/android/gallery3d/ui/bg;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/gallery3d/ui/bg;->layout(IIII)V

    .line 96
    return-void
.end method
