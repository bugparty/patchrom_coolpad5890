.class Lcom/android/gallery3d/a/h;
.super Lcom/android/gallery3d/a/aw;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationClustering"

.field private static final bX:I = 0x1

.field private static final bY:I = 0x14

.field private static final bZ:I = 0x1e

.field private static final ca:F = 0.01f


# instance fields
.field private cb:Ljava/util/ArrayList;

.field private cc:Ljava/util/ArrayList;

.field private cd:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/a/aw;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/h;->cd:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/h;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/a/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v2, Lcom/android/gallery3d/b/k;

    invoke-direct {v2}, Lcom/android/gallery3d/b/k;-><init>()V

    .line 195
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 197
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cn;

    .line 198
    iget-wide v4, v0, Lcom/android/gallery3d/a/cn;->jA:D

    .line 199
    iget-wide v6, v0, Lcom/android/gallery3d/a/cn;->jB:D

    .line 201
    iget-wide v8, v2, Lcom/android/gallery3d/b/k;->nh:D

    cmpl-double v0, v8, v4

    if-lez v0, :cond_0

    .line 202
    iput-wide v4, v2, Lcom/android/gallery3d/b/k;->nh:D

    .line 203
    iput-wide v6, v2, Lcom/android/gallery3d/b/k;->ni:D

    .line 205
    :cond_0
    iget-wide v8, v2, Lcom/android/gallery3d/b/k;->nj:D

    cmpg-double v0, v8, v4

    if-gez v0, :cond_1

    .line 206
    iput-wide v4, v2, Lcom/android/gallery3d/b/k;->nj:D

    .line 207
    iput-wide v6, v2, Lcom/android/gallery3d/b/k;->nk:D

    .line 209
    :cond_1
    iget-wide v8, v2, Lcom/android/gallery3d/b/k;->nm:D

    cmpl-double v0, v8, v6

    if-lez v0, :cond_2

    .line 210
    iput-wide v4, v2, Lcom/android/gallery3d/b/k;->nl:D

    .line 211
    iput-wide v6, v2, Lcom/android/gallery3d/b/k;->nm:D

    .line 213
    :cond_2
    iget-wide v8, v2, Lcom/android/gallery3d/b/k;->np:D

    cmpg-double v0, v8, v6

    if-gez v0, :cond_3

    .line 214
    iput-wide v4, v2, Lcom/android/gallery3d/b/k;->nn:D

    .line 215
    iput-wide v6, v2, Lcom/android/gallery3d/b/k;->np:D

    .line 196
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/b/v;->a(Lcom/android/gallery3d/b/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Lcom/android/gallery3d/a/bw;[I)[I
    .locals 27
    .parameter
    .parameter

    .prologue
    .line 265
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    .line 268
    const/4 v2, 0x1

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    const/16 v3, 0x14

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 271
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/gallery3d/a/bw;

    move-object/from16 v21, v0

    .line 272
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/gallery3d/a/bw;

    move-object/from16 v22, v0

    .line 273
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 274
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 276
    const/4 v3, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v3, v0, :cond_0

    .line 277
    new-instance v4, Lcom/android/gallery3d/a/bw;

    invoke-direct {v4}, Lcom/android/gallery3d/a/bw;-><init>()V

    aput-object v4, v21, v3

    .line 278
    new-instance v4, Lcom/android/gallery3d/a/bw;

    invoke-direct {v4}, Lcom/android/gallery3d/a/bw;-><init>()V

    aput-object v4, v22, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const v14, 0x7f7fffff

    .line 285
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 287
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, p1, v3

    .line 289
    const/4 v3, 0x0

    .line 290
    const/4 v13, 0x0

    move/from16 v18, v2

    .line 292
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_c

    .line 294
    div-int v4, v19, v18

    .line 295
    const/4 v2, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v2, v0, :cond_1

    .line 296
    mul-int v5, v2, v4

    aget-object v5, p0, v5

    .line 297
    aget-object v6, v21, v2

    iget-wide v7, v5, Lcom/android/gallery3d/a/bw;->Ac:D

    iput-wide v7, v6, Lcom/android/gallery3d/a/bw;->Ac:D

    .line 298
    aget-object v6, v21, v2

    iget-wide v7, v5, Lcom/android/gallery3d/a/bw;->Ad:D

    iput-wide v7, v6, Lcom/android/gallery3d/a/bw;->Ad:D

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 301
    :cond_1
    const/4 v2, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v13

    :goto_3
    const/16 v3, 0x1e

    move/from16 v0, v16

    if-ge v0, v3, :cond_8

    .line 303
    const/4 v2, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    .line 304
    aget-object v3, v22, v2

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/gallery3d/a/bw;->Ac:D

    .line 305
    aget-object v3, v22, v2

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/gallery3d/a/bw;->Ad:D

    .line 306
    const/4 v3, 0x0

    aput v3, v23, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 308
    :cond_2
    const/4 v13, 0x0

    .line 310
    const/4 v2, 0x0

    move v15, v2

    :goto_5
    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    .line 311
    aget-object v26, p0, v15

    .line 312
    const v12, 0x7f7fffff

    .line 313
    const/4 v11, 0x0

    .line 314
    const/4 v10, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 315
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/android/gallery3d/a/bw;->Ac:D

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/gallery3d/a/bw;->Ad:D

    aget-object v6, v21, v10

    iget-wide v6, v6, Lcom/android/gallery3d/a/bw;->Ac:D

    aget-object v8, v21, v10

    iget-wide v8, v8, Lcom/android/gallery3d/a/bw;->Ad:D

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/b/y;->a(DDDD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 320
    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    .line 321
    const/4 v2, 0x0

    .line 323
    :cond_3
    cmpg-float v3, v2, v12

    if-gez v3, :cond_11

    move v3, v2

    move v2, v10

    .line 314
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move v11, v2

    move v12, v3

    goto :goto_6

    .line 328
    :cond_4
    aput v11, v24, v15

    .line 329
    aget v2, v23, v11

    add-int/lit8 v2, v2, 0x1

    aput v2, v23, v11

    .line 330
    aget-object v2, v22, v11

    iget-wide v3, v2, Lcom/android/gallery3d/a/bw;->Ac:D

    move-object/from16 v0, v26

    iget-wide v5, v0, Lcom/android/gallery3d/a/bw;->Ac:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/a/bw;->Ac:D

    .line 331
    aget-object v2, v22, v11

    iget-wide v3, v2, Lcom/android/gallery3d/a/bw;->Ad:D

    move-object/from16 v0, v26

    iget-wide v5, v0, Lcom/android/gallery3d/a/bw;->Ad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/android/gallery3d/a/bw;->Ad:D

    .line 332
    add-float/2addr v13, v12

    .line 310
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_5

    .line 336
    :cond_5
    const/4 v2, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v2, v0, :cond_7

    .line 337
    aget v3, v23, v2

    if-lez v3, :cond_6

    .line 338
    aget-object v3, v21, v2

    aget-object v4, v22, v2

    iget-wide v4, v4, Lcom/android/gallery3d/a/bw;->Ac:D

    aget v6, v23, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/android/gallery3d/a/bw;->Ac:D

    .line 339
    aget-object v3, v21, v2

    aget-object v4, v22, v2

    iget-wide v4, v4, Lcom/android/gallery3d/a/bw;->Ad:D

    aget v6, v23, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/android/gallery3d/a/bw;->Ad:D

    .line 336
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 343
    :cond_7
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_10

    sub-float v2, v17, v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v13

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    move v2, v13

    .line 351
    :cond_8
    :goto_9
    move/from16 v0, v18

    new-array v6, v0, [I

    .line 352
    const/4 v4, 0x0

    .line 353
    const/4 v3, 0x0

    move v5, v3

    :goto_a
    move/from16 v0, v18

    if-ge v5, v0, :cond_a

    .line 354
    aget v3, v23, v5

    if-lez v3, :cond_f

    .line 355
    add-int/lit8 v3, v4, 0x1

    aput v4, v6, v5

    .line 353
    :goto_b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_a

    .line 301
    :cond_9
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move/from16 v17, v13

    move v2, v13

    goto/16 :goto_3

    .line 360
    :cond_a
    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float/2addr v3, v2

    .line 362
    cmpg-float v5, v3, v14

    if-gez v5, :cond_d

    .line 364
    const/4 v5, 0x0

    aput v4, p1, v5

    .line 365
    const/4 v4, 0x0

    :goto_c
    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    .line 366
    aget v5, v24, v4

    aget v5, v6, v5

    aput v5, v25, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 368
    :cond_b
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_e

    .line 373
    :cond_c
    return-object v25

    :cond_d
    move v3, v14

    .line 292
    :cond_e
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    move v13, v2

    move v14, v3

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_f
    move v3, v4

    goto :goto_b

    :cond_10
    move v2, v13

    goto :goto_9

    :cond_11
    move v2, v11

    move v3, v12

    goto/16 :goto_7
.end method

.method static synthetic b(Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/gallery3d/a/h;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/gallery3d/a/r;)V
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v2

    .line 70
    new-array v3, v2, [Lcom/android/gallery3d/a/cn;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    new-instance v6, Lcom/android/gallery3d/a/i;

    invoke-direct {v6, p0, v2, v0, v3}, Lcom/android/gallery3d/a/i;-><init>(Lcom/android/gallery3d/a/h;I[D[Lcom/android/gallery3d/a/cn;)V

    invoke-virtual {p1, v6}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 86
    const-string v0, "LocationClustering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get point "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 90
    :goto_0
    if-ge v0, v2, :cond_2

    .line 91
    aget-object v7, v3, v0

    .line 92
    if-nez v7, :cond_0

    .line 90
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-wide v8, v7, Lcom/android/gallery3d/a/cn;->jA:D

    iget-wide v10, v7, Lcom/android/gallery3d/a/cn;->jB:D

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v8, Lcom/android/gallery3d/a/bw;

    iget-wide v9, v7, Lcom/android/gallery3d/a/cn;->jA:D

    iget-wide v11, v7, Lcom/android/gallery3d/a/cn;->jB:D

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/a/bw;-><init>(DD)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 104
    const-string v0, "LocationClustering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "withLatLong.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-lez v3, :cond_4

    .line 107
    new-array v0, v3, [Lcom/android/gallery3d/a/bw;

    .line 108
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/a/bw;

    .line 109
    const/4 v6, 0x1

    new-array v6, v6, [I

    .line 110
    invoke-static {v0, v6}, Lcom/android/gallery3d/a/h;->a([Lcom/android/gallery3d/a/bw;[I)[I

    move-result-object v7

    move v0, v1

    .line 112
    :goto_2
    aget v8, v6, v1

    if-ge v0, v8, :cond_3

    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    .line 117
    aget v0, v7, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 121
    new-instance v6, Lcom/android/gallery3d/b/v;

    iget-object v0, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/android/gallery3d/b/v;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/h;->cc:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    .line 128
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/a/k;

    invoke-direct {v1, p0, v0, v6}, Lcom/android/gallery3d/a/k;-><init>(Lcom/android/gallery3d/a/h;Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    const-wide/16 v7, 0x64

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :goto_6
    const-string v1, "LocationClustering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    const-string v7, ""

    if-eq v1, v7, :cond_5

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/a/h;->cc:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/gallery3d/a/h;->mName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_7
    iget-object v1, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "LocationClustering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    :catch_1
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 157
    :cond_5
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/cn;

    iget-wide v7, v1, Lcom/android/gallery3d/a/cn;->jA:D

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/cn;

    iget-wide v8, v1, Lcom/android/gallery3d/a/cn;->jB:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 160
    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 161
    const/4 v10, 0x0

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 162
    const/4 v8, 0x0

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v8, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    const v9, 0x7f0d00dd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 164
    iget-object v9, p0, Lcom/android/gallery3d/a/h;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00de

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    iget-object v10, p0, Lcom/android/gallery3d/a/h;->cc:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 174
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cc:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/h;->cd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    const-string v2, "LocationClustering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReverseGeocoder get GPS Name User time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 136
    :catch_2
    move-exception v7

    goto/16 :goto_5
.end method

.method public i(I)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/cn;

    iget-object v1, v1, Lcom/android/gallery3d/a/cn;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 234
    :cond_0
    return-object v3
.end method

.method public j(I)D
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 240
    const-wide/16 v0, 0x0

    .line 241
    iget-object v2, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cn;

    iget-wide v0, v0, Lcom/android/gallery3d/a/cn;->jA:D

    .line 244
    :cond_0
    return-wide v0
.end method

.method public k(I)D
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    const-wide/16 v0, 0x0

    .line 250
    iget-object v2, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/cn;

    iget-wide v0, v0, Lcom/android/gallery3d/a/cn;->jB:D

    .line 253
    :cond_0
    return-wide v0
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/a/h;->cc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
