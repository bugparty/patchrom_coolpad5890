.class Lcom/android/gallery3d/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NinePatchInstance"

.field private static final r:I = 0x20

.field private static final s:I = 0x18


# instance fields
.field private A:I

.field private t:Ljava/nio/FloatBuffer;

.field private u:Ljava/nio/FloatBuffer;

.field private v:Ljava/nio/ByteBuffer;

.field private w:[I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/NinePatchTexture;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->cr()Lcom/android/gallery3d/ui/aa;

    move-result-object v0

    .line 170
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid dimension"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/ui/aa;->hV:[I

    array-length v1, v1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/ui/aa;->hW:[I

    array-length v1, v1

    if-eq v1, v2, :cond_3

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported nine patch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    new-array v1, v4, [F

    .line 182
    new-array v2, v4, [F

    .line 183
    new-array v3, v4, [F

    .line 184
    new-array v4, v4, [F

    .line 186
    iget-object v5, v0, Lcom/android/gallery3d/ui/aa;->hV:[I

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v6

    invoke-static {v1, v3, v5, v6, p2}, Lcom/android/gallery3d/ui/a;->a([F[F[III)I

    move-result v5

    .line 187
    iget-object v6, v0, Lcom/android/gallery3d/ui/aa;->hW:[I

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getHeight()I

    move-result v7

    invoke-static {v2, v4, v6, v7, p3}, Lcom/android/gallery3d/ui/a;->a([F[F[III)I

    move-result v6

    .line 189
    iget-object v7, v0, Lcom/android/gallery3d/ui/aa;->hX:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/ui/a;->a([F[F[F[FII[I)V

    .line 190
    return-void
.end method

.method private static a([F[F[III)I
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static/range {p3 .. p3}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v6

    .line 227
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v6

    div-float v7, v1, v2

    .line 229
    const/4 v5, 0x0

    .line 230
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 231
    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aget v4, p2, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v3

    .line 230
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 234
    :cond_0
    sub-int v1, p4, p3

    int-to-float v1, v1

    add-float v4, v1, v5

    .line 236
    const/4 v3, 0x0

    .line 237
    const/4 v2, 0x0

    .line 239
    const/4 v1, 0x0

    const/4 v8, 0x0

    aput v8, p0, v1

    .line 240
    const/4 v1, 0x0

    const/4 v8, 0x0

    aput v8, p1, v1

    .line 241
    const/4 v1, 0x0

    array-length v8, p2

    :goto_1
    if-ge v1, v8, :cond_1

    .line 245
    add-int/lit8 v9, v1, 0x1

    aget v10, p2, v1

    int-to-float v10, v10

    sub-float v2, v10, v2

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    aput v2, p0, v9

    .line 246
    add-int/lit8 v2, v1, 0x1

    aget v3, p2, v1

    int-to-float v3, v3

    const/high16 v9, 0x3f00

    add-float/2addr v3, v9

    int-to-float v9, v6

    div-float/2addr v3, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, p1, v2

    .line 249
    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    aget v3, p2, v1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 250
    mul-float v3, v4, v2

    div-float/2addr v3, v5

    .line 251
    sub-float/2addr v4, v3

    .line 252
    sub-float/2addr v5, v2

    .line 254
    add-int/lit8 v2, v1, 0x1

    aget v2, p0, v2

    add-float/2addr v3, v2

    .line 255
    add-int/lit8 v2, v1, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    .line 256
    add-int/lit8 v9, v1, 0x2

    const/high16 v10, 0x3f00

    sub-float v10, v3, v10

    aput v10, p0, v9

    .line 257
    add-int/lit8 v9, v1, 0x2

    const/high16 v10, 0x3f00

    sub-float v10, v2, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, p1, v9

    .line 241
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 260
    :cond_1
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p4

    int-to-float v2, v0

    aput v2, p0, v1

    .line 261
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    aput v7, p1, v1

    .line 264
    const/4 v2, 0x0

    .line 265
    const/4 v1, 0x1

    array-length v3, p2

    add-int/lit8 v3, v3, 0x2

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_2
    if-ge v2, v3, :cond_3

    .line 266
    aget v4, p0, v2

    aget v5, p0, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 265
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 267
    :cond_2
    add-int/lit8 v1, v1, 0x1

    aget v4, p0, v2

    aput v4, p0, v1

    .line 268
    aget v4, p1, v2

    aput v4, p1, v1

    goto :goto_3

    .line 270
    :cond_3
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static a(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter

    .prologue
    .line 356
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/gallery3d/ui/b;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const v4, 0x88e4

    const v3, 0x8892

    .line 360
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    .line 361
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->w:[I

    invoke-interface {v0, v6, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 364
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->w:[I

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 365
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/ui/a;->t:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 369
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 370
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->u:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/ui/a;->u:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 374
    const v1, 0x8893

    iget-object v2, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 375
    const v1, 0x8893

    iget-object v2, p0, Lcom/android/gallery3d/ui/a;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/a;->v:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 380
    iput-object v5, p0, Lcom/android/gallery3d/ui/a;->t:Ljava/nio/FloatBuffer;

    .line 381
    iput-object v5, p0, Lcom/android/gallery3d/ui/a;->u:Ljava/nio/FloatBuffer;

    .line 382
    iput-object v5, p0, Lcom/android/gallery3d/ui/a;->v:Ljava/nio/ByteBuffer;

    .line 383
    return-void
.end method

.method private a([F[F[F[FII[I)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v9, 0x0

    .line 295
    const/16 v1, 0x20

    new-array v10, v1, [F

    .line 296
    const/16 v1, 0x20

    new-array v11, v1, [F

    .line 297
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    move/from16 v0, p6

    if-ge v4, v0, :cond_1

    .line 298
    const/4 v1, 0x0

    move v2, v9

    :goto_1
    move/from16 v0, p5

    if-ge v1, v0, :cond_0

    .line 299
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v2, v2, 0x1

    .line 300
    add-int/lit8 v5, v2, 0x1

    .line 301
    aget v6, p1, v1

    aput v6, v10, v2

    .line 302
    aget v6, p2, v4

    aput v6, v10, v5

    .line 303
    aget v6, p3, v1

    aput v6, v11, v2

    .line 304
    aget v2, p4, v4

    aput v2, v11, v5

    .line 298
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 297
    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v9, v2

    goto :goto_0

    .line 308
    :cond_1
    const/4 v5, 0x1

    .line 309
    const/4 v7, 0x0

    .line 310
    const/16 v1, 0x18

    new-array v12, v1, [B

    .line 311
    const/4 v1, 0x0

    move v8, v1

    :goto_2
    add-int/lit8 v1, p6, -0x1

    if-ge v8, v1, :cond_6

    .line 312
    add-int/lit8 v5, v5, -0x1

    .line 313
    if-nez v7, :cond_3

    const/4 v1, 0x1

    move v7, v1

    .line 316
    :goto_3
    if-eqz v7, :cond_4

    .line 317
    const/4 v2, 0x0

    .line 319
    const/4 v1, 0x1

    move v3, v2

    move/from16 v2, p5

    :goto_4
    move v6, v3

    .line 326
    :goto_5
    if-eq v6, v2, :cond_5

    .line 327
    mul-int v4, v8, p5

    add-int v13, v4, v6

    .line 328
    if-eq v6, v3, :cond_7

    .line 329
    add-int/lit8 v4, p5, -0x1

    mul-int/2addr v4, v8

    add-int/2addr v4, v6

    .line 330
    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 331
    :cond_2
    aget v4, p7, v4

    if-nez v4, :cond_7

    .line 332
    add-int/lit8 v4, v5, -0x1

    aget-byte v4, v12, v4

    aput-byte v4, v12, v5

    .line 333
    add-int/lit8 v5, v5, 0x1

    .line 334
    add-int/lit8 v4, v5, 0x1

    int-to-byte v14, v13

    aput-byte v14, v12, v5

    .line 338
    :goto_6
    add-int/lit8 v14, v4, 0x1

    int-to-byte v5, v13

    aput-byte v5, v12, v4

    .line 339
    add-int/lit8 v5, v14, 0x1

    add-int v4, v13, p5

    int-to-byte v4, v4

    aput-byte v4, v12, v14

    .line 326
    add-int v4, v6, v1

    move v6, v4

    goto :goto_5

    .line 313
    :cond_3
    const/4 v1, 0x0

    move v7, v1

    goto :goto_3

    .line 321
    :cond_4
    add-int/lit8 v3, p5, -0x1

    .line 322
    const/4 v2, -0x1

    .line 323
    const/4 v1, -0x1

    goto :goto_4

    .line 311
    :cond_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    .line 343
    :cond_6
    iput v5, p0, Lcom/android/gallery3d/ui/a;->A:I

    .line 345
    mul-int/lit8 v1, v9, 0x2

    mul-int/lit8 v1, v1, 0x4

    .line 346
    invoke-static {v1}, Lcom/android/gallery3d/ui/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/a;->t:Ljava/nio/FloatBuffer;

    .line 347
    invoke-static {v1}, Lcom/android/gallery3d/ui/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/a;->u:Ljava/nio/FloatBuffer;

    .line 348
    iget v1, p0, Lcom/android/gallery3d/ui/a;->A:I

    invoke-static {v1}, Lcom/android/gallery3d/ui/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/a;->v:Ljava/nio/ByteBuffer;

    .line 350
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->t:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    mul-int/lit8 v3, v9, 0x2

    invoke-virtual {v1, v10, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->u:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    mul-int/lit8 v3, v9, 0x2

    invoke-virtual {v1, v11, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    iget-object v1, p0, Lcom/android/gallery3d/ui/a;->v:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    return-void

    :cond_7
    move v4, v5

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/a;->a(Lcom/android/gallery3d/ui/b;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    iget v7, p0, Lcom/android/gallery3d/ui/a;->A:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;IIIIII)V

    .line 391
    return-void
.end method

.method public b(Lcom/android/gallery3d/ui/b;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->b(I)V

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->b(I)V

    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->b(I)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/a;->w:[I

    .line 400
    :cond_0
    return-void
.end method
