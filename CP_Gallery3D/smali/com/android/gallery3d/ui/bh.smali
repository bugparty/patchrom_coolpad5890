.class Lcom/android/gallery3d/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlingController"

.field private static final qc:F = 50.0f

.field private static final qd:I = 0x4


# instance fields
.field private aM:I

.field private aN:I

.field private mDuration:I

.field private qe:I

.field private qf:I

.field private qg:I

.field private qh:I

.field private qi:D

.field private qj:D

.field private qk:I

.field private ql:I

.field private qm:I

.field private qn:I

.field private qo:I

.field private qp:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private m(F)I
    .locals 6
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->aM:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/bh;->qk:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/bh;->qj:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/bh;->qe:I

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/ui/bh;->qg:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private n(F)I
    .locals 6
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->aN:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/bh;->qk:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/bh;->qi:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/ui/bh;->qf:I

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/ui/bh;->qh:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private o(F)D
    .locals 6
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->qk:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/ui/bh;->mDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public dr()I
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/gallery3d/ui/bh;->qp:D

    iget-wide v2, p0, Lcom/android/gallery3d/ui/bh;->qj:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public ds()I
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/gallery3d/ui/bh;->qp:D

    iget-wide v2, p0, Lcom/android/gallery3d/ui/bh;->qi:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/android/gallery3d/ui/bh;->aM:I

    .line 79
    iput p2, p0, Lcom/android/gallery3d/ui/bh;->aN:I

    .line 80
    iput p5, p0, Lcom/android/gallery3d/ui/bh;->qe:I

    .line 81
    move/from16 v0, p7

    iput v0, p0, Lcom/android/gallery3d/ui/bh;->qf:I

    .line 82
    iput p6, p0, Lcom/android/gallery3d/ui/bh;->qg:I

    .line 83
    move/from16 v0, p8

    iput v0, p0, Lcom/android/gallery3d/ui/bh;->qh:I

    .line 85
    int-to-double v1, p3

    int-to-double v3, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    .line 86
    int-to-double v3, p4

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/android/gallery3d/ui/bh;->qi:D

    .line 87
    int-to-double v3, p3

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/android/gallery3d/ui/bh;->qj:D

    .line 96
    const-wide/high16 v3, 0x4049

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fd5555555555555L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/ui/bh;->mDuration:I

    .line 100
    iget v3, p0, Lcom/android/gallery3d/ui/bh;->mDuration:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4010

    div-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/ui/bh;->qk:I

    .line 103
    const/high16 v1, 0x3f80

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/bh;->m(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/bh;->ql:I

    .line 104
    const/high16 v1, 0x3f80

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/bh;->n(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/bh;->qm:I

    .line 105
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->qn:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->qo:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->mDuration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->ql:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/bh;->qm:I

    return v0
.end method

.method public l(F)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 108
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 109
    sub-float v1, v5, v0

    .line 110
    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v5, v1

    .line 111
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/bh;->m(F)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/bh;->qn:I

    .line 112
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/bh;->n(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/bh;->qo:I

    .line 113
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/bh;->o(F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/bh;->qp:D

    .line 114
    return-void
.end method
