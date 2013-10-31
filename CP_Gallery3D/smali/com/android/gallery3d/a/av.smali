.class public Lcom/android/gallery3d/a/av;
.super Lcom/android/gallery3d/a/at;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalImage"

.field private static final bk:I = 0xa

.field private static final jj:I = 0x9

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

.field private static final og:I = 0xb

.field private static final rA:I = 0xd

.field private static final rw:I = 0x320

.field private static final rx:I = 0xc8

.field public static ry:Ljava/lang/String; = null

.field private static final rz:I = 0xc


# instance fields
.field public height:I

.field private final i:Lcom/android/gallery3d/app/cl;

.field public rotation:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/a/av;->nV:Lcom/android/gallery3d/a/dd;

    .line 78
    const/16 v0, 0xe

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

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/a/av;->kf:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d00ae

    const/4 v3, 0x1

    .line 115
    invoke-static {}, Lcom/android/gallery3d/a/av;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/at;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 116
    iput-object p2, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 119
    sget-object v2, Lcom/android/gallery3d/a/av;->kf:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/gallery3d/a/db;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    .line 125
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lcom/android/gallery3d/a/av;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    :goto_1
    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d00ae

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_2
    const-string v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/android/gallery3d/a/av;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/at;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 110
    iput-object p2, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    .line 111
    invoke-direct {p0, p3}, Lcom/android/gallery3d/a/av;->a(Landroid/database/Cursor;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {}, Lcom/android/gallery3d/a/av;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/at;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 104
    iput-object p2, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    .line 105
    iput-object p3, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->id:I

    .line 146
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    .line 148
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qX:D

    .line 149
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qY:D

    .line 150
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qZ:J

    .line 151
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    .line 152
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->rotation:I

    .line 153
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    .line 154
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/at;->qW:J

    .line 155
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->width:I

    .line 156
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->height:I

    .line 157
    return-void
.end method

.method static an(I)I
    .locals 2
    .parameter

    .prologue
    .line 255
    packed-switch p0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    const/16 v0, 0x320

    .line 259
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ao(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 332
    sparse-switch p0, :sswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 334
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 336
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public E(I)V
    .locals 7
    .parameter

    .prologue
    .line 348
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 349
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 350
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 351
    iget v0, p0, Lcom/android/gallery3d/a/av;->rotation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    .line 352
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    .line 354
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v4, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 357
    const-string v4, "Orientation"

    invoke-static {v0}, Lcom/android/gallery3d/a/av;->ao(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/a/at;->qW:J

    .line 366
    const-string v3, "_size"

    iget-wide v4, p0, Lcom/android/gallery3d/a/at;->qW:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    :cond_1
    const-string v3, "orientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/a/at;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    return-void

    .line 360
    :catch_0
    move-exception v3

    .line 361
    const-string v3, "LocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot set exif data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public al()Lcom/android/gallery3d/b/ab;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/android/gallery3d/a/cs;

    iget-object v1, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/a/cs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public am()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v1, 0x1

    .line 287
    .line 288
    iget v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    const v2, -0x57efe3f0

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    const v2, 0x4dd4c1c6

    if-ne v0, v2, :cond_6

    :cond_0
    move v0, v1

    .line 290
    :goto_0
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    long-to-float v2, v2

    const/high16 v3, 0x4980

    div-float/2addr v2, v3

    float-to-long v2, v2

    .line 291
    const-wide/16 v4, 0x13

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 292
    const/16 v1, 0x605

    .line 294
    iget-wide v4, p0, Lcom/android/gallery3d/a/at;->qW:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const-wide/16 v4, 0xd

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 295
    const/16 v1, 0x60d

    .line 297
    :cond_1
    iget-wide v4, p0, Lcom/android/gallery3d/a/at;->qW:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 298
    or-int/lit8 v1, v1, 0x20

    .line 301
    :cond_2
    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    if-nez v0, :cond_7

    .line 302
    or-int/lit16 v0, v1, 0x1000

    .line 305
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    or-int/lit8 v0, v0, 0x40

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    or-int/lit8 v0, v0, 0x2

    .line 313
    :cond_4
    iget-wide v1, p0, Lcom/android/gallery3d/a/at;->qX:D

    iget-wide v3, p0, Lcom/android/gallery3d/a/at;->qY:D

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/b/y;->b(DD)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    or-int/lit8 v0, v0, 0x10

    .line 319
    :cond_5
    :goto_2
    return v0

    .line 288
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x2

    return v0
.end method

.method public ap()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 376
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 377
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
    .locals 8

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/gallery3d/a/at;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 388
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/a/av;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 390
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/a/av;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 391
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/gallery3d/a/av;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 392
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 393
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/gallery3d/a/av;->dy()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    .line 395
    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery3d/a/at;->rb:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Ljava/lang/String;)V

    .line 402
    :cond_1
    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Z
    .locals 6
    .parameter

    .prologue
    .line 161
    new-instance v1, Lcom/android/gallery3d/b/b;

    invoke-direct {v1}, Lcom/android/gallery3d/b/b;-><init>()V

    .line 162
    iget v0, p0, Lcom/android/gallery3d/a/at;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->id:I

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->qV:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->mimeType:Ljava/lang/String;

    .line 165
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qX:D

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qX:D

    .line 166
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qY:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qY:D

    .line 167
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qZ:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qZ:J

    .line 169
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->ra:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->ra:J

    .line 171
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->rb:J

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    .line 174
    iget v0, p0, Lcom/android/gallery3d/a/av;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->rotation:I

    .line 175
    iget v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/at;->cF:I

    .line 176
    iget-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/b/b;->a(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/a/at;->qW:J

    .line 177
    iget v0, p0, Lcom/android/gallery3d/a/av;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->width:I

    .line 178
    iget v0, p0, Lcom/android/gallery3d/a/av;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/b/b;->c(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/a/av;->height:I

    .line 180
    invoke-virtual {v1}, Lcom/android/gallery3d/b/b;->K()Z

    move-result v0

    return v0
.end method

.method public dB()Z
    .locals 3

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 460
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 324
    invoke-static {}, Lcom/android/gallery3d/b/y;->fM()V

    .line 325
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 326
    const-string v1, "LocalImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete baseUri + id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/a/at;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

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

    .line 329
    return-void
.end method

.method public dy()J
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 424
    iget-wide v6, p0, Lcom/android/gallery3d/a/at;->qZ:J

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 427
    const-string v3, "_id = ?"

    .line 430
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date_modified"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lcom/android/gallery3d/a/at;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 434
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    int-to-long v6, v0

    move-wide v0, v6

    .line 443
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    :goto_1
    return-wide v0

    .line 445
    :catch_0
    move-exception v2

    .line 446
    const-string v3, "LocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    :catch_1
    move-exception v0

    move-object v0, v8

    .line 443
    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-wide v0, v6

    .line 447
    goto :goto_1

    .line 445
    :catch_2
    move-exception v0

    .line 446
    const-string v1, "LocalImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v6

    .line 449
    goto :goto_1

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    :goto_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 447
    :goto_4
    throw v0

    .line 445
    :catch_3
    move-exception v1

    .line 446
    const-string v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 442
    :catchall_1
    move-exception v0

    move-object v8, v2

    goto :goto_3

    .line 439
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/android/gallery3d/a/av;->height:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/android/gallery3d/a/av;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/android/gallery3d/a/av;->width:I

    return v0
.end method

.method public r(I)Lcom/android/gallery3d/b/ab;
    .locals 6
    .parameter

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p0, Lcom/android/gallery3d/a/ax;->rL:Z

    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    sget-object v1, Lcom/android/gallery3d/a/av;->ry:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 192
    sget-object v1, Lcom/android/gallery3d/a/av;->ry:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const/4 v0, 0x2

    move v5, v0

    .line 197
    :goto_0
    new-instance v0, Lcom/android/gallery3d/a/f;

    iget-object v1, p0, Lcom/android/gallery3d/a/av;->i:Lcom/android/gallery3d/app/cl;

    iget-object v2, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    iget-object v4, p0, Lcom/android/gallery3d/a/at;->rc:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/a/f;-><init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;ILjava/lang/String;I)V

    return-object v0

    :cond_1
    move v5, v0

    goto :goto_0
.end method
