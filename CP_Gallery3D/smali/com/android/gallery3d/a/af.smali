.class public Lcom/android/gallery3d/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCacheService"

.field private static final ln:Ljava/lang/String; = "imgcache"

.field private static final lo:I = 0x1388

.field private static final lp:I = 0xc800000

.field private static final lq:I = 0x3


# instance fields
.field private lr:Lcom/android/gallery3d/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc80

    const/4 v3, 0x3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/b/ae;->a(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/af;->lr:Lcom/android/gallery3d/common/BlobCache;

    .line 44
    return-void
.end method

.method private static a([B[B)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 103
    array-length v2, p0

    .line 104
    array-length v1, p1

    if-ge v1, v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 107
    :goto_1
    if-ge v1, v2, :cond_2

    .line 108
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-ne v3, v4, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI)Lcom/android/gallery3d/a/bf;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/gallery3d/a/af;->b(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI)[B

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/a/af;->lr:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/a/af;->lr:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v5, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v2

    .line 62
    monitor-exit v4

    .line 63
    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v1, v2}, Lcom/android/gallery3d/a/af;->a([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    array-length v3, v1

    .line 66
    new-instance v1, Lcom/android/gallery3d/a/bf;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/a/bf;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/gallery3d/a/af;->b(Lcom/android/gallery3d/a/dd;Ljava/lang/String;JI)[B

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 79
    array-length v3, v0

    array-length v4, p6

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v3, p6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/a/af;->lr:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/a/af;->lr:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 85
    monitor-exit v4

    .line 91
    :goto_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    goto :goto_0
.end method
