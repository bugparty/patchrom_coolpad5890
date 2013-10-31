.class public Lcom/android/gallery3d/photoeditor/actions/TintAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final kc:I = 0xd


# instance fields
.field private kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;


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
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/z;)V

    .line 61
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fq()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/f;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/f;-><init>(Lcom/android/gallery3d/photoeditor/actions/TintAction;Lcom/android/gallery3d/photoeditor/filters/TintFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/z;)V

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->m(I)V

    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->v(I)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/TintAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 56
    return-void
.end method
