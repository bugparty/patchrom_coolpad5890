.class Lcom/android/gallery3d/photoeditor/actions/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/x;


# instance fields
.field lY:Lcom/android/gallery3d/photoeditor/PhotoView;

.field final synthetic lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Lcom/android/gallery3d/photoeditor/actions/FlipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-void
.end method

.method private i(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->e(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->e(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/u;-><init>(Lcom/android/gallery3d/photoeditor/actions/l;FF)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->e(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    if-eqz p3, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;F)F

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0, p2}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->b(Lcom/android/gallery3d/photoeditor/actions/FlipAction;F)F

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Z)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/l;->i(FF)V

    .line 64
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->b(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Z)V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->c(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->d(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/l;->i(FF)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->a(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)Lcom/android/gallery3d/photoeditor/actions/FlipView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->c(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/l;->lZ:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->d(Lcom/android/gallery3d/photoeditor/actions/FlipAction;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->m(FF)V

    .line 77
    return-void
.end method
