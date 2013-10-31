.class public Lcom/android/server/RecordRebootReasonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecordRebootReasonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecordRebootReasonReceiver$RebootLog;
    }
.end annotation


# static fields
.field private static final BOOT_REASON_FILE_PATH:Ljava/lang/String; = "/proc/cmdline"

.field private static final MAX_LIMIT_TIME_OF_VM_REBOOT:J = 0x493e0L

.field private static final REBOOT_LOG_MAX_SIZE:J = 0x800L

.field private static final REBOOT_TYPE_LOG:Ljava/lang/String; = "reboot_type.log"

.field private static final TAG:Ljava/lang/String; = "RecordRebootReasonReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 135
    return-void
.end method

.method private getRebootType()Ljava/lang/String;
    .locals 17

    .prologue
    .line 72
    const/4 v9, 0x0

    .line 73
    .local v9, rebootReason:Ljava/lang/String;
    const/16 v0, 0x400

    .line 75
    .local v0, MAX_LENGTH_CMDLINE:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/32 v15, 0x493e0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    .line 76
    const-string v9, "vm"

    :cond_0
    :goto_0
    move-object v13, v9

    .line 130
    :goto_1
    return-object v13

    .line 79
    :cond_1
    const/16 v13, 0x400

    :try_start_0
    new-array v1, v13, [C

    .line 80
    .local v1, buf:[C
    new-instance v4, Ljava/io/FileReader;

    const-string v13, "/proc/cmdline"

    invoke-direct {v4, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, fileReader:Ljava/io/FileReader;
    const/4 v13, 0x0

    const/16 v14, 0x3ff

    invoke-virtual {v4, v1, v13, v14}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 82
    .local v2, count:I
    const/16 v13, 0x3ff

    if-le v2, v13, :cond_2

    .line 83
    const/16 v2, 0x3ff

    .line 86
    :cond_2
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v1, v13, v2}, Ljava/lang/String;-><init>([CII)V

    .line 87
    .local v11, strCmdline:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, strArray:[Ljava/lang/String;
    const-string v12, "androidboot.bootreason="

    .line 90
    .local v12, subStr:Ljava/lang/String;
    array-length v6, v10

    .line 92
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 93
    aget-object v13, v10, v5

    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 99
    :cond_3
    if-lt v5, v6, :cond_5

    .line 100
    const/4 v13, 0x0

    goto :goto_1

    .line 92
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 103
    :cond_5
    aget-object v13, v10, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, numberStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, num:I
    const/4 v13, 0x1

    if-eq v7, v13, :cond_6

    const/4 v13, 0x2

    if-eq v7, v13, :cond_6

    const/16 v13, 0x20

    if-eq v7, v13, :cond_6

    .line 108
    move-object v9, v8

    .line 111
    :cond_6
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 114
    .end local v1           #buf:[C
    .end local v2           #count:I
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #num:I
    .end local v8           #numberStr:Ljava/lang/String;
    .end local v10           #strArray:[Ljava/lang/String;
    .end local v11           #strCmdline:Ljava/lang/String;
    .end local v12           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 116
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v13, "RecordRebootReasonReceiver"

    const-string v14, "Fail to open /proc/cmdline"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 120
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 122
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v13, "RecordRebootReasonReceiver"

    const-string v14, "Number format error!"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    .line 125
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "RecordRebootReasonReceiver"

    const-string v14, "Exception error!"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private writeRebootTypeLog()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/server/RecordRebootReasonReceiver$RebootLog;

    invoke-direct {v0}, Lcom/android/server/RecordRebootReasonReceiver$RebootLog;-><init>()V

    .line 61
    .local v0, rebootTypeLog:Lcom/android/server/RecordRebootReasonReceiver$RebootLog;
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->getRebootType()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, strRebootType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/server/RecordRebootReasonReceiver$RebootLog;->write(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "RecordRebootReasonReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartupIntentReceiver onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/server/RecordRebootReasonReceiver;->writeRebootTypeLog()V

    .line 57
    :cond_0
    return-void
.end method
