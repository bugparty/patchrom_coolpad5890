.class public Lcom/android/gallery3d/photoeditor/EffectsMenu;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a(Lcom/android/gallery3d/photoeditor/y;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/android/gallery3d/photoeditor/f;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/gallery3d/photoeditor/f;-><init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/y;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(ILjava/lang/Runnable;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected cs()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f04001b

    return v0
.end method

.method public ct()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 89
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 90
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->f(IZ)V

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public setOnToggleListener(Lcom/android/gallery3d/photoeditor/y;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a0026

    .line 55
    const v0, 0x7f0a0025

    const v1, 0x7f040018

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(Lcom/android/gallery3d/photoeditor/y;II)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    const-string v1, "ro.product.model"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    const-string v2, "8180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "8190"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "8150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "8720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const v0, 0x7f040016

    invoke-direct {p0, p1, v3, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(Lcom/android/gallery3d/photoeditor/y;II)V

    .line 72
    :goto_0
    const v0, 0x7f0a0027

    const v1, 0x7f040017

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(Lcom/android/gallery3d/photoeditor/y;II)V

    .line 73
    const v0, 0x7f0a0028

    const v1, 0x7f040019

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(Lcom/android/gallery3d/photoeditor/y;II)V

    .line 74
    return-void

    .line 68
    :cond_2
    const v0, 0x7f040015

    invoke-direct {p0, p1, v3, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->a(Lcom/android/gallery3d/photoeditor/y;II)V

    goto :goto_0
.end method
