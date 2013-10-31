.class Lcom/android/gallery3d/photoeditor/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nT:Ljava/lang/Runnable;

.field final synthetic nU:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/t;->nT:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->dismissDialog()V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->e(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nT:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/t;->nT:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_1
    return-void
.end method
