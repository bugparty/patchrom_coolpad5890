.class public Lcom/android/gallery3d/a/p;
.super Lcom/android/gallery3d/a/ax;
.source "SourceFile"


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UriImage"

.field private static final dR:I = 0x0

.field private static final dS:I = 0x1

.field private static final dT:I = 0x2


# instance fields
.field private final dU:Ljava/lang/String;

.field private dV:Lcom/android/gallery3d/a/ae;

.field private dW:Landroid/os/ParcelFileDescriptor;

.field private dX:I

.field private i:Lcom/android/gallery3d/app/cl;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/dd;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/android/gallery3d/a/p;->ex()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/a/ax;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/a/p;->mState:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/p;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p3, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    .line 73
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    iput-object v0, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    .line 74
    invoke-direct {p0, p3}, Lcom/android/gallery3d/a/p;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/p;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/android/gallery3d/a/p;->mWidth:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/app/cl;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 78
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/p;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v0, "image/gif"

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/a/p;Lcom/android/gallery3d/b/j;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/p;->f(Lcom/android/gallery3d/b/j;)Z

    move-result v0

    return v0
.end method

.method private an()Z
    .locals 2

    .prologue
    .line 261
    const-string v0, "file"

    iget-object v1, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/a/p;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/android/gallery3d/a/p;->mHeight:I

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/a/p;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 327
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v1}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 332
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x4000

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    const/16 v1, 0xa

    :try_start_2
    new-array v1, v1, [B

    .line 334
    const/4 v3, 0x6

    .line 335
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 336
    if-lez v3, :cond_0

    .line 337
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 338
    const-string v1, "GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v0, 0x1

    .line 345
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 346
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 348
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 343
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 345
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 346
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_2
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 346
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 345
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_2

    .line 342
    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method private d(Lcom/android/gallery3d/b/j;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/p;->e(Lcom/android/gallery3d/b/j;)I

    move-result v0

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/a/p;->mState:I

    .line 107
    iget v0, p0, Lcom/android/gallery3d/a/p;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(Lcom/android/gallery3d/b/j;)I
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 118
    iget-object v3, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 119
    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    :cond_0
    :try_start_0
    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v3}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 126
    invoke-static {v3}, Lcom/android/gallery3d/a/al;->b(Ljava/io/InputStream;)I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/a/p;->dX:I

    .line 127
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v3}, Lcom/android/gallery3d/app/cl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    .line 131
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v2

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/a/p;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/a/aj;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/a/aj;-><init>(Lcom/android/gallery3d/a/p;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    const-string v2, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 144
    goto :goto_0

    .line 148
    :cond_4
    :try_start_1
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/android/gallery3d/a/p;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v4}, Lcom/android/gallery3d/app/cl;->er()Lcom/android/gallery3d/a/as;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/android/gallery3d/a/as;->b(Lcom/android/gallery3d/b/j;Ljava/net/URL;)Lcom/android/gallery3d/a/ae;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/a/p;->dV:Lcom/android/gallery3d/a/ae;

    .line 150
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dV:Lcom/android/gallery3d/a/ae;

    if-nez v0, :cond_5

    .line 152
    const-string v0, "decode_file_failed"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "UriImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download failed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_5
    const-string v0, "image/jpeg"

    iget-object v3, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/gallery3d/a/p;->dV:Lcom/android/gallery3d/a/ae;

    iget-object v3, v3, Lcom/android/gallery3d/a/ae;->cacheFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    invoke-static {v0}, Lcom/android/gallery3d/a/al;->b(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/a/p;->dX:I

    .line 159
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dV:Lcom/android/gallery3d/a/ae;

    iget-object v0, v0, Lcom/android/gallery3d/a/ae;->cacheFile:Ljava/io/File;

    const/high16 v3, 0x1000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 163
    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    const-string v2, "UriImage"

    const-string v3, "download error"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/a/bx;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 166
    goto/16 :goto_0
.end method

.method private f(Lcom/android/gallery3d/b/j;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    new-instance v2, Lcom/android/gallery3d/a/ah;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/a/ah;-><init>(Lcom/android/gallery3d/a/p;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/b/j;->a(Lcom/android/gallery3d/b/a;)V

    .line 182
    :goto_0
    monitor-enter p0

    .line 183
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/b/j;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 190
    :goto_1
    return v0

    .line 184
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/a/p;->mState:I

    if-nez v2, :cond_1

    .line 185
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/a/p;->mState:I

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/p;->d(Lcom/android/gallery3d/b/j;)V

    goto :goto_0

    .line 187
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/a/p;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 188
    monitor-exit p0

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 189
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/a/p;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 190
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 193
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public al()Lcom/android/gallery3d/b/ab;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/gallery3d/a/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/a/ai;-><init>(Lcom/android/gallery3d/a/p;Lcom/android/gallery3d/a/aj;)V

    return-object v0
.end method

.method public am()I
    .locals 3

    .prologue
    .line 248
    const/16 v0, 0x1220

    .line 249
    invoke-direct {p0}, Lcom/android/gallery3d/a/p;->an()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1224

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    or-int/lit8 v0, v0, 0x40

    .line 253
    :cond_1
    return v0
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x2

    return v0
.end method

.method public ap()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/gallery3d/a/ax;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    .line 277
    iget v1, p0, Lcom/android/gallery3d/a/p;->mWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/a/p;->mHeight:I

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/gallery3d/a/p;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 279
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/a/p;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 284
    :cond_1
    const-string v1, "file"

    iget-object v2, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/a/p;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 286
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/a/cw;->a(ILjava/lang/Object;)V

    .line 287
    invoke-static {v0, v1}, Lcom/android/gallery3d/a/cw;->a(Lcom/android/gallery3d/a/cw;Ljava/lang/String;)V

    .line 289
    :cond_2
    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dW:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/a/p;->dU:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/gallery3d/a/p;->dX:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public r(I)Lcom/android/gallery3d/b/ab;
    .locals 1
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/android/gallery3d/a/cr;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/a/cr;-><init>(Lcom/android/gallery3d/a/p;I)V

    return-object v0
.end method
