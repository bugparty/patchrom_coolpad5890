.class Lcom/android/gallery3d/ui/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EC:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Paper"


# instance fields
.field private ED:Lcom/android/gallery3d/ui/dr;

.field private EE:Lcom/android/gallery3d/ui/dr;

.field private eo:[F

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/gallery3d/ui/dr;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/dr;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/dr;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/dr;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    return-void
.end method


# virtual methods
.method public Z()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dr;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/dr;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;FF)[F
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dr;->fK()F

    move-result v0

    .line 76
    iget-object v2, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/dr;->fK()F

    move-result v2

    .line 77
    iget v3, p1, Lcom/android/gallery3d/ui/cq;->x:F

    sub-float/2addr v3, p3

    .line 81
    iget v4, p0, Lcom/android/gallery3d/ui/ec;->mWidth:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 82
    iget v4, p0, Lcom/android/gallery3d/ui/ec;->mWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    .line 83
    int-to-float v5, v4

    sub-float/2addr v5, v3

    mul-float/2addr v0, v5

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    .line 87
    neg-float v0, v0

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v8

    div-float v0, v8, v0

    const/high16 v2, 0x3f00

    sub-float/2addr v0, v2

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    const/high16 v2, -0x3dcc

    mul-float v7, v0, v2

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    iget-object v2, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    iget v4, p2, Lcom/android/gallery3d/ui/cq;->x:F

    iget v5, p2, Lcom/android/gallery3d/ui/cq;->y:F

    iget v6, p2, Lcom/android/gallery3d/ui/cq;->z:F

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    move v2, v7

    move v3, v9

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    iget-object v2, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    iget v3, p1, Lcom/android/gallery3d/ui/cq;->x:F

    iget v4, p2, Lcom/android/gallery3d/ui/cq;->x:F

    sub-float v4, v3, v4

    iget v3, p1, Lcom/android/gallery3d/ui/cq;->y:F

    iget v5, p2, Lcom/android/gallery3d/ui/cq;->y:F

    sub-float v5, v3, v5

    iget v3, p1, Lcom/android/gallery3d/ui/cq;->z:F

    iget v6, p2, Lcom/android/gallery3d/ui/cq;->z:F

    sub-float v6, v3, v6

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->eo:[F

    return-object v0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dr;->onRelease()V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dr;->onRelease()V

    .line 61
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/android/gallery3d/ui/ec;->mWidth:I

    .line 70
    iput p2, p0, Lcom/android/gallery3d/ui/ec;->mHeight:I

    .line 71
    return-void
.end method

.method public t(F)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/ec;->mWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 42
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dr;->onPull(F)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dr;->onPull(F)V

    goto :goto_0
.end method

.method public u(F)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery3d/ui/ec;->mWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 51
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/gallery3d/ui/ec;->EE:Lcom/android/gallery3d/ui/dr;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dr;->p(F)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ec;->ED:Lcom/android/gallery3d/ui/dr;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dr;->p(F)V

    goto :goto_0
.end method
