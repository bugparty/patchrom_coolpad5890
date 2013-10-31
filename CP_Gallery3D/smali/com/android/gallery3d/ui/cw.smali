.class public Lcom/android/gallery3d/ui/cw;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollBarView"


# instance fields
.field private zj:I

.field private zk:I

.field private zl:I

.field private zm:I

.field private zn:I

.field private zo:I

.field private zp:I

.field private zq:Lcom/android/gallery3d/ui/dq;

.field private zr:Lcom/android/gallery3d/ui/NinePatchTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 47
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010064

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    new-instance v1, Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v0}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/cw;->zr:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 52
    iput v4, p0, Lcom/android/gallery3d/ui/cw;->zl:I

    .line 53
    iput v4, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    .line 54
    iput p3, p0, Lcom/android/gallery3d/ui/cw;->zn:I

    .line 55
    iput p2, p0, Lcom/android/gallery3d/ui/cw;->zk:I

    .line 56
    return-void
.end method

.method private fi()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    if-gtz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cw;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 100
    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zl:I

    int-to-float v1, v1

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/ui/cw;->zq:Lcom/android/gallery3d/ui/dq;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/dq;->at(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/dq;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/ui/cw;->zq:Lcom/android/gallery3d/ui/dq;

    .line 60
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 107
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cw;->cz()Landroid/graphics/Rect;

    .line 109
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zj:I

    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zk:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/cw;->zr:Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/cw;->zl:I

    iget v4, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    iget v5, p0, Lcom/android/gallery3d/ui/cw;->zk:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/gallery3d/ui/cw;->zj:I

    goto :goto_0
.end method

.method public y(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zo:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    if-ne p2, v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cw;->invalidate()V

    .line 78
    iput p1, p0, Lcom/android/gallery3d/ui/cw;->zo:I

    .line 79
    iput p2, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    .line 82
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    if-gtz v0, :cond_1

    .line 83
    iput v1, p0, Lcom/android/gallery3d/ui/cw;->zl:I

    .line 84
    iput v1, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/cw;->zn:I

    iput v0, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cw;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zm:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zp:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 94
    iget v1, p0, Lcom/android/gallery3d/ui/cw;->zo:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/cw;->zl:I

    goto :goto_0
.end method
