.class public Lcom/yulong/android/poweroff/PowerOffUtils;
.super Ljava/lang/Object;
.source "PowerOffUtils.java"


# static fields
.field public static final POWEROFF_MANAGER_BOOTUP_MODE:Ljava/lang/String; = "persist.sys.fastbootup.mode"

.field static SystemUtil:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string v1, "com.yulong.android.server.systeminterface.util.SystemUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/poweroff/PowerOffUtils;->SystemUtil:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 40
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 47
    :try_start_0
    sget-object v2, Lcom/yulong/android/poweroff/PowerOffUtils;->SystemUtil:Ljava/lang/Class;

    const-string v4, "getYLParam"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 53
    goto :goto_0
.end method

.method public static isBeiDaoMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 137
    const-string v2, "GUARD"

    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffUtils;->SystemUtil_getYLParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, againGuard:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-string v2, "2"

    const-string/jumbo v3, "persist.sys.fangdaomode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persist.sys.fangdaomode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "persist.sys.fangdaomode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v2, "2"

    const-string/jumbo v3, "persist.sys.fangdaomode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEngineDebug()Z
    .locals 3

    .prologue
    .line 127
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFastBootupMode()Z
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v1, "persist.sys.fastbootup.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, strMode:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isModemOK()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, result:Z
    const/4 v1, 0x1

    .line 105
    .local v1, gsm_pinstate:Z
    const/4 v0, 0x1

    .line 110
    .local v0, cdma_pinstate:Z
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v2

    .line 111
    .local v2, mPhonemodemanager:Lcom/yulong/android/internal/telephony/PhoneModeManager;
    invoke-virtual {v2, v5}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIccLockEnabled(I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v4

    .line 112
    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIccLockEnabled(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v4

    .line 117
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    const/4 v3, 0x1

    .line 121
    :cond_0
    return v3

    :cond_1
    move v0, v5

    .line 111
    goto :goto_0

    :cond_2
    move v1, v5

    .line 112
    goto :goto_1
.end method

.method public static isNeedFastShut()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isUsbSupplyPower()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isModemOK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isBeiDaoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUsbSupplyPower()Z
    .locals 10

    .prologue
    const/16 v7, 0xff

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, result:Z
    const-string v0, "/sys/class/power_supply/usb/online"

    .line 76
    .local v0, POWER_SUPPLY_PATH:Ljava/lang/String;
    const/16 v8, 0x100

    new-array v1, v8, [C

    .line 79
    .local v1, buf:[C
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v8, "/sys/class/power_supply/usb/online"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, fileReader:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 81
    .local v2, count:I
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    if-le v2, v7, :cond_0

    move v2, v7

    .end local v2           #count:I
    :cond_0
    invoke-direct {v6, v1, v8, v2}, Ljava/lang/String;-><init>([CII)V

    .line 82
    .local v6, state:Ljava/lang/String;
    const-string v7, "PowerOffManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "***usb/online: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    const/4 v5, 0x1

    .line 87
    :cond_1
    if-eqz v4, :cond_2

    .line 88
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v4           #fileReader:Ljava/io/FileReader;
    .end local v6           #state:Ljava/lang/String;
    :cond_2
    :goto_0
    return v5

    .line 90
    :catch_0
    move-exception v3

    .line 92
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v7, "PowerOffManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 96
    .local v3, e:Ljava/io/IOException;
    const-string v7, "PowerOffManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
