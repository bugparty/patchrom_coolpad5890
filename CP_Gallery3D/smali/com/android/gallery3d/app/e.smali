.class public Lcom/android/gallery3d/app/e;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final br:I = 0x50

.field private static final bs:I = 0x1e

.field private static final bt:I = 0xe


# instance fields
.field private final bA:Landroid/graphics/Bitmap;

.field private final bB:I

.field private bC:I

.field private bD:I

.field private bE:I

.field private bF:Z

.field private bG:Z

.field private bH:Z

.field private bI:I

.field private bJ:I

.field private final bK:Landroid/graphics/Rect;

.field private bL:I

.field private final bu:Lcom/android/gallery3d/app/bj;

.field private final bv:Landroid/graphics/Rect;

.field private final bw:Landroid/graphics/Rect;

.field private final bx:Landroid/graphics/Paint;

.field private final by:Landroid/graphics/Paint;

.field private final bz:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/bj;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/bj;

    iput-object v0, p0, Lcom/android/gallery3d/app/e;->bu:Lcom/android/gallery3d/app/bj;

    .line 83
    iput-boolean v3, p0, Lcom/android/gallery3d/app/e;->bG:Z

    .line 84
    iput-boolean v3, p0, Lcom/android/gallery3d/app/e;->bH:Z

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/e;->bx:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bx:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/e;->by:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->by:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4160

    mul-float/2addr v1, v2

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    .line 97
    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    const-string v2, "0:00:00"

    const/4 v3, 0x0

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42a0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/app/e;->bB:I

    .line 107
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/e;->bL:I

    .line 108
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    .line 183
    iget v2, p0, Lcom/android/gallery3d/app/e;->bC:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/e;->bC:I

    .line 184
    return-void
.end method

.method private a(FF)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lcom/android/gallery3d/app/e;->bC:I

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    iget v1, p0, Lcom/android/gallery3d/app/e;->bD:I

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    iget v2, p0, Lcom/android/gallery3d/app/e;->bC:I

    iget v3, p0, Lcom/android/gallery3d/app/e;->bB:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/e;->bD:I

    iget v2, p0, Lcom/android/gallery3d/app/e;->bB:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 277
    rem-int/lit8 v1, v0, 0x3c

    .line 278
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 279
    div-int/lit16 v0, v0, 0xe10

    .line 280
    if-lez v0, :cond_0

    .line 281
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getScrubberTime()I
    .locals 4

    .prologue
    .line 187
    iget v0, p0, Lcom/android/gallery3d/app/e;->bC:I

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/android/gallery3d/app/e;->bI:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget v0, p0, Lcom/android/gallery3d/app/e;->bI:I

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/app/e;->bJ:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/e;->bI:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bF:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/e;->bC:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->invalidate()V

    .line 124
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/app/e;->b(II)V

    .line 161
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/android/gallery3d/app/e;->bJ:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/e;->bI:I

    if-ne v0, p2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/e;->bJ:I

    .line 145
    iput p2, p0, Lcom/android/gallery3d/app/e;->bI:I

    .line 146
    if-gtz p2, :cond_1

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/e;->setShowScrubber(Z)V

    .line 150
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->update()V

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/e;->setShowScrubber(Z)V

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bx:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bw:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->by:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 220
    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bH:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/e;->bC:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/e;->bD:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bG:Z

    if-eqz v0, :cond_1

    .line 224
    iget v0, p0, Lcom/android/gallery3d/app/e;->bJ:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/e;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/e;->bL:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    iget v0, p0, Lcom/android/gallery3d/app/e;->bI:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/e;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/e;->bL:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/e;->bz:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    :cond_1
    return-void
.end method

.method public getBarHeight()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/e;->bL:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/e;->bL:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 193
    sub-int v1, p4, p2

    .line 194
    sub-int v2, p5, p3

    .line 195
    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bH:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->update()V

    .line 209
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 199
    iget-boolean v3, p0, Lcom/android/gallery3d/app/e;->bG:Z

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/app/e;->bK:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v0, v3

    .line 202
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/e;->bB:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 203
    iget-object v3, p0, Lcom/android/gallery3d/app/e;->bA:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/app/e;->bD:I

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/app/e;->bv:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    sub-int v0, v1, v0

    add-int/lit8 v1, v2, 0x4

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 240
    iget-boolean v2, p0, Lcom/android/gallery3d/app/e;->bH:Z

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 246
    :pswitch_0
    int-to-float v4, v2

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/android/gallery3d/app/e;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iput-boolean v0, p0, Lcom/android/gallery3d/app/e;->bF:Z

    .line 248
    iget v1, p0, Lcom/android/gallery3d/app/e;->bC:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/android/gallery3d/app/e;->bE:I

    .line 249
    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bu:Lcom/android/gallery3d/app/bj;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bj;->aM()V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/gallery3d/app/e;->bF:Z

    if-eqz v3, :cond_0

    .line 255
    iget v1, p0, Lcom/android/gallery3d/app/e;->bE:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/android/gallery3d/app/e;->bC:I

    .line 256
    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->F()V

    .line 257
    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->getScrubberTime()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/e;->bJ:I

    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/app/e;->bu:Lcom/android/gallery3d/app/bj;

    iget v2, p0, Lcom/android/gallery3d/app/e;->bJ:I

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/bj;->y(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->invalidate()V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/e;->bF:Z

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/gallery3d/app/e;->bu:Lcom/android/gallery3d/app/bj;

    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->getScrubberTime()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/bj;->z(I)V

    .line 266
    iput-boolean v1, p0, Lcom/android/gallery3d/app/e;->bF:Z

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setShowScrubber(Z)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/gallery3d/app/e;->bH:Z

    .line 165
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/e;->bF:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/e;->bu:Lcom/android/gallery3d/app/bj;

    invoke-direct {p0}, Lcom/android/gallery3d/app/e;->getScrubberTime()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/bj;->z(I)V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/e;->bF:Z

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->requestLayout()V

    .line 170
    return-void
.end method

.method public setShowTimes(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/gallery3d/app/e;->bG:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/app/e;->requestLayout()V

    .line 157
    return-void
.end method
