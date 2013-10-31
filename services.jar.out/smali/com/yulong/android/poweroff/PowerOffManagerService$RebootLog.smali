.class Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;
.super Ljava/lang/Object;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RebootLog"
.end annotation


# instance fields
.field private mRebootTypeLogFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2056
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    const-string v0, "/persist"

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->creatLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->mRebootTypeLogFile:Ljava/io/File;

    .line 2059
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->mRebootTypeLogFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2060
    const-string v0, "/data/anr"

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->creatLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->mRebootTypeLogFile:Ljava/io/File;

    .line 2062
    :cond_0
    return-void
.end method

.method private creatLogFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 2030
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2033
    .local v2, stackTracesDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reboot_type.log"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    .local v1, rebootLogFile:Ljava/io/File;
    const-string v3, "PowerOffManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log name for recording the type of rebooting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2037
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2039
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2041
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1400

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2042
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2045
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2046
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .end local v1           #rebootLogFile:Ljava/io/File;
    :goto_0
    return-object v1

    .line 2048
    .restart local v1       #rebootLogFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2049
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PowerOffManager"

    const-string v4, "Failed to create log name for recording reboot type "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2050
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    .line 2065
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "[yyyy-MM-dd HH:mm:ss]"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2066
    .local v0, df:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reboot type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2068
    .local v2, strLog:Ljava/lang/String;
    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->mRebootTypeLogFile:Ljava/io/File;

    if-nez v5, :cond_1

    .line 2090
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    const/4 v3, 0x0

    .line 2075
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->mRebootTypeLogFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    if-eqz v4, :cond_2

    .line 2077
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2083
    :cond_2
    if-eqz v4, :cond_3

    .line 2084
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v3, v4

    .line 2089
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_0

    .line 2079
    :catch_0
    move-exception v1

    .line 2080
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2083
    if-eqz v3, :cond_0

    .line 2084
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2086
    :catch_1
    move-exception v1

    .line 2087
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2082
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2083
    :goto_3
    if-eqz v3, :cond_4

    .line 2084
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2082
    :cond_4
    :goto_4
    throw v5

    .line 2086
    :catch_2
    move-exception v1

    .line 2087
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2086
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 2087
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2082
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 2079
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method
