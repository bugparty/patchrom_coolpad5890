.class Lcom/android/gallery3d/ui/eq;
.super Lcom/android/gallery3d/d/c;
.source "SourceFile"


# instance fields
.field private final IB:Landroid/graphics/PointF;

.field private IC:F

.field final synthetic ID:Lcom/android/gallery3d/ui/bg;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/bg;IILjava/util/Random;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const v3, 0x3e4ccccd

    .line 130
    iput-object p1, p0, Lcom/android/gallery3d/ui/eq;->ID:Lcom/android/gallery3d/ui/bg;

    invoke-direct {p0}, Lcom/android/gallery3d/d/c;-><init>()V

    .line 131
    iput p2, p0, Lcom/android/gallery3d/ui/eq;->mWidth:I

    .line 132
    iput p3, p0, Lcom/android/gallery3d/ui/eq;->mHeight:I

    .line 133
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/gallery3d/ui/eq;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/ui/eq;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/eq;->IB:Landroid/graphics/PointF;

    .line 136
    const/16 v0, 0xdac

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/eq;->setDuration(I)V

    .line 137
    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/android/gallery3d/ui/eq;->IC:F

    .line 163
    return-void
.end method

.method public dd()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x4

    return v0
.end method

.method public l(Lcom/android/gallery3d/ui/b;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/eq;->ID:Lcom/android/gallery3d/ui/bg;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bg;->getWidth()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/android/gallery3d/ui/eq;->ID:Lcom/android/gallery3d/ui/bg;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bg;->getHeight()I

    move-result v1

    .line 144
    const/high16 v2, 0x4000

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/eq;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p0, Lcom/android/gallery3d/ui/eq;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 146
    const/high16 v3, 0x3f80

    const v4, 0x3e4ccccd

    iget v5, p0, Lcom/android/gallery3d/ui/eq;->IC:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 148
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/gallery3d/ui/eq;->IB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/gallery3d/ui/eq;->IC:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 149
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/gallery3d/ui/eq;->IB:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/android/gallery3d/ui/eq;->IC:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 151
    invoke-interface {p1, v0, v1, v6}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 152
    invoke-interface {p1, v2, v2, v6}, Lcom/android/gallery3d/ui/b;->scale(FFF)V

    .line 153
    return-void
.end method
