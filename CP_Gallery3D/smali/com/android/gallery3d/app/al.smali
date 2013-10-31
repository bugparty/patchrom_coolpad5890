.class Lcom/android/gallery3d/app/al;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final jh:Z


# instance fields
.field private jf:Landroid/graphics/Movie;

.field private jg:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/app/al;->mContext:Landroid/content/Context;

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/al;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 76
    :try_start_1
    invoke-static {v1}, Lcom/android/gallery3d/app/al;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 77
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :try_start_2
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x19000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 92
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 95
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 106
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 111
    iget-wide v4, p0, Lcom/android/gallery3d/app/al;->jg:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 112
    iput-wide v2, p0, Lcom/android/gallery3d/app/al;->jg:J

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    const/16 v0, 0x7d0

    .line 119
    :cond_1
    iget-wide v4, p0, Lcom/android/gallery3d/app/al;->jg:J

    sub-long/2addr v2, v4

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    .line 120
    iget-object v2, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v2, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 124
    iget-object v3, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 129
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    move v0, v1

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/al;->jf:Landroid/graphics/Movie;

    invoke-virtual {v2, p1, v1, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/app/al;->invalidate()V

    .line 134
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method
