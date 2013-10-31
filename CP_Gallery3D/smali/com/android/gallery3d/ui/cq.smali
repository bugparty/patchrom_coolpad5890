.class public Lcom/android/gallery3d/ui/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public alpha:F

.field public x:F

.field public y:F

.field public yx:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/cq;-><init>(FFFFF)V

    .line 41
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 45
    iput p2, p0, Lcom/android/gallery3d/ui/cq;->y:F

    .line 46
    iput p3, p0, Lcom/android/gallery3d/ui/cq;->z:F

    .line 47
    iput p4, p0, Lcom/android/gallery3d/ui/cq;->yx:F

    .line 48
    iput p5, p0, Lcom/android/gallery3d/ui/cq;->alpha:F

    .line 49
    return-void
.end method

.method public static a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;F)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/high16 v0, 0x3f80

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v1, p1, Lcom/android/gallery3d/ui/cq;->x:F

    invoke-static {v0, v1, p3}, Lcom/android/gallery3d/common/Utils;->interpolateScale(FFF)F

    move-result v1

    iget v0, p0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->y:F

    invoke-static {v0, v2, p3}, Lcom/android/gallery3d/common/Utils;->interpolateScale(FFF)F

    move-result v2

    iget v0, p0, Lcom/android/gallery3d/ui/cq;->z:F

    iget v3, p1, Lcom/android/gallery3d/ui/cq;->z:F

    invoke-static {v0, v3, p3}, Lcom/android/gallery3d/common/Utils;->interpolateScale(FFF)F

    move-result v3

    iget v0, p0, Lcom/android/gallery3d/ui/cq;->yx:F

    iget v4, p1, Lcom/android/gallery3d/ui/cq;->yx:F

    invoke-static {v0, v4, p3}, Lcom/android/gallery3d/common/Utils;->interpolateAngle(FFF)F

    move-result v4

    iget v0, p0, Lcom/android/gallery3d/ui/cq;->alpha:F

    iget v5, p1, Lcom/android/gallery3d/ui/cq;->alpha:F

    invoke-static {v0, v5, p3}, Lcom/android/gallery3d/common/Utils;->interpolateScale(FFF)F

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/cq;->a(FFFFF)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    goto :goto_0
.end method


# virtual methods
.method public a(FFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 70
    iput p2, p0, Lcom/android/gallery3d/ui/cq;->y:F

    .line 71
    iput p3, p0, Lcom/android/gallery3d/ui/cq;->z:F

    .line 72
    iput p4, p0, Lcom/android/gallery3d/ui/cq;->yx:F

    .line 73
    iput p5, p0, Lcom/android/gallery3d/ui/cq;->alpha:F

    .line 74
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/cq;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p1, Lcom/android/gallery3d/ui/cq;->x:F

    iput v0, p0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 62
    iget v0, p1, Lcom/android/gallery3d/ui/cq;->y:F

    iput v0, p0, Lcom/android/gallery3d/ui/cq;->y:F

    .line 63
    iget v0, p1, Lcom/android/gallery3d/ui/cq;->z:F

    iput v0, p0, Lcom/android/gallery3d/ui/cq;->z:F

    .line 64
    iget v0, p1, Lcom/android/gallery3d/ui/cq;->yx:F

    iput v0, p0, Lcom/android/gallery3d/ui/cq;->yx:F

    .line 65
    iget v0, p1, Lcom/android/gallery3d/ui/cq;->alpha:F

    iput v0, p0, Lcom/android/gallery3d/ui/cq;->alpha:F

    .line 66
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cq;->eZ()Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    return-object v0
.end method

.method public eZ()Lcom/android/gallery3d/ui/cq;
    .locals 1

    .prologue
    .line 54
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/cq;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p1, Lcom/android/gallery3d/ui/cq;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    check-cast p1, Lcom/android/gallery3d/ui/cq;

    .line 80
    iget v1, p0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/cq;->z:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/cq;->yx:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->yx:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/cq;->alpha:F

    iget v2, p1, Lcom/android/gallery3d/ui/cq;->alpha:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
