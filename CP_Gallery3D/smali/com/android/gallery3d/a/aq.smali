.class public Lcom/android/gallery3d/a/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/gallery3d/b/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 66
    array-length v0, v1

    invoke-virtual {p1, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/android/gallery3d/a/s;

    invoke-direct {v3, v2}, Lcom/android/gallery3d/a/s;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v3}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 73
    :goto_0
    if-lez v0, :cond_1

    .line 74
    invoke-interface {p0}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 75
    :cond_0
    invoke-virtual {p2, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    array-length v0, v1

    invoke-virtual {p1, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 80
    return-void
.end method

.method public static a(Lcom/android/gallery3d/b/j;Ljava/net/URL;Ljava/io/File;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/android/gallery3d/a/aq;->a(Lcom/android/gallery3d/b/j;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 43
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 41
    :goto_1
    const/4 v0, 0x0

    .line 43
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 40
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/android/gallery3d/b/j;Ljava/net/URL;Ljava/io/OutputStream;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 86
    invoke-static {p0, v1, p2}, Lcom/android/gallery3d/a/aq;->a(Lcom/android/gallery3d/b/j;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    const/4 v0, 0x1

    .line 92
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    const-string v2, "DownloadService"

    const-string v3, "fail to download"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v0, 0x0

    .line 92
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Lcom/android/gallery3d/b/j;Ljava/net/URL;)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 50
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    invoke-static {p0, p1, v2}, Lcom/android/gallery3d/a/aq;->a(Lcom/android/gallery3d/b/j;Ljava/net/URL;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 59
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 56
    :goto_1
    :try_start_3
    const-string v3, "DownloadService"

    invoke-static {v3, v1}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 55
    :catch_1
    move-exception v1

    goto :goto_1
.end method
