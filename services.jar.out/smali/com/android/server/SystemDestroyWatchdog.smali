.class public Lcom/android/server/SystemDestroyWatchdog;
.super Ljava/lang/Object;
.source "SystemDestroyWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;,
        Lcom/android/server/SystemDestroyWatchdog$DialogHandler;,
        Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;
    }
.end annotation


# static fields
.field private static DETECT_TIME_DELAY:J = 0x0L

.field private static FIRST_TIME_DELAY:J = 0x0L

.field private static final REBOOT_LOG_MAX_SIZE:J = 0x800L

.field private static final REBOOT_TYPE_LOG:Ljava/lang/String; = "system_destroy.log"

.field private static final SYSTEM_DESTROY_FAILURE_TIMES:Ljava/lang/String; = "persist.yulong.file.failure"

.field private static final SYSTEM_DESTROY_TEST_TIMES:Ljava/lang/String; = "persist.yulong.file.testtimes"

.field private static final SYSTEM_DESTROY_TOTAL_FILENUMS:Ljava/lang/String; = "persist.yulong.file.numbers"

.field static final TAG:Ljava/lang/String; = "SystemDestroy"

.field static mInstance:Lcom/android/server/SystemDestroyWatchdog;


# instance fields
.field mContext:Landroid/content/Context;

.field final mDetectHandler:Landroid/os/Handler;

.field private final mDialogHandler:Lcom/android/server/SystemDestroyWatchdog$DialogHandler;

.field private mFailureTimes:I

.field private mLogRecord:Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;

.field private mNowFileNums:J

.field private mNowNumsOnBoot:J

.field private mRecordNums:J

.field private mTempDlg:Landroid/app/AlertDialog;

.field private mTotalFileNums:J

.field private mTotalTestTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/SystemDestroyWatchdog;->DETECT_TIME_DELAY:J

    .line 67
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/android/server/SystemDestroyWatchdog;->FIRST_TIME_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    .line 56
    iput v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I

    .line 62
    iput-object v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    .line 63
    iput-object v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    invoke-direct {v0, p0}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;-><init>(Lcom/android/server/SystemDestroyWatchdog;)V

    iput-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mDetectHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;

    invoke-direct {v0, p0}, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;-><init>(Lcom/android/server/SystemDestroyWatchdog;)V

    iput-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mDialogHandler:Lcom/android/server/SystemDestroyWatchdog$DialogHandler;

    .line 71
    new-instance v0, Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;

    invoke-direct {v0}, Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mLogRecord:Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;

    .line 73
    iput-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    .line 74
    iput-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    .line 75
    iput-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    .line 76
    iput-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    .line 383
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemDestroyWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SystemDestroyWatchdog;->verifySystemDestroy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemDestroyWatchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SystemDestroyWatchdog;->notifyUIErrorMessage()V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 49
    sget-wide v0, Lcom/android/server/SystemDestroyWatchdog;->DETECT_TIME_DELAY:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/SystemDestroyWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/SystemDestroyWatchdog;->verifySystemInitDestroy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SystemDestroyWatchdog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/SystemDestroyWatchdog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I

    return p1
.end method

