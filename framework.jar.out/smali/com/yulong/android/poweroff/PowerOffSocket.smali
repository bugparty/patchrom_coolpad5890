.class Lcom/yulong/android/poweroff/PowerOffSocket;
.super Ljava/lang/Object;
.source "PowerOffSocket.java"


# static fields
.field public static final SOCKET_GENERAL_ERROR:I = -0x1

.field public static final SOCKET_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buflen:I

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 39
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 57
    :goto_0
    return v2

    .line 42
    :cond_0
    const-string v3, "PowerOffManager"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    .line 46
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "poweroffdemo"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 49
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 51
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mIn:Ljava/io/InputStream;

    .line 52
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 54
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->disconnect()V

    .line 55
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "PowerOffManager"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mSocket:Landroid/net/LocalSocket;

    .line 72
    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mIn:Ljava/io/InputStream;

    .line 73
    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_2

    .line 67
    :catch_1
    move-exception v0

    goto :goto_1

    .line 64
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .parameter "cmd"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffSocket;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, res:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 163
    :goto_0
    return v2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private readBytes([BI)Z
    .locals 7
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, off:I
    if-gez p2, :cond_1

    .line 95
    :goto_0
    return v3

    .line 86
    .local v0, count:I
    :cond_0
    add-int/2addr v2, v0

    .line 79
    .end local v0           #count:I
    :cond_1
    if-eq v2, p2, :cond_2

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 82
    .restart local v0       #count:I
    if-gtz v0, :cond_0

    .line 83
    const-string v4, "PowerOffManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #count:I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "PowerOffManager"

    const-string/jumbo v5, "read exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->disconnect()V

    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    iput v1, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buflen:I

    .line 101
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/yulong/android/poweroff/PowerOffSocket;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 103
    .local v0, len:I
    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    .line 104
    :cond_2
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->disconnect()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iput v0, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buflen:I

    move v1, v2

    .line 110
    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const-string v1, "PowerOffManager"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return-object v0

    .line 136
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffSocket;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    const-string v1, "PowerOffManager"

    const-string/jumbo v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffSocket;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    :cond_1
    const-string v0, "-1"

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 151
    .local v0, s:Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    const-string v0, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .parameter "_cmd"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 115
    .local v0, cmd:[B
    array-length v2, v0

    .line 116
    .local v2, len:I
    if-lt v2, v3, :cond_0

    const/16 v5, 0x400

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 127
    :goto_0
    return v3

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 118
    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffSocket;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "PowerOffManager"

    const-string/jumbo v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffSocket;->disconnect()V

    move v3, v4

    .line 125
    goto :goto_0
.end method


# virtual methods
.method public clearSystemState()I
    .locals 4

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string v3, "clearSystemState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clearstate"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 246
    return v1
.end method

.method public setBootComplete()I
    .locals 4

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "setBootComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setbootcomplete"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 230
    return v1
.end method

.method public setBootLoaderUI()I
    .locals 4

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "setBootLoaderUI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setbootloader"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 238
    return v1
.end method

.method public setChargeFull()I
    .locals 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "setChargeFull"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "chargefull"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 214
    return v1
.end method

.method public setPowerCharge()I
    .locals 4

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "setPowerCharge"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "powercharge"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 206
    return v1
.end method

.method public setSystempoweroff()I
    .locals 4

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "setSystempoweroff"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "systempoweroff"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 222
    return v1
.end method

.method public startBootAnimation()I
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "startBootAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startbootani"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 173
    return v1
.end method

.method public startBootWav()I
    .locals 4

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "startBootWav"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startbootwav"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 260
    return v1
.end method

.method public startRecoverySystem()I
    .locals 4

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "startRecoverySystem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startrecovery"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 253
    return v1
.end method

.method public startShutAnimation()I
    .locals 4

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "startShutAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startshutani"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 190
    return v1
.end method

.method public stopShutAnimation()I
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, nResult:I
    const-string v2, "PowerOffManager"

    const-string/jumbo v3, "stopShutAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopshutani"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->execute(Ljava/lang/String;)I

    move-result v1

    .line 198
    return v1
.end method
