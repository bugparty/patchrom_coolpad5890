.class public Lcom/android/gallery3d/photoeditor/ActionBar;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private eN()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const v6, 0x7f0a001c

    .line 69
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 70
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 71
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 72
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    .line 74
    :goto_0
    if-eqz v2, :cond_0

    const v5, 0x7f0a001d

    if-eq v4, v5, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-ne v4, v6, :cond_2

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 77
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 79
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 82
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 72
    goto :goto_0
.end method


# virtual methods
.method public b(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->e(IZ)V

    .line 86
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/photoeditor/ActionBar;->e(IZ)V

    .line 87
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->e(IZ)V

    .line 88
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eN()V

    .line 89
    return-void
.end method

.method protected cs()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040010

    return v0
.end method

.method public eO()V
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 98
    return-void
.end method

.method public eP()V
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 102
    return-void
.end method

.method public eQ()Z
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eN()V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-super {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->onFinishInflate()V

    .line 55
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->b(ZZ)V

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/photoeditor/RestorableView;->onLayout(ZIIII)V

    move v0, v1

    move v2, v1

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sub-int v3, p4, p2

    if-le v2, v3, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public p(Z)V
    .locals 1
    .parameter

    .prologue
    .line 92
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->e(IZ)V

    .line 93
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eN()V

    .line 94
    return-void
.end method
