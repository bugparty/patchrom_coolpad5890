.class public abstract Lcom/android/gallery3d/photoeditor/RestorableView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final pD:F = 1.0f

.field private static final pE:F = 0.47f


# instance fields
.field private final pF:Ljava/util/HashMap;

.field private final pG:Ljava/util/HashSet;

.field private final pH:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pF:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pG:Ljava/util/HashSet;

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pH:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method

.method private dn()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->removeAllViews()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pH:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->cs()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/af;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/af;-><init>(Lcom/android/gallery3d/photoeditor/RestorableView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pF:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method protected abstract cs()I
.end method

.method public e(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pG:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    return-void

    .line 97
    :cond_0
    const v0, 0x3ef0a3d7

    goto :goto_0
.end method

.method public f(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pG:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/RestorableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 68
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->dn()V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/photoeditor/RestorableView;->a(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->pG:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/gallery3d/photoeditor/RestorableView;->e(IZ)V

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/gallery3d/photoeditor/RestorableView;->f(IZ)V

    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->dn()V

    .line 60
    return-void
.end method
