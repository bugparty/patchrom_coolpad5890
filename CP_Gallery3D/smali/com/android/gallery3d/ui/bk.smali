.class public Lcom/android/gallery3d/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuExecutor"

.field private static final rU:I = 0x1

.field private static final rV:I = 0x2

.field private static final rW:I = 0x3

.field public static final rX:I = 0x1

.field public static final rY:I = 0x2

.field public static final rZ:I = 0x3


# instance fields
.field private ai:Lcom/android/gallery3d/b/l;

.field private final et:Lcom/android/gallery3d/app/bm;

.field private final iG:Lcom/android/gallery3d/ui/ev;

.field private final mHandler:Landroid/os/Handler;

.field private sa:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/bm;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    .line 99
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ev;

    iput-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    .line 100
    new-instance v0, Lcom/android/gallery3d/ui/v;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/v;-><init>(Lcom/android/gallery3d/ui/bk;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bk;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method private static a(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 81
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 84
    if-le p2, v2, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    return-object v0
.end method

.method private a(ILcom/android/gallery3d/ui/cg;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method public static a(Landroid/view/Menu;I)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 160
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v9, v0

    .line 161
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 162
    :goto_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 163
    :goto_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v8, v0

    .line 164
    :goto_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v7, v0

    .line 165
    :goto_4
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v6, v0

    .line 166
    :goto_5
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    .line 167
    :cond_0
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 168
    :goto_6
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v5, v0

    .line 169
    :goto_7
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 172
    :goto_8
    const/4 v1, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/provider/MediaStore;->getAvailablePath(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/android/gallery3d/ui/bk;->calRemaining(Ljava/lang/String;)J

    move-result-wide v10

    .line 175
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 177
    :goto_9
    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v1, 0x0

    .line 185
    :cond_1
    const v10, 0x7f0a0047

    invoke-static {p0, v10, v9}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 186
    const v9, 0x7f0a004b

    invoke-static {p0, v9, v4}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 187
    const v9, 0x7f0a004c

    invoke-static {p0, v9, v4}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 188
    const v4, 0x7f0a004d

    invoke-static {p0, v4, v3}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 189
    const v4, 0x7f0a0051

    invoke-static {p0, v4, v3}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 190
    const v3, 0x7f0a0045

    invoke-static {p0, v3, v8}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 191
    const v3, 0x7f0a004e

    invoke-static {p0, v3, v7}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 192
    const v3, 0x7f0a0050

    invoke-static {p0, v3, v6}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 193
    const v3, 0x7f0a004a

    invoke-static {p0, v3, v2}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 194
    const v2, 0x7f0a004f

    invoke-static {p0, v2, v5}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 195
    const v2, 0x7f0a0046

    invoke-static {p0, v2, v0}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 198
    const v0, 0x7f0a0052

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;IZ)V

    .line 199
    return-void

    .line 160
    :cond_2
    const/4 v0, 0x0

    move v9, v0

    goto/16 :goto_0

    .line 161
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 162
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 163
    :cond_5
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_3

    .line 164
    :cond_6
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_4

    .line 165
    :cond_7
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_5

    .line 167
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 168
    :cond_9
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_7

    .line 169
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 175
    :cond_b
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private static a(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dI()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bk;->a(ILcom/android/gallery3d/ui/cg;)V

    return-void
.end method

.method private a(Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/b/j;ILcom/android/gallery3d/a/dd;)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    const/4 v11, 0x1

    .line 358
    const-string v2, "MenuExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 361
    sparse-switch p3, :sswitch_data_0

    .line 459
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 363
    :sswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->i(Lcom/android/gallery3d/a/dd;)V

    move v2, v11

    .line 461
    :goto_0
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to execute cmd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v2

    .line 375
    :sswitch_1
    const/16 v2, 0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;I)V

    move v2, v11

    .line 376
    goto :goto_0

    .line 378
    :sswitch_2
    const/16 v2, -0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;I)V

    move v2, v11

    .line 379
    goto :goto_0

    .line 381
    :sswitch_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v3

    .line 382
    invoke-virtual {v3}, Lcom/android/gallery3d/a/bj;->eu()I

    move-result v2

    .line 383
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 384
    const/4 v2, 0x1

    .line 388
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/a/bj;->au(I)V

    move v2, v11

    .line 389
    goto :goto_0

    .line 386
    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    .line 392
    :sswitch_4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/a/ax;

    .line 393
    const/4 v3, 0x2

    new-array v3, v3, [D

    .line 394
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/a/ax;->a([D)V

    .line 395
    const/4 v2, 0x0

    aget-wide v4, v3, v2

    const/4 v2, 0x1

    aget-wide v6, v3, v2

    invoke-static {v4, v5, v6, v7}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/gallery3d/b/y;->a(Landroid/content/Context;DD)V

    move v2, v11

    goto/16 :goto_0

    .line 401
    :sswitch_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Lcom/android/gallery3d/a/bj;->el()Z

    move-result v2

    goto/16 :goto_0

    .line 406
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    move-object v8, v2

    check-cast v8, Landroid/app/Activity;

    .line 407
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/gallery3d/a/ax;

    .line 409
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 410
    invoke-virtual {v9}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v10

    .line 411
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_5

    .line 413
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 414
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 415
    const-string v5, "_data = ?"

    .line 416
    const/4 v12, 0x0

    .line 418
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "_id"

    aput-object v15, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 422
    if-eqz v4, :cond_6

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 423
    const-string v2, "MenuExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    move-object v2, v10

    .line 429
    :goto_2
    if-eqz v4, :cond_1

    .line 430
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_1
    :goto_3
    invoke-virtual {v9}, Lcom/android/gallery3d/a/ax;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 438
    if-eqz v3, :cond_4

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 439
    const-string v3, "image/*"

    .line 444
    :cond_2
    :goto_4
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x14000001

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v11

    .line 455
    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v2

    move-object v2, v12

    .line 429
    :goto_5
    if-eqz v2, :cond_5

    .line 430
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v10

    .line 431
    goto :goto_3

    .line 429
    :catchall_0
    move-exception v2

    move-object v4, v12

    :goto_6
    if-eqz v4, :cond_3

    .line 430
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_3
    throw v2

    .line 440
    :cond_4
    if-nez v3, :cond_2

    invoke-virtual {v9}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 441
    const-string v3, "image/*"

    goto :goto_4

    .line 450
    :catch_1
    move-exception v2

    .line 451
    const-string v3, "MenuExecutor"

    const-string v4, "failed to start edit activity: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    const v2, 0x7f0d0057

    invoke-virtual {v8, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v11

    .line 456
    goto/16 :goto_0

    .line 429
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 426
    :catch_2
    move-exception v2

    move-object v2, v4

    goto :goto_5

    :cond_5
    move-object v2, v10

    goto :goto_3

    :cond_6
    move-object v2, v10

    goto :goto_2

    :cond_7
    move v2, v11

    goto/16 :goto_0

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0000 -> :sswitch_3
        0x7f0a0046 -> :sswitch_5
        0x7f0a0048 -> :sswitch_0
        0x7f0a004a -> :sswitch_6
        0x7f0a004b -> :sswitch_2
        0x7f0a004c -> :sswitch_1
        0x7f0a0050 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bk;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/b/j;ILcom/android/gallery3d/a/dd;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/bk;->a(Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/b/j;ILcom/android/gallery3d/a/dd;)Z

    move-result v0

    return v0
.end method

.method private aj(I)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 216
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/bk;)Lcom/android/gallery3d/ui/ev;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    return-object v0
.end method

.method private b(ILcom/android/gallery3d/ui/cg;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/bk;ILcom/android/gallery3d/ui/cg;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bk;->b(ILcom/android/gallery3d/ui/cg;)V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/bk;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->sa:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 510
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 514
    float-to-long v0, v0

    .line 520
    :goto_0
    return-wide v0

    .line 516
    :catch_0
    move-exception v0

    .line 520
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/bk;)Lcom/android/gallery3d/app/bm;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    return-object v0
.end method

.method private dI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->ai:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->ai:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->ai:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->sa:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/android/gallery3d/ui/bk;->sa:Landroid/app/ProgressDialog;

    .line 136
    iput-object v1, p0, Lcom/android/gallery3d/ui/bk;->ai:Lcom/android/gallery3d/b/l;

    .line 138
    :cond_0
    return-void
.end method

.method private dJ()Lcom/android/gallery3d/a/dd;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    .line 211
    :cond_0
    return-object v0
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 346
    packed-switch p0, :pswitch_data_0

    .line 351
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 348
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 350
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(IILcom/android/gallery3d/ui/cg;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->x(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 337
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dI()V

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 340
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, p2, v2}, Lcom/android/gallery3d/ui/bk;->a(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bk;->sa:Landroid/app/ProgressDialog;

    .line 341
    new-instance v0, Lcom/android/gallery3d/ui/bx;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/bx;-><init>(Lcom/android/gallery3d/ui/bk;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/cg;)V

    .line 342
    iget-object v1, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/bk;->ai:Lcom/android/gallery3d/b/l;

    .line 343
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/cg;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0d00d5

    const v0, 0x7f0d0047

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 223
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 328
    :goto_0
    return v0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->go()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gn()V

    :goto_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->selectAll()V

    goto :goto_1

    .line 232
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dJ()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 233
    if-nez v0, :cond_1

    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/bk;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 240
    goto :goto_0

    .line 245
    :pswitch_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dJ()Lcom/android/gallery3d/a/dd;

    move-result-object v4

    .line 246
    if-nez v4, :cond_2

    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 250
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v0

    .line 252
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 253
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionCopytoClipboard mimeType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 257
    const-string v3, "clipboard"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 258
    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setImage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clipboard filePath = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez v0, :cond_4

    .line 262
    const v0, 0x7f0d00cc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/bk;->aj(I)V

    :goto_2
    move v0, v1

    .line 279
    goto/16 :goto_0

    .line 263
    :cond_4
    const-string v3, "CLIPBOARDMANAGER_SETIMAGE_IS_NOT_IMAGE"

    if-ne v0, v3, :cond_5

    .line 264
    const v0, 0x7f0d00cc

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/bk;->aj(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string v2, "decode_file_outofmemory"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/bk;->aj(I)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 265
    :cond_5
    :try_start_1
    const-string v3, "CLIPBOARDMANAGER_SETIMAGE_IS_TOO_BIG"

    if-ne v0, v3, :cond_6

    .line 266
    const v0, 0x7f0d00cd

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/bk;->aj(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 274
    :catch_1
    move-exception v0

    .line 275
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/bk;->aj(I)V

    .line 276
    const-string v1, "MenuExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 277
    goto/16 :goto_0

    .line 268
    :cond_6
    const v0, 0x7f0d00cb

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/bk;->aj(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 283
    :pswitch_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dJ()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 284
    if-nez v0, :cond_7

    move v0, v1

    .line 285
    goto/16 :goto_0

    .line 287
    :cond_7
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->k(Lcom/android/gallery3d/a/dd;)I

    move-result v2

    .line 288
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ATTACH_DATA"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {v2}, Lcom/android/gallery3d/ui/bk;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v0, "mimeType"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lcom/android/gallery3d/ui/bk;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 294
    const v2, 0x7f0d005b

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 296
    goto/16 :goto_0

    .line 306
    :pswitch_5
    const v0, 0x7f0d0008

    .line 327
    :goto_3
    :pswitch_6
    invoke-virtual {p0, v4, v0, p2}, Lcom/android/gallery3d/ui/bk;->a(IILcom/android/gallery3d/ui/cg;)V

    move v0, v1

    .line 328
    goto/16 :goto_0

    .line 310
    :pswitch_7
    const v0, 0x7f0d0054

    .line 311
    goto :goto_3

    .line 313
    :pswitch_8
    const v0, 0x7f0d0053

    .line 314
    goto :goto_3

    .line 316
    :pswitch_9
    const v0, 0x7f0d0052

    .line 317
    goto :goto_3

    .line 319
    :pswitch_a
    const v0, 0x7f0d0056

    .line 320
    goto :goto_3

    .line 322
    :pswitch_b
    const v0, 0x7f0d0097

    .line 323
    goto :goto_3

    .line 223
    :pswitch_data_0
    .packed-switch 0x7f0a0046
        :pswitch_b
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bk;->dI()V

    .line 142
    return-void
.end method
