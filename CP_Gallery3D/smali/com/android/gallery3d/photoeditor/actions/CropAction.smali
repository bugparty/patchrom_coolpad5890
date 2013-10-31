.class public Lcom/android/gallery3d/photoeditor/actions/CropAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final Ae:F = 0.2f


# instance fields
.field private Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

.field private Ag:Lcom/android/gallery3d/photoeditor/actions/CropView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Ag:Lcom/android/gallery3d/photoeditor/actions/CropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Lcom/android/gallery3d/photoeditor/actions/v;)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 65
    return-void
.end method

.method public z()V
    .locals 4

    .prologue
    const v3, 0x3f4ccccd

    const v2, 0x3e4ccccd

    .line 41
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fv()Lcom/android/gallery3d/photoeditor/actions/CropView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Ag:Lcom/android/gallery3d/photoeditor/actions/CropView;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Ag:Lcom/android/gallery3d/photoeditor/actions/CropView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/y;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/y;-><init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Lcom/android/gallery3d/photoeditor/actions/v;)V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Ag:Lcom/android/gallery3d/photoeditor/actions/CropView;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/RectF;)V

    .line 57
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->a(Landroid/graphics/RectF;)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->Af:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 59
    return-void
.end method
