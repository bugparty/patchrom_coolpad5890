.class abstract Lcom/android/gallery3d/a/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field private aI:Ljava/lang/String;

.field protected i:Lcom/android/gallery3d/app/cl;

.field private mType:I

.field private uj:Lcom/android/gallery3d/a/dd;

.field private uk:I

.field private ul:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;IILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/a/bh;->ul:I

    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    .line 52
    iput-object p2, p0, Lcom/android/gallery3d/a/bh;->uj:Lcom/android/gallery3d/a/dd;

    .line 53
    iput p3, p0, Lcom/android/gallery3d/a/bh;->mType:I

    .line 54
    iput p4, p0, Lcom/android/gallery3d/a/bh;->uk:I

    .line 55
    iput-object p5, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    .line 56
    iput p6, p0, Lcom/android/gallery3d/a/bh;->ul:I

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 167
    const-string v3, "_data = ?"

    .line 170
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_size"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move v0, v6

    .line 180
    :goto_0
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_0
    :goto_1
    return v0

    .line 177
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 180
    :goto_2
    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 182
    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_1

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_1
    throw v0

    .line 180
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 177
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/a/bh;->mType:I

    if-ne v0, v10, :cond_2

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dt()Lcom/android/gallery3d/a/af;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/a/bh;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/a/ax;

    .line 65
    const-wide/16 v3, 0x0

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getSize()J

    move-result-wide v3

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->uj:Lcom/android/gallery3d/a/dd;

    iget-object v2, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/a/bh;->mType:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/a/af;->a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI)Lcom/android/gallery3d/a/bf;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ao;->dk()Z

    move-result v2

    .line 72
    iget-object v5, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v5}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/a/ao;->dl()Z

    move-result v5

    .line 74
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v8

    .line 153
    :cond_1
    :goto_1
    return-object v7

    .line 60
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/a/bh;->mType:I

    if-ne v0, v11, :cond_3

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_3
    const-string v0, "?"

    goto :goto_0

    .line 76
    :cond_4
    if-eqz v1, :cond_5

    .line 77
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    iget-object v2, v1, Lcom/android/gallery3d/a/bf;->mData:[B

    iget v3, v1, Lcom/android/gallery3d/a/bf;->tS:I

    iget-object v4, v1, Lcom/android/gallery3d/a/bf;->mData:[B

    array-length v4, v4

    iget v1, v1, Lcom/android/gallery3d/a/bf;->tS:I

    sub-int v1, v4, v1

    invoke-static {p1, v2, v3, v1, v0}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 81
    if-nez v7, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "decode_file_failed"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "ImageCacheRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode cached failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/gallery3d/a/bh;->ul:I

    if-ne v1, v10, :cond_7

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 90
    const-string v7, "/sdcard/.CameraTemp"

    .line 91
    if-lez v1, :cond_7

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 95
    iget v7, p0, Lcom/android/gallery3d/a/bh;->mType:I

    if-ne v7, v10, :cond_6

    if-eqz v2, :cond_6

    .line 96
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/a/ao;->j(Z)V

    .line 98
    if-nez v5, :cond_1

    .line 99
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 102
    :cond_6
    iget v7, p0, Lcom/android/gallery3d/a/bh;->mType:I

    if-ne v7, v11, :cond_7

    if-eqz v5, :cond_7

    .line 103
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/android/gallery3d/a/bh;->uk:I

    invoke-static {v0, v1, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/a/ao;->k(Z)V

    .line 107
    if-nez v2, :cond_1

    .line 108
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 116
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/a/bh;->mType:I

    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/a/bh;->a(Lcom/android/gallery3d/b/j;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v7, v8

    goto/16 :goto_1

    .line 121
    :cond_8
    if-nez v1, :cond_9

    .line 122
    const-string v0, "ImageCacheRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode orig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "decode_file_failed"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 124
    goto/16 :goto_1

    .line 126
    :cond_9
    iget v2, p0, Lcom/android/gallery3d/a/bh;->mType:I

    if-ne v2, v11, :cond_a

    .line 127
    iget v2, p0, Lcom/android/gallery3d/a/bh;->uk:I

    invoke-static {v1, v2, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    iget v2, p0, Lcom/android/gallery3d/a/bh;->ul:I

    if-ne v2, v11, :cond_d

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v2}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02006d

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v5, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 136
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 137
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    const/16 v2, 0x1f

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 140
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    move-object v7, v1

    .line 147
    :goto_2
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v7, v8

    goto/16 :goto_1

    .line 144
    :cond_a
    iget v2, p0, Lcom/android/gallery3d/a/bh;->uk:I

    invoke-static {v1, v2, v10}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    .line 149
    :cond_b
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 150
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v7, v8

    goto/16 :goto_1

    .line 152
    :cond_c
    iget-object v1, p0, Lcom/android/gallery3d/a/bh;->uj:Lcom/android/gallery3d/a/dd;

    iget-object v2, p0, Lcom/android/gallery3d/a/bh;->aI:Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/a/bh;->mType:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/a/af;->a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI[B)V

    goto/16 :goto_1

    :cond_d
    move-object v7, v1

    goto :goto_2
.end method

.method public abstract a(Lcom/android/gallery3d/b/j;I)Landroid/graphics/Bitmap;
.end method

.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bh;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
