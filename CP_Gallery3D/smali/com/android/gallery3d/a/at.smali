.class public abstract Lcom/android/gallery3d/a/at;
.super Lcom/android/gallery3d/a/ax;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"


# instance fields
.field public cF:I

.field public id:I

.field public mimeType:Ljava/lang/String;

.field public qV:Ljava/lang/String;

.field public qW:J

.field public qX:D

.field public qY:D

.field public qZ:J

.field public ra:J

.field public rb:J

.field public rc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/a/ax;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 41
    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qX:D

    .line 42
    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qY:D

    .line 51
    return-void
.end method


# virtual methods
.method public a([D)V
    .locals 3
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/gallery3d/a/at;->qX:D

    aput-wide v1, p1, v0

    .line 72
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/gallery3d/a/at;->qY:D

    aput-wide v1, p1, v0

    .line 73
    return-void
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    .line 89
    invoke-super {p0}, Lcom/android/gallery3d/a/ax;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 90
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 92
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 94
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qZ:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    .line 95
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/gallery3d/a/at;->qZ:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 102
    :goto_0
    iget-wide v1, p0, Lcom/android/gallery3d/a/at;->qX:D

    iget-wide v3, p0, Lcom/android/gallery3d/a/at;->qY:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x4

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/gallery3d/a/at;->qX:D

    aput-wide v4, v2, v3

    iget-wide v3, p0, Lcom/android/gallery3d/a/at;->qY:D

    aput-wide v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 105
    :cond_0
    iget-wide v1, p0, Lcom/android/gallery3d/a/at;->qW:J

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 106
    :cond_1
    return-object v0

    .line 98
    :cond_2
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/gallery3d/a/at;->rb:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract b(Landroid/database/Cursor;)Z
.end method

.method protected c(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/at;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/gallery3d/a/at;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 85
    :cond_0
    return-void
.end method

.method public dA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public dx()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/gallery3d/a/at;->qZ:J

    return-wide v0
.end method

.method public dy()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/gallery3d/a/at;->rb:J

    return-wide v0
.end method

.method public dz()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/gallery3d/a/at;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/gallery3d/a/at;->qW:J

    return-wide v0
.end method
