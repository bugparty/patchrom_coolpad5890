.class public Lcom/android/gallery3d/a/f;
.super Lcom/android/gallery3d/a/bh;
.source "SourceFile"


# instance fields
.field private aI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;ILjava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-static {p3}, Lcom/android/gallery3d/a/av;->an(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/a/bh;-><init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;IILjava/lang/String;I)V

    .line 206
    iput-object p4, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/bh;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/gallery3d/a/bh;->a(Lcom/android/gallery3d/b/j;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/b/j;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 219
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v3, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 220
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    if-eqz v0, :cond_2

    .line 227
    invoke-static {p2}, Lcom/android/gallery3d/a/av;->an(I)I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 248
    :cond_0
    :goto_1
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v3, "LocalImage"

    const-string v4, "fail to get exif thumb"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "/res/drawable/more.png"

    iget-object v3, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/a/bh;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/f;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->g(J)J

    move-result-wide v3

    .line 241
    const-wide/16 v5, 0x12

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 243
    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    const-string v3, "image/x-ms-bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/a/f;->aI:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/gallery3d/a/av;->an(I)I

    move-result v1

    invoke-static {p1, v0, v2, v1}, Lcom/android/gallery3d/a/cy;->a(Lcom/android/gallery3d/b/j;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method
