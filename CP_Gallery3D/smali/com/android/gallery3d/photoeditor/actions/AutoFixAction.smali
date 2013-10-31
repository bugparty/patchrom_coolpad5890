.class public Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# static fields
.field private static final bP:F = 0.5f


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;-><init>()V

    .line 38
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;->setScale(F)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;->y()V

    .line 41
    return-void
.end method
