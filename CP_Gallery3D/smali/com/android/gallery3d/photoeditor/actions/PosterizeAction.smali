.class public Lcom/android/gallery3d/photoeditor/actions/PosterizeAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/PosterizeFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/PosterizeFilter;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PosterizeAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/PosterizeAction;->y()V

    .line 37
    return-void
.end method
