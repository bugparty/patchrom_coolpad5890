.class public Lcom/android/gallery3d/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I = 0x0

.field private static final lA:I = 0x1

.field private static final lB:I = 0x2

.field private static final lC:I = 0x4


# instance fields
.field protected final hU:Landroid/graphics/Rect;

.field private jT:Lcom/android/gallery3d/ui/eh;

.field protected final lD:Landroid/graphics/Rect;

.field protected lE:Lcom/android/gallery3d/ui/am;

.field private lF:Ljava/util/ArrayList;

.field private lG:Lcom/android/gallery3d/ui/am;

.field private lH:Lcom/android/gallery3d/d/c;

.field private lI:I

.field private lJ:I

.field protected lK:I

.field protected lL:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/am;->hU:Landroid/graphics/Rect;

    .line 63
    iput v1, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 65
    iput v1, p0, Lcom/android/gallery3d/ui/am;->mMeasuredWidth:I

    .line 66
    iput v1, p0, Lcom/android/gallery3d/ui/am;->mMeasuredHeight:I

    .line 68
    iput v2, p0, Lcom/android/gallery3d/ui/am;->lI:I

    .line 69
    iput v2, p0, Lcom/android/gallery3d/ui/am;->lJ:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/ui/am;->lK:I

    .line 74
    iput v1, p0, Lcom/android/gallery3d/ui/am;->lL:I

    return-void
.end method

.method private c(Lcom/android/gallery3d/ui/am;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    if-ne v0, p1, :cond_0

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 172
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/am;->cB()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    .line 179
    return-void
.end method

.method private d(IIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    sub-int v0, p3, p1

    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    return v0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/d/c;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/d/c;->start()V

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/eh;->b(Lcom/android/gallery3d/d/c;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    .line 88
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/am;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p1, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iput-object p0, p1, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/am;->b(Lcom/android/gallery3d/ui/eh;)V

    .line 149
    :cond_2
    return-void
.end method

.method protected a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/am;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/am;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p2, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    sub-int/2addr v0, v1

    .line 233
    iget-object v1, p2, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    sub-int/2addr v1, v2

    .line 235
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p1, v2, v3, v5}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 237
    iget-object v2, p2, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    .line 238
    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v2}, Lcom/android/gallery3d/d/c;->dd()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 240
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/d/c;->h(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    .line 245
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/d/c;->l(Lcom/android/gallery3d/ui/b;)V

    .line 247
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 248
    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 249
    :cond_2
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v5}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    goto :goto_0

    .line 243
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/gallery3d/ui/am;->lH:Lcom/android/gallery3d/d/c;

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/ui/eh;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/am;->b(Lcom/android/gallery3d/ui/eh;)V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/am;Z)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p4, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    .line 259
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 260
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 261
    if-eqz p5, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    :cond_0
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 263
    invoke-virtual {p4, p1}, Lcom/android/gallery3d/ui/am;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 265
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    .line 267
    :cond_1
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 269
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/ui/am;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 377
    move-object v1, p1

    move v2, v0

    move v3, v0

    .line 380
    :goto_0
    if-eq v1, p0, :cond_1

    .line 381
    if-nez v1, :cond_0

    .line 389
    :goto_1
    return v0

    .line 382
    :cond_0
    iget-object v4, v1, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    .line 383
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 384
    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 385
    iget-object v1, v1, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/am;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/am;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p2, v3, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 389
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public ab(I)Lcom/android/gallery3d/ui/am;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/am;

    return-object v0
.end method

.method protected ac(I)V
    .locals 4
    .parameter

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 394
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/am;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 396
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/am;->ac(I)V

    .line 393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->hU:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    return-void
.end method

.method protected b(Lcom/android/gallery3d/ui/eh;)V
    .locals 3
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/am;->b(Lcom/android/gallery3d/ui/eh;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method public b(Lcom/android/gallery3d/ui/am;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/am;)V

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->hU:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/am;->d(Lcom/android/gallery3d/ui/b;)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/am;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public cA()Lcom/android/gallery3d/ui/eh;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    return-object v0
.end method

.method protected cB()V
    .locals 3

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/am;->cB()V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    .line 413
    return-void
.end method

.method public cC()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 419
    :cond_0
    return-void
.end method

.method public cD()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 425
    :cond_0
    return-void
.end method

.method public cq()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->hU:Landroid/graphics/Rect;

    return-object v0
.end method

.method public cw()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->jT:Lcom/android/gallery3d/ui/eh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cB()V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cx()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public cy()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/am;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/am;)V

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    return-void
.end method

.method public cz()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_0

    .line 277
    if-nez v7, :cond_2

    .line 278
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 280
    iget-object v4, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/am;->a(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/am;Z)Z

    .line 281
    iput-object v9, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    .line 291
    :cond_0
    if-nez v7, :cond_6

    .line 293
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_6

    .line 294
    invoke-virtual {p0, v7}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/am;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/am;->a(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/am;Z)Z

    .line 284
    if-eq v7, v8, :cond_3

    if-ne v7, v6, :cond_4

    .line 286
    :cond_3
    iput-object v9, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    :cond_4
    move v0, v6

    .line 302
    :goto_1
    return v0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v5, v6

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/am;->a(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/am;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iput-object v4, p0, Lcom/android/gallery3d/ui/am;->lG:Lcom/android/gallery3d/ui/am;

    move v0, v6

    .line 298
    goto :goto_1

    .line 302
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/am;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mMeasuredWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/am;->lD:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->requestRender()V

    .line 202
    :cond_0
    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 430
    const-string v0, "GLView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cx()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/am;->ab(I)Lcom/android/gallery3d/ui/am;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/am;->k(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/am;->d(IIII)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_1

    .line 320
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 321
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/am;->onLayout(ZIIII)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 324
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/am;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public measure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 336
    iget v0, p0, Lcom/android/gallery3d/ui/am;->lI:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/am;->lJ:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 350
    :cond_0
    return-void

    .line 341
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/am;->lI:I

    .line 342
    iput p2, p0, Lcom/android/gallery3d/ui/am;->lJ:I

    .line 344
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/am;->onMeasure(II)V

    .line 346
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected o(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 357
    iput p1, p0, Lcom/android/gallery3d/ui/am;->mMeasuredWidth:I

    .line 358
    iput p2, p0, Lcom/android/gallery3d/ui/am;->mMeasuredHeight:I

    .line 359
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 206
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 207
    iput v1, p0, Lcom/android/gallery3d/ui/am;->lJ:I

    .line 208
    iput v1, p0, Lcom/android/gallery3d/ui/am;->lI:I

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/ui/am;->lE:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->requestLayout()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/eh;->fW()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    .line 99
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/am;->ac(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    goto :goto_0

    .line 97
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/am;->mViewFlags:I

    goto :goto_1
.end method
