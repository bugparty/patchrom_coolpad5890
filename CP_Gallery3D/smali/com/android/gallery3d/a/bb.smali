.class public Lcom/android/gallery3d/a/bb;
.super Lcom/android/gallery3d/a/aw;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeClustering"

.field private static final sK:I = 0x14

.field private static final sL:J = 0xea60L

.field private static final sM:J = 0x6ddd00L

.field private static final sN:I = 0x9

.field private static final sO:I = 0x8

.field private static final sP:I = 0xf

.field private static final sQ:I = 0x14

.field private static final sR:I = 0x32

.field private static sS:I = 0x0

.field private static final sT:I = 0x2

.field private static final sU:I = 0x2

.field private static final ta:Ljava/util/Comparator;


# instance fields
.field private cb:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;

.field private mNames:[Ljava/lang/String;

.field private sV:Lcom/android/gallery3d/a/y;

.field private sW:J

.field private sX:J

.field private sY:I

.field private sZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x3

    sput v0, Lcom/android/gallery3d/a/bb;->sS:I

    .line 82
    new-instance v0, Lcom/android/gallery3d/a/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/ag;-><init>(Lcom/android/gallery3d/a/bo;)V

    sput-object v0, Lcom/android/gallery3d/a/bb;->ta:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/gallery3d/a/aw;-><init>()V

    .line 74
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    .line 76
    iget-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/a/bb;->sX:J

    .line 78
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/gallery3d/a/bb;->sY:I

    .line 79
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    .line 92
    iput-object p1, p0, Lcom/android/gallery3d/a/bb;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/android/gallery3d/a/y;

    invoke-direct {v0}, Lcom/android/gallery3d/a/y;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    .line 95
    return-void
.end method

.method private a(JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 189
    if-eqz p3, :cond_0

    .line 190
    div-int/lit8 v0, p3, 0x9

    .line 193
    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/gallery3d/a/bb;->sY:I

    .line 194
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    .line 195
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/android/gallery3d/a/bb;->sS:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    .line 197
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    .line 198
    iget-wide v0, p0, Lcom/android/gallery3d/a/bb;->sW:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/a/bb;->sX:J

    .line 199
    iget v0, p0, Lcom/android/gallery3d/a/bb;->sY:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bb;->sY:I

    .line 200
    iget v0, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    .line 201
    return-void
.end method

.method private b(Lcom/android/gallery3d/a/ad;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 204
    if-eqz p1, :cond_7

    .line 205
    iget-object v2, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 206
    iget-object v3, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/y;->size()I

    move-result v3

    .line 212
    if-nez v3, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/y;->br()Lcom/android/gallery3d/a/ad;

    move-result-object v4

    .line 216
    invoke-static {v4, p1}, Lcom/android/gallery3d/a/bb;->b(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    iget-object v2, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 232
    :goto_1
    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/android/gallery3d/a/y;

    invoke-direct {v0}, Lcom/android/gallery3d/a/y;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    .line 234
    if-eqz v2, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    iput-boolean v1, v0, Lcom/android/gallery3d/a/y;->hZ:Z

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    goto :goto_0

    .line 219
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    if-le v3, v5, :cond_4

    .line 220
    invoke-direct {p0}, Lcom/android/gallery3d/a/bb;->dS()V

    move v2, v0

    goto :goto_1

    .line 221
    :cond_4
    invoke-static {v4, p1}, Lcom/android/gallery3d/a/bb;->c(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/gallery3d/a/bb;->sW:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 222
    iget-object v2, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    move v2, v0

    move v0, v1

    .line 223
    goto :goto_1

    .line 224
    :cond_5
    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/gallery3d/a/bb;->sY:I

    if-ge v3, v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    iget-boolean v2, v2, Lcom/android/gallery3d/a/y;->hZ:Z

    if-nez v2, :cond_6

    .line 226
    invoke-direct {p0}, Lcom/android/gallery3d/a/bb;->dU()V

    move v2, v0

    goto :goto_1

    .line 228
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    goto :goto_1

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/y;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/y;->size()I

    move-result v1

    .line 246
    iget v2, p0, Lcom/android/gallery3d/a/bb;->sZ:I

    if-le v1, v2, :cond_8

    .line 247
    invoke-direct {p0}, Lcom/android/gallery3d/a/bb;->dS()V

    .line 254
    :goto_2
    new-instance v0, Lcom/android/gallery3d/a/y;

    invoke-direct {v0}, Lcom/android/gallery3d/a/y;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    goto/16 :goto_0

    .line 248
    :cond_8
    if-lez v0, :cond_9

    iget v0, p0, Lcom/android/gallery3d/a/bb;->sY:I

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    iget-boolean v0, v0, Lcom/android/gallery3d/a/y;->hZ:Z

    if-nez v0, :cond_9

    .line 250
    invoke-direct {p0}, Lcom/android/gallery3d/a/bb;->dU()V

    goto :goto_2

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static b(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 334
    iget-wide v0, p0, Lcom/android/gallery3d/a/ad;->jA:D

    iget-wide v2, p0, Lcom/android/gallery3d/a/ad;->jB:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/gallery3d/a/ad;->jA:D

    iget-wide v2, p1, Lcom/android/gallery3d/a/ad;->jB:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v8

    .line 344
    :goto_0
    return v0

    .line 339
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/a/ad;->jA:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/ad;->jB:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/gallery3d/a/ad;->jA:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/gallery3d/a/ad;->jB:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/gallery3d/b/y;->a(DDDD)D

    move-result-wide v0

    .line 344
    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->a(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method private static c(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/android/gallery3d/a/ad;->jz:J

    iget-wide v2, p1, Lcom/android/gallery3d/a/ad;->jz:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private dS()V
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/y;->bs()Ljava/util/ArrayList;

    move-result-object v3

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/y;->size()I

    move-result v4

    .line 262
    invoke-direct {p0}, Lcom/android/gallery3d/a/bb;->dT()I

    move-result v1

    .line 263
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 264
    new-instance v5, Lcom/android/gallery3d/a/y;

    invoke-direct {v5}, Lcom/android/gallery3d/a/y;-><init>()V

    .line 265
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 266
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    .line 265
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Lcom/android/gallery3d/a/y;

    invoke-direct {v2}, Lcom/android/gallery3d/a/y;-><init>()V

    .line 270
    :goto_1
    if-ge v1, v4, :cond_1

    .line 271
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    .line 270
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_2
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private dT()I
    .locals 19

    .prologue
    .line 280
    const/4 v6, -0x1

    .line 281
    const/high16 v4, 0x4000

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/y;->bs()Ljava/util/ArrayList;

    move-result-object v9

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/y;->size()I

    move-result v10

    .line 284
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/a/bb;->sY:I

    .line 287
    add-int/lit8 v1, v8, 0x1

    if-le v10, v1, :cond_2

    move v7, v8

    .line 288
    :goto_0
    sub-int v1, v10, v8

    if-ge v7, v1, :cond_2

    .line 289
    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/ad;

    .line 290
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/a/ad;

    .line 291
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/a/ad;

    .line 293
    iget-wide v11, v3, Lcom/android/gallery3d/a/ad;->jz:J

    .line 294
    iget-wide v13, v2, Lcom/android/gallery3d/a/ad;->jz:J

    .line 295
    iget-wide v15, v1, Lcom/android/gallery3d/a/ad;->jz:J

    .line 297
    const-wide/16 v17, 0x0

    cmp-long v5, v11, v17

    if-eqz v5, :cond_3

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-eqz v5, :cond_3

    const-wide/16 v17, 0x0

    cmp-long v5, v15, v17

    if-nez v5, :cond_0

    move v1, v4

    move v2, v6

    .line 288
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v4, v1

    move v6, v2

    goto :goto_0

    .line 299
    :cond_0
    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 300
    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 302
    long-to-float v5, v11

    long-to-float v15, v13

    const v16, 0x3c23d70a

    add-float v15, v15, v16

    div-float/2addr v5, v15

    long-to-float v13, v13

    long-to-float v11, v11

    const v12, 0x3c23d70a

    add-float/2addr v11, v12

    div-float v11, v13, v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 303
    cmpl-float v11, v5, v4

    if-lez v11, :cond_3

    .line 304
    invoke-static {v2, v1}, Lcom/android/gallery3d/a/bb;->c(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/gallery3d/a/bb;->sX:J

    cmp-long v1, v11, v13

    if-lez v1, :cond_1

    move v1, v5

    move v2, v7

    .line 306
    goto :goto_1

    .line 307
    :cond_1
    invoke-static {v3, v2}, Lcom/android/gallery3d/a/bb;->c(Lcom/android/gallery3d/a/ad;Lcom/android/gallery3d/a/ad;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/gallery3d/a/bb;->sX:J

    cmp-long v1, v1, v11

    if-lez v1, :cond_3

    .line 308
    add-int/lit8 v1, v7, 0x1

    move v2, v1

    move v1, v5

    .line 309
    goto :goto_1

    .line 314
    :cond_2
    return v6

    :cond_3
    move v1, v4

    move v2, v6

    goto :goto_1
.end method

.method private dU()V
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/y;

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/y;->bs()Ljava/util/ArrayList;

    move-result-object v4

    .line 321
    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/y;->size()I

    move-result v5

    .line 322
    invoke-virtual {v0}, Lcom/android/gallery3d/a/y;->size()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/a/bb;->sY:I

    if-ge v1, v2, :cond_1

    .line 323
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    .line 324
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/ad;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/y;->a(Lcom/android/gallery3d/a/ad;)V

    .line 323
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 330
    :goto_1
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/bb;->sV:Lcom/android/gallery3d/a/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public J()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/gallery3d/a/r;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v1

    .line 114
    new-array v2, v1, [Lcom/android/gallery3d/a/ad;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 117
    new-instance v3, Lcom/android/gallery3d/a/bo;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/gallery3d/a/bo;-><init>(Lcom/android/gallery3d/a/bb;I[D[Lcom/android/gallery3d/a/ad;)V

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/bu;)V

    .line 130
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v6

    .line 131
    :goto_0
    if-ge v0, v1, :cond_1

    .line 132
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 133
    aget-object v3, v2, v0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    sget-object v0, Lcom/android/gallery3d/a/bb;->ta:Ljava/util/Comparator;

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v7, v6

    move-wide v2, v8

    move-wide v4, v8

    .line 142
    :goto_1
    if-ge v7, v11, :cond_4

    .line 143
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    iget-wide v0, v0, Lcom/android/gallery3d/a/ad;->jz:J

    .line 144
    cmp-long v12, v0, v8

    if-nez v12, :cond_2

    move-wide v0, v2

    move-wide v2, v4

    .line 142
    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_1

    .line 145
    :cond_2
    cmp-long v12, v4, v8

    if-nez v12, :cond_3

    move-wide v2, v0

    .line 146
    goto :goto_2

    .line 148
    :cond_3
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 149
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v4

    goto :goto_2

    .line 153
    :cond_4
    sub-long v0, v2, v4

    invoke-direct {p0, v0, v1, v11}, Lcom/android/gallery3d/a/bb;->a(JI)V

    move v1, v6

    .line 155
    :goto_3
    if-ge v1, v11, :cond_5

    .line 156
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/bb;->b(Lcom/android/gallery3d/a/ad;)V

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 159
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/bb;->b(Lcom/android/gallery3d/a/ad;)V

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 162
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/bb;->mNames:[Ljava/lang/String;

    move v1, v6

    .line 163
    :goto_4
    if-ge v1, v2, :cond_6

    .line 164
    iget-object v3, p0, Lcom/android/gallery3d/a/bb;->mNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/y;

    iget-object v4, p0, Lcom/android/gallery3d/a/bb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/a/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 166
    :cond_6
    return-void
.end method

.method public i(I)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->cb:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/y;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/y;->bs()Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 178
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    iget-object v0, v0, Lcom/android/gallery3d/a/ad;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_0
    return-object v3
.end method

.method public j(I)D
    .locals 2
    .parameter

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    .line 101
    return-wide v0
.end method

.method public k(I)D
    .locals 2
    .parameter

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    .line 107
    return-wide v0
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/a/bb;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
