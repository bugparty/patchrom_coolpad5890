.class public Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final pH:Landroid/view/LayoutInflater;

.field private final yA:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->yA:Landroid/view/ViewGroup;

    .line 40
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->pH:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method private a(Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;)I
    .locals 2
    .parameter

    .prologue
    .line 61
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/i;->hF:[I

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const v0, 0x7f02005b

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const v0, 0x7f02005c

    goto :goto_0

    .line 66
    :pswitch_1
    const v0, 0x7f02005d

    goto :goto_0

    .line 69
    :pswitch_2
    const v0, 0x7f02005a

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private aH(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->yA:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->pH:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;

    move-object v2, v3

    .line 49
    check-cast v2, Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->e(Landroid/graphics/RectF;)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 51
    return-object v1
.end method

.method private aI(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->pH:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->yA:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->yA:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    .locals 2
    .parameter

    .prologue
    .line 75
    const v0, 0x7f04001f

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aI(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->a(Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory$ScalePickerType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setBackgroundResource(I)V

    .line 78
    return-object v0
.end method

.method public fq()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f040011

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aI(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    return-object v0
.end method

.method public fr()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040013

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method public fs()Lcom/android/gallery3d/photoeditor/actions/TouchView;
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f040020

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/TouchView;

    return-object v0
.end method

.method public ft()Lcom/android/gallery3d/photoeditor/actions/FlipView;
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f04001c

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/FlipView;

    return-object v0
.end method

.method public fu()Lcom/android/gallery3d/photoeditor/actions/RotateView;
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f04001e

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/RotateView;

    return-object v0
.end method

.method public fv()Lcom/android/gallery3d/photoeditor/actions/CropView;
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f040012

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->aH(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/CropView;

    return-object v0
.end method
