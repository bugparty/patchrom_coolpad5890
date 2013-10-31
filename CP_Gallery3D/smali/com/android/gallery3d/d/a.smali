.class public Lcom/android/gallery3d/d/a;
.super Lcom/android/gallery3d/d/c;
.source "SourceFile"


# instance fields
.field private final oA:F

.field private oB:F

.field private final oz:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/d/c;-><init>()V

    .line 28
    iput p1, p0, Lcom/android/gallery3d/d/a;->oz:F

    .line 29
    iput p2, p0, Lcom/android/gallery3d/d/a;->oA:F

    .line 30
    iput p1, p0, Lcom/android/gallery3d/d/a;->oB:F

    .line 31
    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 3
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/android/gallery3d/d/a;->oz:F

    iget v1, p0, Lcom/android/gallery3d/d/a;->oA:F

    iget v2, p0, Lcom/android/gallery3d/d/a;->oz:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/d/a;->oB:F

    .line 47
    return-void
.end method

.method public dd()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    return v0
.end method

.method public l(Lcom/android/gallery3d/ui/b;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/d/a;->oB:F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->a(F)V

    .line 36
    return-void
.end method
