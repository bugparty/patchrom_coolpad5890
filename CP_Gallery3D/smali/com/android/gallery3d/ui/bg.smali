.class public Lcom/android/gallery3d/ui/bg;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowView"

.field private static final pS:I = 0xdac

.field private static final pT:I = 0x3e8

.field private static final pU:F = 0.2f

.field private static final pV:F = 0.2f


# instance fields
.field private lw:Ljava/util/Random;

.field private mCurrentRotation:I

.field private pW:Lcom/android/gallery3d/ui/df;

.field private pX:Lcom/android/gallery3d/ui/eq;

.field private pY:I

.field private pZ:Lcom/android/gallery3d/ui/df;

.field private qa:Lcom/android/gallery3d/ui/eq;

.field private final qb:Lcom/android/gallery3d/d/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 46
    new-instance v0, Lcom/android/gallery3d/d/b;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/d/b;-><init>(FFI)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->qb:Lcom/android/gallery3d/d/b;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->lw:Ljava/util/Random;

    .line 123
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->qb:Lcom/android/gallery3d/d/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/d/b;->start()V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->qa:Lcom/android/gallery3d/ui/eq;

    .line 62
    iget v0, p0, Lcom/android/gallery3d/ui/bg;->mCurrentRotation:I

    iput v0, p0, Lcom/android/gallery3d/ui/bg;->pY:I

    .line 64
    iput p2, p0, Lcom/android/gallery3d/ui/bg;->mCurrentRotation:I

    .line 65
    new-instance v0, Lcom/android/gallery3d/ui/df;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/df;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    .line 66
    div-int/lit8 v0, p2, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/android/gallery3d/ui/eq;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/bg;->lw:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/eq;-><init>(Lcom/android/gallery3d/ui/bg;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eq;->start()V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bg;->invalidate()V

    .line 78
    return-void

    .line 71
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/eq;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/bg;->lw:Ljava/util/Random;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery3d/ui/eq;-><init>(Lcom/android/gallery3d/ui/bg;IILjava/util/Random;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    goto :goto_0
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v1, 0x3f80

    .line 93
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->qb:Lcom/android/gallery3d/d/b;

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/d/b;->h(J)Z

    move-result v2

    .line 95
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v5

    .line 96
    invoke-interface {v5, v10, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    if-nez v0, :cond_3

    move v0, v1

    .line 99
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    if-eqz v6, :cond_0

    cmpl-float v6, v0, v1

    if-eqz v6, :cond_0

    .line 100
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->qa:Lcom/android/gallery3d/ui/eq;

    invoke-virtual {v6, v3, v4}, Lcom/android/gallery3d/ui/eq;->h(J)Z

    move-result v6

    or-int/2addr v2, v6

    .line 101
    invoke-interface {p1, v11}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 102
    sub-float v6, v1, v0

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/b;->setAlpha(F)V

    .line 103
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->qa:Lcom/android/gallery3d/ui/eq;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/ui/eq;->l(Lcom/android/gallery3d/ui/b;)V

    .line 104
    iget v6, p0, Lcom/android/gallery3d/ui/bg;->pY:I

    int-to-float v6, v6

    invoke-interface {p1, v6, v9, v9, v1}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 105
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    iget-object v7, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/gallery3d/ui/df;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 107
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    if-eqz v6, :cond_1

    .line 110
    iget-object v6, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    invoke-virtual {v6, v3, v4}, Lcom/android/gallery3d/ui/eq;->h(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 111
    invoke-interface {p1, v11}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 112
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pX:Lcom/android/gallery3d/ui/eq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/eq;->l(Lcom/android/gallery3d/ui/b;)V

    .line 114
    iget v0, p0, Lcom/android/gallery3d/ui/bg;->mCurrentRotation:I

    int-to-float v0, v0

    invoke-interface {p1, v0, v9, v9, v1}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/df;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/df;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/gallery3d/ui/df;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 117
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 119
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bg;->invalidate()V

    .line 120
    :cond_2
    const/16 v0, 0x303

    invoke-interface {v5, v10, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 121
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->qb:Lcom/android/gallery3d/d/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/d/b;->get()F

    move-result v0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 83
    iput-object v1, p0, Lcom/android/gallery3d/ui/bg;->pZ:Lcom/android/gallery3d/ui/df;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/df;->recycle()V

    .line 87
    iput-object v1, p0, Lcom/android/gallery3d/ui/bg;->pW:Lcom/android/gallery3d/ui/df;

    .line 89
    :cond_1
    return-void
.end method
