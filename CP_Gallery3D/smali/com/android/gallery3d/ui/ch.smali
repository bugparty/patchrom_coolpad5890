.class public Lcom/android/gallery3d/ui/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final wA:F = 0.5f

.field private static final wB:F = 0.5f

.field private static final wC:F = 4.0f

.field private static final wD:F = 1.0f

.field private static final wE:F = 0.6f

.field private static final wF:I = 0x64

.field private static final wG:F = 0.0010f

.field private static final wX:I = 0x0

.field private static final wY:I = 0x1

.field private static final wZ:I = 0x2

.field private static final wu:I = 0x3e8

.field private static final wv:I = 0xa7

.field private static final ww:I = 0x3e8

.field private static final wx:F = 0.8f

.field private static final wy:F = 0.7f

.field private static final wz:F = 0.5f

.field private static final xa:I = 0x3

.field private static final xb:I = 0x4

.field private static final xc:I = 0x7

.field private static final xd:I = 0x7

.field private static final xe:F = 1.1f

.field private static final xf:I = 0x8

.field private static final xg:I = 0x10


# instance fields
.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mStartTime:J

.field private mState:I

.field private mWidth:I

.field private final wH:Lcom/android/gallery3d/ui/bb;

.field private final wI:Lcom/android/gallery3d/ui/bb;

.field private final wJ:I

.field private wK:F

.field private wL:F

.field private wM:F

.field private wN:F

.field private wO:F

.field private wP:F

.field private wQ:F

.field private wR:F

.field private wS:F

.field private wT:F

.field private wU:F

.field private wV:F

.field private wW:F

.field private xh:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wJ:I

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 134
    new-instance v0, Lcom/android/gallery3d/ui/bb;

    const v1, 0x7f020038

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bb;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    .line 135
    new-instance v0, Lcom/android/gallery3d/ui/bb;

    const v1, 0x7f020039

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bb;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mMinWidth:I

    .line 138
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ch;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x447a

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 346
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 347
    iget-wide v2, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    div-float/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/gallery3d/ui/ch;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 351
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    .line 352
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    .line 353
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    .line 354
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    .line 356
    const v2, 0x3f7fbe77

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 357
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iput v8, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 360
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    .line 361
    iput v7, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    .line 363
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    .line 364
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    .line 365
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    .line 366
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    .line 369
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    .line 370
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    .line 371
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    .line 372
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    goto :goto_0

    .line 375
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 376
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    .line 377
    iput v7, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    .line 379
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    .line 380
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    .line 381
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    .line 382
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    .line 385
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    .line 386
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    .line 387
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    .line 388
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    goto :goto_0

    .line 393
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    mul-float/2addr v0, v2

    div-float v0, v6, v0

    .line 396
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    .line 399
    iput v8, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    goto :goto_0

    .line 393
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 402
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 169
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Lcom/android/gallery3d/ui/b;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x437f

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ch;->update()V

    .line 308
    iget-object v1, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bb;->getIntrinsicHeight()I

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bb;->getIntrinsicWidth()I

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bb;->getIntrinsicHeight()I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/bb;->getIntrinsicWidth()I

    move-result v3

    .line 313
    iget-object v4, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    iget v5, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/bb;->setAlpha(I)V

    .line 315
    int-to-float v4, v2

    iget v5, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    mul-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v3, v3

    div-float v3, v4, v3

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    int-to-float v2, v2

    const/high16 v4, 0x4080

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 318
    iget v3, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->mMinWidth:I

    if-ge v3, v4, :cond_1

    .line 320
    iget v3, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->mMinWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 321
    iget-object v4, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    iget v5, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v3, v0, v5, v2}, Lcom/android/gallery3d/ui/bb;->setBounds(IIII)V

    .line 327
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/bb;->m(Lcom/android/gallery3d/ui/b;)V

    .line 329
    iget-object v2, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/bb;->setAlpha(I)V

    .line 331
    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 332
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->mMinWidth:I

    if-ge v2, v3, :cond_2

    .line 334
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->mMinWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 335
    iget-object v3, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v2, v0, v4, v1}, Lcom/android/gallery3d/ui/bb;->setBounds(IIII)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/bb;->m(Lcom/android/gallery3d/ui/b;)V

    .line 342
    iget v1, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/ch;->wI:Lcom/android/gallery3d/ui/bb;

    iget v4, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    invoke-virtual {v3, v0, v0, v4, v2}, Lcom/android/gallery3d/ui/bb;->setBounds(IIII)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/ch;->wH:Lcom/android/gallery3d/ui/bb;

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    invoke-virtual {v2, v0, v0, v3, v1}, Lcom/android/gallery3d/ui/bb;->setBounds(IIII)V

    goto :goto_1
.end method

.method public onAbsorb(I)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 263
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 265
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    .line 266
    const v1, 0x3dcccccd

    int-to-float v2, v0

    const v3, 0x3cf5c28f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    .line 270
    iput v4, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    .line 271
    iput v4, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    iput v4, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    .line 274
    iput v5, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    .line 275
    iput v4, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    .line 279
    const/4 v1, 0x0

    mul-int/lit8 v2, v0, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    .line 281
    mul-int/lit8 v1, v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    .line 288
    const v1, 0x3ccccccd

    div-int/lit8 v2, v0, 0x64

    mul-int/2addr v2, v0

    int-to-float v2, v2

    const v3, 0x391d4952

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3fe0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    .line 290
    iget v1, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v2, 0x3727c5ac

    mul-float/2addr v0, v2

    const v2, 0x3f4ccccd

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    .line 292
    return-void
.end method

.method public onPull(F)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40e0

    const/high16 v6, 0x3f80

    const v5, 0x3f4ccccd

    const/4 v4, 0x0

    .line 182
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 183
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    if-eq v2, v8, :cond_1

    .line 187
    iput v6, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    .line 189
    :cond_1
    iput v8, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 191
    iput-wide v0, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    .line 192
    const/high16 v0, 0x4327

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    .line 194
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    .line 195
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 197
    const v1, 0x3f19999a

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    iput v1, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    .line 198
    const/high16 v1, 0x3f00

    mul-float/2addr v0, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    .line 201
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f8ccccd

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    .line 205
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 206
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 207
    neg-float v0, v0

    .line 209
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    .line 210
    iput v4, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    .line 214
    :cond_3
    const/high16 v1, 0x4080

    iget v2, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    mul-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    .line 217
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    .line 218
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    .line 219
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    .line 220
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    iput v2, p0, Lcom/android/gallery3d/ui/ch;->xh:F

    .line 232
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->mState:I

    .line 237
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wK:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wO:F

    .line 238
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wL:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wQ:F

    .line 239
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wM:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wS:F

    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/ch;->wN:F

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wU:F

    .line 242
    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wP:F

    .line 243
    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wR:F

    .line 244
    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wT:F

    .line 245
    iput v2, p0, Lcom/android/gallery3d/ui/ch;->wV:F

    .line 247
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/ch;->mStartTime:J

    .line 248
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/android/gallery3d/ui/ch;->wW:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lcom/android/gallery3d/ui/ch;->mWidth:I

    .line 149
    iput p2, p0, Lcom/android/gallery3d/ui/ch;->mHeight:I

    .line 150
    return-void
.end method
