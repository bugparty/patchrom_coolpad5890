.class final Lcom/android/gallery3d/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# instance fields
.field private final AO:Lcom/android/gallery3d/a/bm;

.field final synthetic AP:Lcom/android/gallery3d/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/a/bm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/provider/a;->AP:Lcom/android/gallery3d/provider/GalleryProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/gallery3d/provider/a;->AO:Lcom/android/gallery3d/a/bm;

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/a/bm;Lcom/android/gallery3d/provider/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/provider/a;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/a/bm;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 239
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/provider/a;->AO:Lcom/android/gallery3d/a/bm;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bm;->eU()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 246
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 242
    :goto_1
    :try_start_2
    const-string v2, "GalleryProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    goto :goto_1
.end method
