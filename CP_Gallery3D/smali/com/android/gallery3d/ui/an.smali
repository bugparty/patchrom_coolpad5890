.class abstract Lcom/android/gallery3d/ui/an;
.super Lcom/android/gallery3d/ui/ah;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static lM:Ljava/util/HashMap; = null

.field private static lN:Lcom/android/gallery3d/ui/bu; = null

.field private static lQ:I = 0x0

.field private static final lR:I = 0x64

.field static lT:[I

.field static lU:[F


# instance fields
.field private lO:Z

.field private lP:Z

.field private lS:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/an;->lM:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/android/gallery3d/ui/bu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/bu;-><init>(Lcom/android/gallery3d/ui/ax;)V

    sput-object v0, Lcom/android/gallery3d/ui/an;->lN:Lcom/android/gallery3d/ui/bu;

    .line 218
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/an;->lT:[I

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/ui/an;->lU:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/an;-><init>(Z)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/gallery3d/ui/ah;-><init>(Lcom/android/gallery3d/ui/b;II)V

    .line 55
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/an;->lO:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/an;->mOpaque:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/an;->lP:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/an;->g(Z)V

    .line 72
    iput v1, p0, Lcom/android/gallery3d/ui/an;->lS:I

    .line 74
    :cond_0
    return-void
.end method

.method private static a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 111
    sget-object v1, Lcom/android/gallery3d/ui/an;->lN:Lcom/android/gallery3d/ui/bu;

    .line 112
    iput-boolean p0, v1, Lcom/android/gallery3d/ui/bu;->tb:Z

    .line 113
    iput-object p1, v1, Lcom/android/gallery3d/ui/bu;->tc:Landroid/graphics/Bitmap$Config;

    .line 114
    iput p2, v1, Lcom/android/gallery3d/ui/bu;->length:I

    .line 115
    sget-object v0, Lcom/android/gallery3d/ui/an;->lM:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 116
    if-nez v0, :cond_0

    .line 117
    if-eqz p0, :cond_1

    invoke-static {v2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :goto_0
    sget-object v2, Lcom/android/gallery3d/ui/an;->lM:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bu;->dV()Lcom/android/gallery3d/ui/bu;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-object v0

    .line 117
    :cond_1
    invoke-static {p2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private cE()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/an;->h(Landroid/graphics/Bitmap;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cG()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/an;->lQ:I

    .line 212
    return-void
.end method

.method public static cH()Z
    .locals 2

    .prologue
    .line 215
    sget v0, Lcom/android/gallery3d/ui/an;->lQ:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/an;->cp()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/an;->lS:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/an;->lS:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 134
    iget v2, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/an;->setSize(II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 136
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    if-eq v2, v1, :cond_0

    .line 137
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot change size: this = %s, orig = %sx%s, new = %sx%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "Texture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/bw;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "decode_file_outofmemory"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->cE()V

    goto :goto_0
.end method

.method private k(Lcom/android/gallery3d/ui/b;)V
    .locals 20
    .parameter

    .prologue
    .line 222
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/an;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 225
    if-eqz v14, :cond_4

    .line 227
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 228
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/an;->lS:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, v17

    .line 230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/an;->lS:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, v18

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/an;->cb()I

    move-result v5

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/an;->cc()I

    move-result v6

    .line 237
    sget-object v2, Lcom/android/gallery3d/ui/an;->lU:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/an;->lS:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 238
    sget-object v2, Lcom/android/gallery3d/ui/an;->lU:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/an;->lS:I

    add-int v4, v4, v18

    int-to-float v4, v4

    aput v4, v2, v3

    .line 239
    sget-object v2, Lcom/android/gallery3d/ui/an;->lU:[F

    const/4 v3, 0x2

    move/from16 v0, v17

    int-to-float v4, v0

    aput v4, v2, v3

    .line 240
    sget-object v2, Lcom/android/gallery3d/ui/an;->lU:[F

    const/4 v3, 0x3

    move/from16 v0, v18

    neg-int v4, v0

    int-to-float v4, v4

    aput v4, v2, v3

    .line 243
    const/4 v2, 0x1

    sget-object v3, Lcom/android/gallery3d/ui/an;->lT:[I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 244
    const/16 v2, 0xde1

    sget-object v3, Lcom/android/gallery3d/ui/an;->lT:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 245
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v4, Lcom/android/gallery3d/ui/an;->lU:[F

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 247
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 249
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 251
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 253
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 256
    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    move/from16 v0, v18

    if-ne v0, v6, :cond_1

    .line 257
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v14, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/an;->cE()V

    .line 298
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/an;->g(Lcom/android/gallery3d/ui/b;)V

    .line 299
    sget-object v1, Lcom/android/gallery3d/ui/an;->lT:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/ah;->mId:I

    .line 300
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/ah;->mState:I

    .line 301
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/an;->lO:Z

    .line 307
    :goto_1
    return-void

    .line 259
    :cond_1
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 260
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 261
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    .line 263
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 265
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/ui/an;->lS:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/an;->lS:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/an;->lS:I

    if-lez v1, :cond_2

    .line 270
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-static {v1, v0, v6}, Lcom/android/gallery3d/ui/an;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 271
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 275
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/an;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 276
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 281
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/an;->lS:I

    add-int v1, v1, v17

    if-ge v1, v5, :cond_3

    .line 282
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-static {v1, v0, v6}, Lcom/android/gallery3d/ui/an;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 283
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/an;->lS:I

    add-int v12, v1, v17

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 288
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/an;->lS:I

    add-int v1, v1, v18

    if-ge v1, v6, :cond_0

    .line 289
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v0, v5}, Lcom/android/gallery3d/ui/an;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 290
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/ui/an;->lS:I

    add-int v13, v1, v18

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 295
    :catchall_0
    move-exception v1

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/an;->cE()V

    throw v1

    .line 303
    :cond_4
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/ui/ah;->mState:I

    .line 305
    const-string v1, "Texture"

    const-string v2, "Texture load fail, no bitmap"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/bw;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method protected cF()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->cE()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/an;->lO:Z

    .line 177
    return-void
.end method

.method protected abstract cp()Landroid/graphics/Bitmap;
.end method

.method protected f(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/an;->j(Lcom/android/gallery3d/ui/b;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/an;->i(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->getBitmap()Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->getBitmap()Landroid/graphics/Bitmap;

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    return v0
.end method

.method protected abstract h(Landroid/graphics/Bitmap;)V
.end method

.method protected h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/an;->lP:Z

    .line 107
    return-void
.end method

.method public i(Lcom/android/gallery3d/ui/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/an;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/an;->lO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/an;->mOpaque:Z

    return v0
.end method

.method public j(Lcom/android/gallery3d/ui/b;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0xde1

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/an;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/an;->lP:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/gallery3d/ui/an;->lQ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/an;->lQ:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/an;->k(Lcom/android/gallery3d/ui/b;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/an;->lO:Z

    if-nez v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 198
    if-eqz v4, :cond_0

    .line 199
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 200
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 201
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ah;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 202
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/ui/an;->lS:I

    iget v3, p0, Lcom/android/gallery3d/ui/an;->lS:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 204
    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->cE()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/an;->lO:Z

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/gallery3d/ui/ah;->recycle()V

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/ui/an;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/an;->cE()V

    .line 327
    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/an;->mOpaque:Z

    .line 317
    return-void
.end method