.method static synthetic access$412(Lcom/android/server/SystemDestroyWatchdog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/SystemDestroyWatchdog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/SystemDestroyWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/SystemDestroyWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/SystemDestroyWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/SystemDestroyWatchdog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/SystemDestroyWatchdog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static getInstance()Lcom/android/server/SystemDestroyWatchdog;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/SystemDestroyWatchdog;->mInstance:Lcom/android/server/SystemDestroyWatchdog;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/SystemDestroyWatchdog;

    invoke-direct {v0}, Lcom/android/server/SystemDestroyWatchdog;-><init>()V

    sput-object v0, Lcom/android/server/SystemDestroyWatchdog;->mInstance:Lcom/android/server/SystemDestroyWatchdog;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/server/SystemDestroyWatchdog;->mInstance:Lcom/android/server/SystemDestroyWatchdog;

    return-object v0
.end method

.method private getTotalSizeOfFilesInDir(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 373
    const-wide/16 v5, 0x1

    .line 379
    :cond_0
    return-wide v5

    .line 374
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 375
    .local v2, children:[Ljava/io/File;
    const-wide/16 v5, 0x0

    .line 376
    .local v5, total:J
    if-eqz v2, :cond_0

    .line 377
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 378
    .local v1, child:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/SystemDestroyWatchdog;->getTotalSizeOfFilesInDir(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private notifyUIErrorMessage()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mDialogHandler:Lcom/android/server/SystemDestroyWatchdog$DialogHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->sendEmptyMessage(I)Z

    .line 169
    const-string v0, "SystemDestroy"

    const-string v1, "notifyUIMessage..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private saveSystemDestroyRecord(Ljava/lang/String;)V
    .locals 1
    .parameter "strLine"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mLogRecord:Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;

    invoke-virtual {v0, p1}, Lcom/android/server/SystemDestroyWatchdog$SytstemDestroyLog;->write(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private saveSystemFileList(Ljava/lang/String;)V
    .locals 12
    .parameter "strFilePath"

    .prologue
    const/4 v10, 0x1

    .line 121
    const-string v8, "SystemDestroy"

    const-string v9, "saveSystemFileList..."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v8, "busybox rm -rf /data/system/%s"

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, strRemoveFile:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "busybox find /system"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 130
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 131
    .local v4, logOutput:Ljava/io/Writer;
    new-instance v4, Ljava/io/BufferedWriter;

    .end local v4           #logOutput:Ljava/io/Writer;
    new-instance v8, Ljava/io/FileWriter;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/system/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 134
    .restart local v4       #logOutput:Ljava/io/Writer;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 135
    .local v3, inStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v2, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 138
    .local v1, inBuffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 139
    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    const-string v8, "SystemDestroy"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #inBuffer:Ljava/io/BufferedReader;
    .end local v2           #inReader:Ljava/io/InputStreamReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #logOutput:Ljava/io/Writer;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 145
    .restart local v1       #inBuffer:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/InputStreamReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #logOutput:Ljava/io/Writer;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #s:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_0

    .line 146
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private verifySystemDestroy()Z
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/server/SystemDestroyWatchdog;->getSytemTotalFileNum()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    .line 176
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mTotalFileNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mNowFileNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mRecordNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string v0, "SystemDestroy"

    const-string v1, "******Fatal Exception!! System partition has destroy!!*******"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "SystemDestroy"

    const-string v1, "******Add filesystem log to file!*******"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "system-nownum.txt"

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemFileList(Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*****system partition destroy!!**** mTotalFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNowFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return v0

    .line 196
    :cond_1
    const-string v0, "SystemDestroy"

    const-string v1, "verifySystemDestroy OK!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySystemDestroy OK!! mNowFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNowNumsOnBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private verifySystemInitDestroy()Z
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/server/SystemDestroyWatchdog;->getSytemTotalFileNum()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    .line 209
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mTotalFileNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mNowFileNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "SystemDestroy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifySystemDestroy mRecordNums="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    const-string v0, "SystemDestroy"

    const-string v1, "******Fatal Exception!! System partition has destroy!!*******"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    iget-wide v2, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "SystemDestroy"

    const-string v1, "******Add filesystem log to file!*******"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "system-nownum.txt"

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemFileList(Ljava/lang/String;)V

    .line 219
    iget-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mRecordNums:J

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*****system partition destroy!!**** mTotalFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNowFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 229
    :cond_1
    const-string v0, "SystemDestroy"

    const-string v1, "verifySystemDestroy OK!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySystemInitDestroy OK!! mNowFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTotalFileNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNowNumsOnBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSytemTotalFileNum()J
    .locals 14

    .prologue
    .line 352
    const-wide/16 v2, 0x0

    .line 354
    .local v2, fileNumbers:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 355
    .local v4, start:J
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/server/SystemDestroyWatchdog;->getTotalSizeOfFilesInDir(Ljava/io/File;)J

    move-result-wide v6

    .line 356
    .local v6, total:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 358
    .local v0, end:J
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Total Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time taken: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v4

    long-to-double v10, v10

    const-wide v12, 0x41cdcd6500000000L

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    move-wide v2, v6

    .line 363
    const-string v8, "SystemDestroy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSytemTotalFileNum fileNumbers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-wide v2
.end method

.method public initWatchdog(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog;->mContext:Landroid/content/Context;

    .line 88
    iget-object v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mDetectHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 89
    .local v2, nmsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mDetectHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/android/server/SystemDestroyWatchdog;->FIRST_TIME_DELAY:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 91
    const-string v3, "System InitWathcod Start...."

    invoke-direct {p0, v3}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 95
    const-string v3, "persist.yulong.file.testtimes"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    .line 96
    iget v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    .line 97
    const-string v3, "persist.yulong.file.testtimes"

    iget v4, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "persist.yulong.file.numbers"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 100
    .local v0, lastFileNum:J
    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    .line 102
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/SystemDestroyWatchdog;->getSytemTotalFileNum()J

    move-result-wide v0

    .line 104
    const-string v3, "persist.yulong.file.numbers"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-wide v0, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    .line 107
    const-string v3, "system-firstnum.txt"

    invoke-direct {p0, v3}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemFileList(Ljava/lang/String;)V

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System FirstTime record FileNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemDestroyWatchdog;->getSytemTotalFileNum()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System InitWathcod Start mTotalFileNums="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNowNumsOnBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SystemDestroyWatchdog;->saveSystemDestroyRecord(Ljava/lang/String;)V

    .line 117
    const-string v3, "SystemDestroy"

    const-string v4, "initWatchdog..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
