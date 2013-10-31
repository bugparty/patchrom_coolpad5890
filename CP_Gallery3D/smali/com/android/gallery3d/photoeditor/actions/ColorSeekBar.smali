.class Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
.super Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;
.source "SourceFile"


# instance fields
.field private final cn:[I

.field private co:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    move v0, v1

    .line 53
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v3, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setMax(I)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;)[I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/z;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/b;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/b;-><init>(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;Lcom/android/gallery3d/photoeditor/actions/z;)V

    goto :goto_0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public m(I)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setProgress(I)V

    .line 126
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;->onSizeChanged(IIII)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->co:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->co:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->co:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->co:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    new-instance v7, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getThumbOffset()I

    move-result v6

    .line 75
    int-to-float v1, v6

    .line 76
    sub-int v2, p1, v6

    int-to-float v3, v2

    .line 77
    div-int/lit8 v2, p2, 0x2

    int-to-float v8, v2

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 80
    const/4 v2, 0x0

    int-to-float v4, p2

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    int-to-float v2, v6

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    int-to-float v2, v6

    invoke-virtual {v0, v3, v8, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 88
    sub-float v2, v3, v1

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 89
    const/high16 v2, 0x4000

    div-float v2, v8, v2

    add-float v3, v1, v2

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    const/4 v1, 0x1

    move v6, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_1

    .line 94
    add-float v3, v1, v8

    .line 95
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    aget v2, v2, v6

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v3

    goto :goto_0

    .line 99
    :cond_1
    const/high16 v2, 0x4000

    div-float v2, v8, v2

    add-float v3, v1, v2

    .line 100
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->cn:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/4 v2, 0x0

    int-to-float v4, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->co:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-void
.end method
