.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 45
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 46
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 47
    move v0, p2

    .line 48
    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    .line 50
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 51
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 54
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 58
    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 56
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 58
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 33
    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 36
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 14

    .prologue
    .line 65
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 67
    .local v9, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v10, 0x0

    :try_start_0
    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 68
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 69
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .local v7, memFree:J
    const-wide/16 v5, 0x0

    .line 73
    .local v5, memCached:J
    new-instance v3, Ljava/io/FileInputStream;

    const-string v10, "/proc/meminfo"

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, is:Ljava/io/FileInputStream;
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-virtual {v3, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 75
    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 76
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    array-length v0, v10

    .line 77
    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .line 83
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_7

    const/4 v10, 0x6

    if-ge v1, v10, :cond_7

    .line 84
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "MemTotal"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    add-int/lit8 v2, v2, 0x8

    .line 86
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 112
    :cond_0
    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    aget-byte v10, v10, v2

    const/16 v11, 0xa

    if-eq v10, v11, :cond_6

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_1
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "MemFree"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    add-int/lit8 v2, v2, 0x7

    .line 90
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 91
    iget-wide v7, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "Cached"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 94
    add-int/lit8 v2, v2, 0x6

    .line 95
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 96
    iget-wide v5, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "SwapCached"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 99
    add-int/lit8 v2, v2, 0xa

    .line 100
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_4
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "SwapTotal"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 103
    add-int/lit8 v2, v2, 0x9

    .line 104
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_5
    iget-object v10, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v11, "SwapFree"

    invoke-direct {p0, v10, v2, v11}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    add-int/lit8 v2, v2, 0x8

    .line 108
    iget-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    iget-object v12, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v12, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 83
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 122
    :cond_7
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 124
    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #len:I
    .end local v5           #memCached:J
    .end local v7           #memFree:J
    :goto_2
    return-void

    .line 119
    :catch_0
    move-exception v10

    .line 122
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .line 120
    :catch_1
    move-exception v10

    .line 122
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v10

    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v10
.end method
