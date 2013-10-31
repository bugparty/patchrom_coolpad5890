.class public Lcom/android/gallery3d/photoeditor/actions/DuotoneAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final CU:I = 0x4488

.field private static final CV:I = 0xffff00


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/DuotoneFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/DuotoneFilter;-><init>()V

    .line 40
    const/16 v1, 0x4488

    const v2, 0xffff00

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/filters/DuotoneFilter;->G(II)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DuotoneAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DuotoneAction;->y()V

    .line 43
    return-void
.end method
