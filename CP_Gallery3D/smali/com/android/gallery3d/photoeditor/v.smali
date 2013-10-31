.class Lcom/android/gallery3d/photoeditor/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/y;


# instance fields
.field final synthetic nU:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/v;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/v;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/v;->nU:Lcom/android/gallery3d/photoeditor/EffectsBar;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/gallery3d/photoeditor/r;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/r;-><init>(Lcom/android/gallery3d/photoeditor/v;I)V

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Ljava/lang/Runnable;)Z

    .line 67
    return v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
