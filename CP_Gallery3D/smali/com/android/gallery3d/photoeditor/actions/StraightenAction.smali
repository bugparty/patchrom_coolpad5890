.class public Lcom/android/gallery3d/photoeditor/actions/StraightenAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final jL:F = 0.0f

.field private static final uZ:F = 60.0f


# instance fields
.field private vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->a(Lcom/android/gallery3d/photoeditor/actions/e;)V

    .line 71
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fu()Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/ac;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ac;-><init>(Lcom/android/gallery3d/photoeditor/actions/StraightenAction;Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->a(Lcom/android/gallery3d/photoeditor/actions/e;)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->v(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->x(F)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->vd:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    const/high16 v1, 0x4270

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->y(F)V

    .line 66
    return-void
.end method
