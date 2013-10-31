.class Lcom/android/gallery3d/photoeditor/actions/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/e;


# instance fields
.field lY:Lcom/android/gallery3d/photoeditor/PhotoView;

.field final synthetic oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-void
.end method

.method private k(F)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->d(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->d(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/ah;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ah;-><init>(Lcom/android/gallery3d/photoeditor/actions/s;F)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->d(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;F)F

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Z)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/s;->k(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->b(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Z)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->c(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/s;->k(F)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->a(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/s;->oC:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->c(Lcom/android/gallery3d/photoeditor/actions/RotateAction;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->x(F)V

    .line 74
    return-void
.end method
