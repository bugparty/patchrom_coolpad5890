.class public Lcom/android/gallery3d/photoeditor/actions/SaturationAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final bP:F = 0.5f


# instance fields
.field private bQ:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->bQ:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/ad;)V

    .line 58
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    sget-object v2, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->DG:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->b(Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->bQ:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->bQ:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/w;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/w;-><init>(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/ad;)V

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->bQ:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->v(F)V

    .line 53
    return-void
.end method
