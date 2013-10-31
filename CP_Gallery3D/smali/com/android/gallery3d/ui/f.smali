.class public Lcom/android/gallery3d/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterMenu"


# instance fields
.field private ax:Ljava/util/ArrayList;

.field private ay:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/ui/f;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/f;->ax:Ljava/util/ArrayList;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;I)Lcom/android/gallery3d/ui/el;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/android/gallery3d/ui/el;

    iget-object v1, p0, Lcom/android/gallery3d/ui/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/gallery3d/ui/el;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/ui/f;->ax:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/f;->g(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    :cond_0
    return-void
.end method

.method public a(IZZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/el;

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/el;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 104
    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 105
    invoke-interface {v2, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 106
    if-eqz p4, :cond_0

    .line 107
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/el;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method

.method public g(I)Landroid/view/MenuItem;
    .locals 3
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/ui/f;->ax:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/el;

    .line 91
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/el;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 94
    :cond_1
    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->ay:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/f;->ay:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/ui/f;->ay:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 86
    return-void
.end method
