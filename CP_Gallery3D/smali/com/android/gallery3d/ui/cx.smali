.class public Lcom/android/gallery3d/ui/cx;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeView"

.field public static final TOP:I = 0x0

.field private static final zt:I = 0x0

.field private static final zu:I = 0x10

.field private static final zv:I = 0x20

.field private static final zw:I = 0x30


# instance fields
.field private eo:[F

.field private zx:[Lcom/android/gallery3d/ui/ch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 39
    new-array v0, v3, [Lcom/android/gallery3d/ui/ch;

    iput-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    .line 43
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    new-instance v2, Lcom/android/gallery3d/ui/ch;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/ch;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ch;->onAbsorb(I)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ch;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->invalidate()V

    .line 127
    :cond_0
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    move v1, v0

    .line 86
    :goto_0
    if-ge v0, v4, :cond_0

    .line 87
    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 88
    iget-object v2, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    mul-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/b;->a([FI)V

    .line 89
    iget-object v2, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/ch;->n(Lcom/android/gallery3d/ui/b;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 90
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->invalidate()V

    .line 95
    :cond_1
    return-void
.end method

.method public fj()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x20

    const/16 v1, 0x10

    const/high16 v5, 0x3f80

    const/4 v3, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 53
    :cond_0
    sub-int v6, p4, p2

    .line 54
    sub-int v7, p5, p3

    .line 55
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 56
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/ui/ch;->setSize(II)V

    .line 55
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7, v6}, Lcom/android/gallery3d/ui/ch;->setSize(II)V

    goto :goto_2

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    invoke-static {v0, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    invoke-static {v0, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    const/high16 v2, 0x42b4

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v5, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    int-to-float v1, v7

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v8, v5, v1, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    int-to-float v1, v6

    invoke-static {v0, v9, v1, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->eo:[F

    const/high16 v2, 0x42b4

    move v1, v9

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    move v2, v1

    move v3, v1

    .line 110
    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ch;->onRelease()V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ch;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 110
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 112
    goto :goto_1

    .line 114
    :cond_1
    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->invalidate()V

    .line 117
    :cond_2
    return-void
.end method

.method public z(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 100
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->getWidth()I

    move-result v0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v1, v1, p2

    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ch;->onPull(F)V

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/cx;->zx:[Lcom/android/gallery3d/ui/ch;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ch;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->invalidate()V

    .line 105
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cx;->getHeight()I

    move-result v0

    goto :goto_0
.end method
