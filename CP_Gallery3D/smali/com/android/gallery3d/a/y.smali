.class Lcom/android/gallery3d/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cluster"

.field private static final hY:Ljava/lang/String; = "MMddyy"


# instance fields
.field public hZ:Z

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 369
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/a/y;->hZ:Z

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    .line 370
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public br()Lcom/android/gallery3d/a/ad;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    goto :goto_0
.end method

.method public bs()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const/high16 v5, 0x1

    const/4 v12, 0x4

    const-wide/16 v9, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 394
    const/4 v0, 0x0

    move v8, v0

    move-wide v3, v9

    move-wide v1, v9

    :goto_0
    if-ge v8, v11, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ad;

    iget-wide v6, v0, Lcom/android/gallery3d/a/ad;->jz:J

    .line 396
    cmp-long v0, v6, v9

    if-nez v0, :cond_0

    .line 394
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 397
    :cond_0
    cmp-long v0, v1, v9

    if-nez v0, :cond_1

    move-wide v3, v6

    move-wide v1, v6

    .line 398
    goto :goto_1

    .line 400
    :cond_1
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 401
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1

    .line 404
    :cond_2
    cmp-long v0, v1, v9

    if-nez v0, :cond_4

    const-string v0, ""

    .line 448
    :cond_3
    :goto_2
    return-object v0

    .line 407
    :cond_4
    const-string v0, "MMddyy"

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    const-string v0, "MMddyy"

    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 415
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 422
    const v5, 0x10010

    .line 425
    invoke-static {p1, v1, v2, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    .line 427
    const v6, 0x10014

    invoke-static {p1, v1, v2, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 434
    add-long v0, v1, v3

    const-wide/16 v2, 0x2

    div-long v1, v0, v2

    .line 435
    const v5, 0x10011

    move-object v0, p1

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p1

    .line 444
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/a/y;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
