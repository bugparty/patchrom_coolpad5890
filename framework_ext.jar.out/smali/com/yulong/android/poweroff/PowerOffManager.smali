.class public Lcom/yulong/android/poweroff/PowerOffManager;
.super Ljava/lang/Object;
.source "PowerOffManager.java"


# static fields
.field public static final ACTION_POWEROFF_BOOT:Ljava/lang/String; = "yulong.intent.action.POWEROFF_BOOT"

.field public static final ACTION_POWEROFF_SHUT:Ljava/lang/String; = "yulong.intent.action.POWEROFF_SHUT"

.field public static SYSTEM_STATE_NORMAL:I = 0x0

.field public static SYSTEM_STATE_SHUTDOWN:I = 0x0

.field public static SYS_SERVICE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"

.field private static mInstance:Lcom/yulong/android/poweroff/PowerOffManager;


# instance fields
.field private mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "poweroffservice"

    sput-object v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYS_SERVICE:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    return-void
.end method

.method private constructor <init>(Lcom/yulong/android/poweroff/IPowerOffManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/yulong/android/poweroff/PowerOffManager;
    .locals 3

    .prologue
    .line 48
    sget-object v2, Lcom/yulong/android/poweroff/PowerOffManager;->mInstance:Lcom/yulong/android/poweroff/PowerOffManager;

    if-eqz v2, :cond_0

    .line 49
    sget-object v2, Lcom/yulong/android/poweroff/PowerOffManager;->mInstance:Lcom/yulong/android/poweroff/PowerOffManager;

    .line 54
    .local v0, b:Landroid/os/IBinder;
    .local v1, service:Lcom/yulong/android/poweroff/IPowerOffManager;
    :goto_0
    return-object v2

    .line 51
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/yulong/android/poweroff/IPowerOffManager;
    :cond_0
    sget-object v2, Lcom/yulong/android/poweroff/PowerOffManager;->SYS_SERVICE:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/poweroff/IPowerOffManager;

    move-result-object v1

    .line 53
    .restart local v1       #service:Lcom/yulong/android/poweroff/IPowerOffManager;
    new-instance v2, Lcom/yulong/android/poweroff/PowerOffManager;

    invoke-direct {v2, v1}, Lcom/yulong/android/poweroff/PowerOffManager;-><init>(Lcom/yulong/android/poweroff/IPowerOffManager;)V

    sput-object v2, Lcom/yulong/android/poweroff/PowerOffManager;->mInstance:Lcom/yulong/android/poweroff/PowerOffManager;

    .line 54
    sget-object v2, Lcom/yulong/android/poweroff/PowerOffManager;->mInstance:Lcom/yulong/android/poweroff/PowerOffManager;

    goto :goto_0
.end method


# virtual methods
.method public acquirePowerOffWakeLock(I)I
    .locals 3
    .parameter "nMills"

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1, p1}, Lcom/yulong/android/poweroff/IPowerOffManager;->acquirePowerOffWakeLock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemState()I
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->getSystemState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    goto :goto_0
.end method

.method public goToSleep()I
    .locals 3

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->goToSleep()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFastBootupMode()Z
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->isFastBootupMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedFastShut()Z
    .locals 3

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->isNeedFastShut()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in isNeedFastShut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPowerKeyCanWakeup()Z
    .locals 3

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->isPowerKeyCanWakeup()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSilenceRebootMode()Z
    .locals 3

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->isSilenceRebootMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rebootSystem()Z
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->rebootSystem()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPowerCharge(Z)Z
    .locals 3
    .parameter "bCharge"

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1, p1}, Lcom/yulong/android/poweroff/IPowerOffManager;->setPowerCharge(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilcenReBootDelay(I)I
    .locals 3
    .parameter "nMills"

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1, p1}, Lcom/yulong/android/poweroff/IPowerOffManager;->setSilcenReBootDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdownSystem()Z
    .locals 3

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->shutdownSystem()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shutdownWhenUSBConnected()Z
    .locals 3

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->shutdownWhenUSBConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startBootSystem()Z
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->startBootSystem()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecoverySystem()Z
    .locals 3

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->startRecoverySystem()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startSystemFromShutdown()Z
    .locals 3

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->startSystemFromShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userActivityWithForce()I
    .locals 3

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->userActivityWithForce()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    goto :goto_0
.end method

.method public wakeupSystemForRTCAlarm()Z
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManager;->mPoweroffservice:Lcom/yulong/android/poweroff/IPowerOffManager;

    invoke-interface {v1}, Lcom/yulong/android/poweroff/IPowerOffManager;->wakeupSystemForRTCAlarm()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerOffManager"

    const-string v2, "Dead object in PowerOffManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v1, 0x0

    goto :goto_0
.end method
