.class Lcom/android/gallery3d/photoeditor/actions/CropView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "SourceFile"


# static fields
.field private static final Bb:I = 0x2

.field private static final Bc:I = 0xa0

.field private static final fb:I = 0x19

.field private static final fg:I = 0x1

.field private static final fh:I = 0x2

.field private static final fi:I = 0x4

.field private static final fj:I = 0x8

.field private static final fk:I = 0x10


# instance fields
.field private final Bd:Landroid/graphics/Paint;

.field private final Be:Landroid/graphics/drawable/Drawable;

.field private final Bf:I

.field private final Bg:Landroid/graphics/RectF;

.field private Bh:F

.field private Bi:F

.field private Bj:I

.field private Bk:Lcom/android/gallery3d/photoeditor/actions/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Be:Landroid/graphics/drawable/Drawable;

    .line 68
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bf:I

    .line 69
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bd:Landroid/graphics/Paint;

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bd:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bd:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bd:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 217
    const/16 v0, 0xa0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    float-to-int v0, p3

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bf:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 209
    float-to-int v1, p4

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bf:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 210
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bf:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bf:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    return-void
.end method

.method private fw()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 106
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, v5

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 109
    return-object v2
.end method

.method private k(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x41c8

    .line 113
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->fw()Landroid/graphics/RectF;

    move-result-object v3

    .line 114
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    .line 117
    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 118
    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 119
    cmpg-float v5, v2, v6

    if-gtz v5, :cond_3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 120
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    .line 127
    :cond_0
    :goto_0
    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 128
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 129
    cmpg-float v2, v4, v6

    if-gtz v2, :cond_4

    move v2, v0

    :goto_1
    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :goto_2
    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 130
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    .line 137
    :cond_1
    :goto_3
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    if-nez v0, :cond_2

    .line 138
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 141
    return-void

    .line 122
    :cond_3
    cmpg-float v2, v4, v6

    if-gtz v2, :cond_0

    .line 123
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    goto :goto_0

    :cond_4
    move v2, v1

    .line 129
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 132
    :cond_6
    cmpg-float v0, v5, v6

    if-gtz v0, :cond_1

    .line 133
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    goto :goto_3
.end method

.method private l(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->fw()Landroid/graphics/RectF;

    move-result-object v2

    .line 145
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 147
    cmpl-float v0, p1, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    .line 149
    :goto_0
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 151
    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->q(Z)V

    .line 172
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->do()F

    move-result v1

    div-float/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->dp()F

    move-result v3

    div-float/2addr v1, v3

    .line 156
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 157
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 159
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 160
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 162
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 163
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 165
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 166
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2
.end method

.method private q(Z)V
    .locals 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bk:Lcom/android/gallery3d/photoeditor/actions/v;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bk:Lcom/android/gallery3d/photoeditor/actions/v;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/photoeditor/actions/v;->a(Landroid/graphics/RectF;Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 86
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->do()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 94
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->dp()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 97
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bg:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->q(Z)V

    .line 101
    return-void
.end method

.method public a(Lcom/android/gallery3d/photoeditor/actions/v;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bk:Lcom/android/gallery3d/photoeditor/actions/v;

    .line 79
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->fw()Landroid/graphics/RectF;

    move-result-object v6

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v6, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;FFFF)V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;FFFF)V

    .line 229
    iget v2, v6, Landroid/graphics/RectF;->right:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;FFFF)V

    .line 230
    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->pQ:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;FFFF)V

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bd:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 233
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 234
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Be:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 237
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Be:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 240
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Be:Landroid/graphics/drawable/Drawable;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 243
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Be:Landroid/graphics/drawable/Drawable;

    iget v1, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 246
    :cond_7
    return-void

    .line 233
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 184
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->k(FF)V

    .line 185
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bh:F

    .line 186
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bi:F

    goto :goto_0

    .line 190
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    if-eqz v2, :cond_1

    .line 191
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bh:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bi:F

    sub-float v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->l(FF)V

    .line 193
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bh:F

    .line 194
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bi:F

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->Bj:I

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
