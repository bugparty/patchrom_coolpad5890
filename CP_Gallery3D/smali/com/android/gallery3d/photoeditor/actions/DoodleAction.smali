.class public Lcom/android/gallery3d/photoeditor/actions/DoodleAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final kc:I = 0x4


# instance fields
.field private IY:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

.field private IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

.field private kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IY:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/z;)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(Lcom/android/gallery3d/photoeditor/actions/h;)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IY:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 80
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IY:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fq()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/m;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/m;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/z;)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->m(I)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fr()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/n;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/n;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->a(Lcom/android/gallery3d/photoeditor/actions/h;)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->IZ:Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->kd:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setColor(I)V

    .line 73
    return-void
.end method
