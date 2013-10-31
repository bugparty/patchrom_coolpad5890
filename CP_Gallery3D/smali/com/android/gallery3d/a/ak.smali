.class public Lcom/android/gallery3d/a/ak;
.super Lcom/android/gallery3d/a/at;
.source "SourceFile"


# static fields
.field private static final bk:I = 0xa

.field static final kf:[Ljava/lang/String; = null

.field static final nV:Lcom/android/gallery3d/a/dd; = null

.field private static final nW:I = 0x0

.field private static final nX:I = 0x1

.field private static final nY:I = 0x2

.field private static final nZ:I = 0x3

.field private static final oa:I = 0x4

.field private static final ob:I = 0x5

.field private static final oc:I = 0x6

.field private static final od:I = 0x7

.field private static final oe:I = 0x8

.field private static final of:I = 0x9

.field private static final og:I = 0xb

.field private static oh:Landroid/graphics/Bitmap;


# instance fields
.field private final i:Lcom/android/gallery3d/app/cl;

.field public oi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/ak;->nV:Lcom/android/gallery3d/a/dd;

    .line 60
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/a/ak;->kf:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {}, Lcom/android/gallery3d/a/ak;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/at;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 88
    iput-object p2, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 91
    sget-object v2, Lcom/android/gallery3d/a/ak;->kf:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/gallery3d/a/db;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get cursor for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0, v1}, Lcom/android/gallery3d/a/ak;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    return-void

    .line 99
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find data for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/android/gallery3d/a/ak;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/at;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 82
    iput-object p2, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    .line 83
    invoke-direct {p0, p3}, Lcom/android/gallery3d/a/ak;->a(Landroid/database/Cursor;)V

    .line 84
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->id:I

    .line 108
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qX:D

    .line 111
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qY:D

    .line 112
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qZ:J

    .line 113
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    .line 114
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/gallery3d/a/ak;->oi:I

    .line 115
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    .line 116
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qW:J

    .line 117
    return-void
.end method


# virtual methods
.method public E(I)V
    .locals 0
    .parameter

    .prologue
    .line 193
    return-void
.end method

.method public al()Lcom/android/gallery3d/b/ab;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public am()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0x485

    return v0
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x4

    return v0
.end method

.method public ap()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 198
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/a/at;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/gallery3d/a/at;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 216
    iget v1, p0, Lcom/android/gallery3d/a/ak;->oi:I

    .line 217
    if-lez v1, :cond_0

    .line 218
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/a/ak;->oi:I

    invoke-static {v2, v3}, Lcom/android/gallery3d/b/y;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 221
    :cond_0
    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Z
    .locals 6
    .parameter

    .prologue
    .line 121
    new-instance v1, Lcom/android/gallery3d/b/b;

    invoke-direct {v1}, Lcom/android/gallery3d/b/b;-><init>()V

    .line 122
    iget v0, p0, Lcom/android/gallery3d/a/at;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->id:I

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    .line 125
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qX:D

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qX:D

    .line 126
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qY:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qY:D

    .line 127
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qZ:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qZ:J

    .line 129
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->ra:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->ra:J

    .line 131
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    .line 134
    iget v0, p0, Lcom/android/gallery3d/a/ak;->oi:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/ak;->oi:I

    .line 136
    iget v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    .line 137
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    .line 138
    invoke-virtual {v1}, Lcom/android/gallery3d/b/b;->K()Z

    move-result v0

    return v0
.end method

.method public db()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ak;->ap()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 184
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 185
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 186
    iget-object v1, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/a/at;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public r(I)Lcom/android/gallery3d/b/ab;
    .locals 6
    .parameter

    .prologue
    .line 143
    const/4 v5, 0x0

    .line 144
    new-instance v0, Lcom/android/gallery3d/a/bt;

    iget-object v1, p0, Lcom/android/gallery3d/a/ak;->i:Lcom/android/gallery3d/app/cl;

    invoke-virtual {p0}, Lcom/android/gallery3d/a/ak;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/bt;-><init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;ILjava/lang/String;I)V

    return-object v0
.end method
