.class public Lcom/yulong/android/poweroff/SilenceReboot;
.super Ljava/lang/Object;
.source "SilenceReboot.java"


# static fields
.field private static BOOT_STATE_PATH:Ljava/lang/String; = null

.field private static SCREEN_STATE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "/sys/class/switch/power_state/backlight_enable"

    sput-object v0, Lcom/yulong/android/poweroff/SilenceReboot;->SCREEN_STATE_PATH:Ljava/lang/String;

    .line 36
    const-string v0, "/sys/class/switch/power_state/backlight_enable"

    sput-object v0, Lcom/yulong/android/poweroff/SilenceReboot;->BOOT_STATE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDalvikReboot()Z
    .locals 3

    .prologue
    .line 132
    const-string/jumbo v1, "ro.yulong.ylcrash"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, sys_crash:Ljava/lang/String;
    const-string/jumbo v1, "syscrash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKernelScreenOn()Z
    .locals 10

    .prologue
    const/16 v7, 0x400

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    .local v4, screen_state:I
    new-array v0, v7, [C

    .line 96
    .local v0, buffer:[C
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v7, Lcom/yulong/android/poweroff/SilenceReboot;->SCREEN_STATE_PATH:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 98
    .local v3, len:I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    if-ne v4, v5, :cond_0

    :goto_1
    return v5

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "PowerOffManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This kernel not support FastBootup Mode!! isKernelScreenOn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/yulong/android/poweroff/SilenceReboot;->SCREEN_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "PowerOffManager"

    const-string v8, "This Exception ......"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move v5, v6

    .line 106
    goto :goto_1
.end method

.method public static isLauncherReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 143
    const-string/jumbo v2, "yulong.launcher.ready"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    .local v0, launcher_is_ready:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSlienceReboot()Z
    .locals 12

    .prologue
    const/16 v9, 0xff

    .line 40
    const/4 v5, 0x0

    .line 43
    .local v5, isSlienceReboot:Z
    const/16 v10, 0x100

    :try_start_0
    new-array v0, v10, [C

    .line 45
    .local v0, buf:[C
    new-instance v3, Ljava/io/FileReader;

    const-string v10, "/proc/cmdline"

    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 49
    .local v1, count:I
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x0

    if-le v1, v9, :cond_0

    move v1, v9

    .end local v1           #count:I
    :cond_0
    invoke-direct {v7, v0, v10, v1}, Ljava/lang/String;-><init>([CII)V

    .line 51
    .local v7, strCmdline:Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, strArray:[Ljava/lang/String;
    const-string v8, "android.reboot_event=silence"

    .line 57
    .local v8, subStr:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v6

    if-ge v4, v9, :cond_1

    .line 58
    aget-object v9, v6, v4

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 59
    const/4 v5, 0x1

    .line 65
    :cond_1
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    .end local v0           #buf:[C
    .end local v3           #fileReader:Ljava/io/FileReader;
    .end local v4           #i:I
    .end local v6           #strArray:[Ljava/lang/String;
    .end local v7           #strCmdline:Ljava/lang/String;
    .end local v8           #subStr:Ljava/lang/String;
    :cond_2
    :goto_1
    return v5

    .line 57
    .restart local v0       #buf:[C
    .restart local v3       #fileReader:Ljava/io/FileReader;
    .restart local v4       #i:I
    .restart local v6       #strArray:[Ljava/lang/String;
    .restart local v7       #strCmdline:Ljava/lang/String;
    .restart local v8       #subStr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v0           #buf:[C
    .end local v3           #fileReader:Ljava/io/FileReader;
    .end local v4           #i:I
    .end local v6           #strArray:[Ljava/lang/String;
    .end local v7           #strCmdline:Ljava/lang/String;
    .end local v8           #subStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v9, "PowerOffManager"

    const-string v10, "Fail to open /proc/cmdline"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 77
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "PowerOffManager"

    const-string v10, "Exception error!"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setSystemBootComplete()V
    .locals 5

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/yulong/android/poweroff/SilenceReboot;->BOOT_STATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, file:Ljava/io/FileOutputStream;
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 117
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :goto_0
    const-string/jumbo v2, "yulong.fbanim.complete"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This kernel not support FastBootup Mode!!setSystemBootComplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/poweroff/SilenceReboot;->BOOT_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
