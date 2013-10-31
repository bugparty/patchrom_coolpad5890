.class public abstract Lcom/android/gallery3d/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cM:J = -0x2L

.field private static final zC:J = -0x1L


# instance fields
.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    return-void
.end method


# virtual methods
.method protected abstract b(F)V
.end method

.method public fk()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    .line 78
    return-void
.end method

.method public h(J)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, -0x2

    .line 81
    iget-wide v2, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return v1

    .line 82
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iput-wide p1, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    .line 83
    :cond_1
    iget-wide v2, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 84
    int-to-float v0, v2

    iget v3, p0, Lcom/android/gallery3d/d/d;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    .line 85
    iget-object v3, p0, Lcom/android/gallery3d/d/d;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/d/d;->b(F)V

    .line 87
    iget v0, p0, Lcom/android/gallery3d/d/d;->mDuration:I

    if-lt v2, v0, :cond_3

    iput-wide v6, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    .line 88
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/d/d;->mDuration:I

    .line 62
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/d/d;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    .line 70
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/d/d;->mStartTime:J

    .line 66
    return-void
.end method
