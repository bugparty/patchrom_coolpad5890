.class Lcom/android/gallery3d/photoeditor/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ae;


# instance fields
.field final synthetic nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic oj:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/u;->oj:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dc()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/u;->oj:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->b(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->c(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->g(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->e(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/u;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->f(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;)V

    .line 100
    :cond_0
    return-void
.end method
