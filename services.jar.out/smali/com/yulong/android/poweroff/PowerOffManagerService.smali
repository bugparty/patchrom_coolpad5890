.class public Lcom/yulong/android/poweroff/PowerOffManagerService;
.super Lcom/yulong/android/poweroff/IPowerOffManager$Stub;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH_CHECK_CARD_COMPLETE:Ljava/lang/String; = "YULONG.INTENT.ACTION.CHECK_CARD_COMPLETE"

.field public static final ACTION_GOTO_SLEEP:Ljava/lang/String; = "yulong.intent.action.GOTO_SLEEP"

.field public static final ACTION_LONGIDLE_SHUTSYSTEM:Ljava/lang/String; = "yulong.intent.action.LONGIDLE_SHUT"

.field public static final ACTION_LOST_CARD:Ljava/lang/String; = "yulong.intent.action.ACTION_LOST_CARD"

.field public static final ACTION_REBOOT_SYSTEM:Ljava/lang/String; = "yulong.intent.action.REBOOT_SYSTEM"

.field private static final BOOTUP_VIBRATE_MS:I = 0x32

.field private static LIGHT_ID_BACKLIGHT:I = 0x0

.field private static LIGHT_ID_BUTTONS:I = 0x0

.field static final LOGIDLE_SHUTSYSTEM_DELAY:J = 0xa4cb800L

.field static final MODEM_SHUT_WAIT_DELAY:J = 0xbb8L

.field public static final POWEROFF_MANAGER_BOOTUP_MODE:Ljava/lang/String; = "persist.sys.fastbootup.mode"

.field public static final POWEROFF_MANAGER_SOUND_MUTE:Ljava/lang/String; = "sys.yulong.fastbootup.mute"

.field public static final POWEROFF_MANAGER_SYSTEM_STATE:Ljava/lang/String; = "sys.yulong.fastbootup.state"

.field private static final REBOOT_LOG_MAX_SIZE:J = 0x1400L

.field private static final REBOOT_TYPE_LOG:Ljava/lang/String; = "reboot_type.log"

.field static final RTCALARM_WAIT_DELAY:J = 0x927c0L

.field static final SDMOUNT_SHUT_WAIT_DELAY:J = 0x3e8L

.field private static SHUTDOWN_BRIGHTNESS_OFF:I = 0x0

.field private static SHUTDOWN_BRIGHTNESS_ON:I = 0x0

.field static final SHUTDOWN_DELAY:J = 0x4650L

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x12c

.field static final SILENCE_REBOOT_NEED_BATLEVEL:I = 0x1e

.field static final SYSTEM_GOTO_SLEEP_DELAY:J = 0x2710L

.field static final SYSTEM_REBOOT_DELAY:J = 0xdbba00L

.field static final SYSTEM_SHUTDOWN_BATLEVEL:I = 0x19

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"

.field private static app_not_be_killed:[Ljava/lang/String;

.field private static card_lost_times:I

.field private static mChargingFull:Z

.field private static mPowerCharging:Z

.field private static mSystemState:I


# instance fields
.field final EXTERNAL_STORAGE_PATH:Ljava/lang/String;

.field private inAirplaneMode:Z

.field private mAlarmManager:Lcom/android/server/AlarmManagerService;

.field private mAsyncMountSDcardHandler:Landroid/os/Handler;

.field private mBatteryLevel:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mContext:Landroid/content/Context;

.field private mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field mHomeIntent:Landroid/content/Intent;

.field private mIPowerManager:Landroid/os/IPowerManager;

.field private mIsSilenceReboot:Z

.field private mIsSystemGoToShutdown:Z

.field private mIsSystemShutdown:Z

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field private mLightsService:Lcom/android/server/LightsService;

.field private mModemInitFinished:Z

.field private mNeedModemInit:Z

.field private mNeedSilenceReboot:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPoweroffdelay:Ljava/lang/Runnable;

.field private mReBootWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdown:Lcom/yulong/android/poweroff/SystemShutdown;

.field private mSilenceRebootDelay:J

.field private mSleepLockAcquireTime:J

.field private mSleepLockTimeout:J

.field private mSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

.field private mStartFromShut:Z

.field private mSystemBooting:Z

.field private mSystemInitFinished:Z

.field private mSystemPowerDownSender:Landroid/app/PendingIntent;

.field private mSystemRebootSender:Landroid/app/PendingIntent;

.field private mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemShuting:Z

.field private mSystemSleepSender:Landroid/app/PendingIntent;

.field private mWaitingSystemShut:Z

.field private mWakeRtcAlarm:Z

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private serviceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 82
    const/16 v0, 0xc8

    sput v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->SHUTDOWN_BRIGHTNESS_ON:I

    .line 83
    sput v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->SHUTDOWN_BRIGHTNESS_OFF:I

    .line 84
    sput v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->LIGHT_ID_BACKLIGHT:I

    .line 85
    sput v3, Lcom/yulong/android/poweroff/PowerOffManagerService;->LIGHT_ID_BUTTONS:I

    .line 93
    sget v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    sput v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    .line 94
    sput-boolean v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    .line 95
    sput-boolean v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mChargingFull:Z

    .line 124
    sput v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    .line 127
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.yulong.android.launcher3"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const-string v1, "com.yulong.android.seccenter"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.alarmclock"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.quicinc.fmradio"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->app_not_be_killed:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const v4, 0x30000001

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 97
    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 102
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    .line 103
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    .line 104
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWaitingSystemShut:Z

    .line 105
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    .line 108
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    .line 109
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mModemInitFinished:Z

    .line 113
    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 114
    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    .line 115
    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 118
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSilenceReboot:Z

    .line 119
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    .line 120
    iput v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I

    .line 121
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedSilenceReboot:Z

    .line 122
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    .line 123
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemGoToShutdown:Z

    .line 156
    const-wide/32 v1, 0xdbba00

    iput-wide v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J

    .line 157
    iput-wide v5, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockAcquireTime:J

    .line 158
    iput-wide v5, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    .line 161
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-direct {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    .line 164
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    .line 165
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    .line 444
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$1;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPoweroffdelay:Ljava/lang/Runnable;

    .line 791
    const-string v1, "/mnt/sdcard"

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 1229
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    invoke-direct {v1, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$8;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 1986
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$10;

    invoke-direct {v1, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$10;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 171
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    .line 174
    new-instance v1, Lcom/yulong/android/poweroff/SystemShutdown;

    invoke-direct {v1}, Lcom/yulong/android/poweroff/SystemShutdown;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mShutdown:Lcom/yulong/android/poweroff/SystemShutdown;

    .line 175
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 177
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 179
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PowerOffManager-BOOT"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "PowerOffManager-START"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PowerOffManager-Sleep"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PowerOffManager-Reboot"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mReBootWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PowerOffManager/MountUnMountSDcard"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAsyncMountSDcardHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    return v0
.end method

.method static synthetic access$100(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->mountSDcard(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->gotoSleepWithBackLight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->isNeedSlienceReboot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1202(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceRebootSystem()V

    return-void
.end method

.method static synthetic access$1500(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/android/server/AlarmManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mReBootWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    return v0
.end method

.method static synthetic access$1808()I
    .locals 2

    .prologue
    .line 79
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    return v0
.end method

.method static synthetic access$1902(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mModemInitFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mChargingFull:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mChargingFull:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V

    return-void
.end method

.method static synthetic access$2200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/yulong/android/poweroff/PowerOffManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V

    return-void
.end method

.method static synthetic access$2700(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->waitUntilModemInitComplete()V

    return-void
.end method

.method static synthetic access$2900(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V

    return-void
.end method

.method static synthetic access$300(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/yulong/android/poweroff/SystemShutdown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mShutdown:Lcom/yulong/android/poweroff/SystemShutdown;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V

    return-void
.end method

.method static synthetic access$3200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->scheduleAlarmTimer()V

    return-void
.end method

.method static synthetic access$3600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemShutIntent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->scheduleLongIdleShutSystemTimer()V

    return-void
.end method

.method static synthetic access$3800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->shutBluetoothandWifi()V

    return-void
.end method

.method static synthetic access$3902(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemGoToShutdown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemGoToShutdown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/yulong/android/poweroff/PowerOffManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockAcquireTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/yulong/android/poweroff/PowerOffManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    return-wide v0
.end method

.method private final acquireRTCWakeLock(I)I
    .locals 4
    .parameter "nMills"

    .prologue
    .line 2007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockAcquireTime:J

    .line 2008
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    .line 2010
    const-string v0, "PowerOffManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireRTCWakeLock mSleepLockTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v0, 0x0

    return v0
.end method

.method private cancelAlarmTimer()V
    .locals 3

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1206
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1207
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1208
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1209
    return-void
.end method

.method private closeVisibleApplication()V
    .locals 15

    .prologue
    .line 1398
    const-string v11, "PowerOffManager"

    const-string v12, "Enter the  closeVisibleApplication()"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1400
    .local v0, am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 1401
    const-string v11, "PowerOffManager"

    const-string v12, "am is null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    return-void

    .line 1404
    :cond_1
    const/4 v1, 0x0

    .line 1405
    .local v1, appCount:I
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1406
    .local v5, runningAppInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1407
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 1411
    :cond_2
    if-eqz v1, :cond_0

    .line 1413
    const/16 v11, 0x64

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 1414
    .local v6, runningServiceInofList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1415
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1416
    .local v7, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v11, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.music.MediaPlaybackService"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1417
    const-string v11, "PowerOffManager"

    const-string v12, "send a pause command to com.android.music.MediaPlaybackService"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.android.music.musicservicecommand"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v8, stopMediaPlayIntent:Landroid/content/Intent;
    const-string v11, "command"

    const-string v12, "pause"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1423
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.android.music.taskbar.show"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "show"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1431
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v8           #stopMediaPlayIntent:Landroid/content/Intent;
    :cond_4
    const/16 v11, 0x64

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 1432
    .local v10, tasklist:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1433
    .local v9, taskinfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1434
    .local v4, packageName:Ljava/lang/String;
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1436
    :try_start_0
    invoke-direct {p0, v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->isClosable(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1437
    const-string v11, "PowerOffManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "***can be killed packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v2

    .line 1442
    .local v2, e:Landroid/os/RemoteException;
    const-string v11, "PowerOffManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private finishSystemInit()V
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    .line 1577
    return-void
.end method

.method private gotoSleepWithBackLight()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1150
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1151
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1152
    const-string v0, "PowerOffManager"

    const-string v1, "gotoSleepWithBackLight()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1154
    return-void
.end method

.method private initPowerOffManagerService()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 1537
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 1538
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.GOTO_SLEEP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    .line 1543
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 1544
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.REBOOT_SYSTEM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    .line 1549
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    .line 1550
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "yulong.intent.action.LONGIDLE_SHUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    .line 1555
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1557
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_3

    .line 1558
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1561
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1562
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "yulong.intent.action.GOTO_SLEEP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    const-string v2, "yulong.intent.action.REBOOT_SYSTEM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    const-string v2, "yulong.intent.action.LONGIDLE_SHUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    const-string v2, "yulong.intent.action.ACTION_LOST_CARD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1566
    const-string v2, "YULONG.INTENT.ACTION.CHECK_CARD_COMPLETE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1567
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1568
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1569
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1572
    return-void
.end method

.method private isClosable(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 1455
    const/4 v4, 0x1

    .line 1456
    .local v4, result:Z
    sget-object v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->app_not_be_killed:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1457
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1458
    const/4 v4, 0x0

    .line 1463
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return v4

    .line 1456
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isNeedSlienceReboot()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1376
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-nez v1, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return v0

    .line 1380
    :cond_1
    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v2, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v1, v2, :cond_0

    .line 1384
    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedSilenceReboot:Z

    if-eqz v1, :cond_0

    .line 1385
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mountSDcard(Z)V
    .locals 6
    .parameter "bWantToMount"

    .prologue
    .line 793
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 797
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, state:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 804
    const-string v3, "PowerOffManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mountSDcard want to mount/state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    :try_start_0
    const-string v3, "PowerOffManager"

    const-string v4, "mountSDcard/mount sdcard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v3, "/mnt/sdcard"

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 814
    new-instance v3, Lcom/yulong/android/poweroff/PowerOffManagerService$2;

    invoke-direct {v3, p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService$2;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;Landroid/os/storage/IMountService;)V

    invoke-virtual {v3}, Lcom/yulong/android/poweroff/PowerOffManagerService$2;->start()V

    goto :goto_0

    .line 840
    :cond_3
    const-string v3, "PowerOffManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mountSDcard want to unmount/state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    :try_start_1
    const-string v3, "PowerOffManager"

    const-string v4, "mountSDcard/unmount sdcard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-string v3, "/mnt/sdcard"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 845
    :catch_1
    move-exception v0

    .line 847
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyModemStartNet()V
    .locals 9

    .prologue
    .line 1787
    const/4 v2, 0x0

    .line 1788
    .local v2, gsm_radioOn:Z
    const/4 v0, 0x0

    .line 1790
    .local v0, cdma_radioOn:Z
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1794
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1795
    .local v3, inData:Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1796
    .local v4, outData:Landroid/os/Bundle;
    const-string v6, "power-state"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1798
    if-nez v5, :cond_1

    .line 1799
    const-string v6, "PowerOffManager"

    const-string v7, "phone is null : set gsm_radioOn=cdma_radioOn=true"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    const/4 v2, 0x1

    .line 1801
    const/4 v0, 0x1

    .line 1816
    .end local v3           #inData:Landroid/os/Bundle;
    .end local v4           #outData:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    .line 1817
    return-void

    .line 1803
    .restart local v3       #inData:Landroid/os/Bundle;
    .restart local v4       #outData:Landroid/os/Bundle;
    :cond_1
    if-nez v2, :cond_2

    .line 1804
    const/16 v6, 0x9

    const/4 v7, 0x2

    :try_start_1
    invoke-interface {v5, v6, v3, v4, v7}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v2

    .line 1805
    const-string v6, "PowerOffManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone : gsm_radioOn_new = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_2
    if-nez v0, :cond_0

    .line 1809
    const/16 v6, 0x9

    const/4 v7, 0x1

    invoke-interface {v5, v6, v3, v4, v7}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v0

    .line 1810
    const-string v6, "PowerOffManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone : cdma_radioOn_new = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1813
    .end local v3           #inData:Landroid/os/Bundle;
    .end local v4           #outData:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1814
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "PowerOffManager"

    const-string v7, "RemoteException during modempower shutdown"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processSystemShutdown()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 864
    const/4 v2, 0x0

    .line 866
    .local v2, currentMode:I
    const/4 v4, 0x0

    .line 867
    .local v4, gsm_radioOff:Z
    const/4 v1, 0x0

    .line 869
    .local v1, cdma_radioOff:Z
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 876
    .local v10, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->closeVisibleApplication()V

    .line 877
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->shutBluetoothandWifi()V

    .line 880
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v12, "sensor"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    .line 882
    .local v7, mSensorManager:Landroid/hardware/SensorManager;
    const-string v11, "persist.sys.acc_enable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, accoff:Ljava/lang/String;
    const-string v11, "PowerOffManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "accoff = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 885
    invoke-virtual {v7, v14}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    .line 886
    .local v6, mSensor:Landroid/hardware/Sensor;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 889
    .end local v6           #mSensor:Landroid/hardware/Sensor;
    :cond_0
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v12, "coolpadSystem"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 890
    .local v8, mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemManager;
    if-eqz v8, :cond_1

    .line 891
    invoke-virtual {v8}, Lcom/yulong/android/server/systeminterface/SystemManager;->getCurrentModel()I

    move-result v2

    .line 894
    :cond_1
    const/4 v11, 0x2

    if-eq v2, v11, :cond_2

    .line 896
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 897
    .local v5, inData:Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 898
    .local v9, outData:Landroid/os/Bundle;
    const-string v11, "power-state"

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    if-nez v10, :cond_4

    .line 901
    const-string v11, "PowerOffManager"

    const-string v12, "phone is null : set gsm_radioOff=cdma_radioOff=true"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    const/4 v4, 0x1

    .line 903
    const/4 v1, 0x1

    .line 924
    .end local v5           #inData:Landroid/os/Bundle;
    .end local v9           #outData:Landroid/os/Bundle;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 926
    iget-object v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAsyncMountSDcardHandler:Landroid/os/Handler;

    new-instance v12, Lcom/yulong/android/poweroff/PowerOffManagerService$3;

    invoke-direct {v12, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$3;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    :cond_3
    return-void

    .line 911
    .restart local v5       #inData:Landroid/os/Bundle;
    .restart local v9       #outData:Landroid/os/Bundle;
    :cond_4
    if-nez v1, :cond_2

    .line 912
    :try_start_1
    const-string v11, "PowerOffManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "phone : cdma_radioOff = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/16 v11, 0x9

    const/4 v12, 0x1

    invoke-interface {v10, v11, v5, v9, v12}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v1

    .line 914
    const-string v11, "PowerOffManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "phone : cdma_radioOff_new = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 917
    .end local v5           #inData:Landroid/os/Bundle;
    .end local v9           #outData:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 918
    .local v3, ex:Landroid/os/RemoteException;
    const-string v11, "PowerOffManager"

    const-string v12, "RemoteException during modempower shutdown"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processSystemStartup()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 976
    const/4 v1, 0x0

    .line 977
    .local v1, currentMode:I
    const/4 v3, 0x0

    .line 978
    .local v3, gsm_radioOff:Z
    const/4 v0, 0x0

    .line 980
    .local v0, cdma_radioOff:Z
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 983
    .local v7, phone:Lcom/android/internal/telephony/ITelephony;
    iget-object v8, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v9, "coolpadSystem"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 984
    .local v5, mSystemInterface:Lcom/yulong/android/server/systeminterface/SystemManager;
    if-eqz v5, :cond_0

    .line 985
    invoke-virtual {v5}, Lcom/yulong/android/server/systeminterface/SystemManager;->getCurrentModel()I

    move-result v1

    .line 995
    :cond_0
    if-eq v1, v10, :cond_1

    .line 997
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 998
    .local v4, inData:Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 999
    .local v6, outData:Landroid/os/Bundle;
    const-string v8, "power-state"

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    if-nez v7, :cond_3

    .line 1001
    const-string v8, "PowerOffManager"

    const-string v9, "phone is null : set gsm_radioOff=cdma_radioOff=true"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    const/4 v3, 0x1

    .line 1003
    const/4 v0, 0x1

    .line 1021
    .end local v4           #inData:Landroid/os/Bundle;
    .end local v6           #outData:Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1023
    iget-object v8, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAsyncMountSDcardHandler:Landroid/os/Handler;

    new-instance v9, Lcom/yulong/android/poweroff/PowerOffManagerService$4;

    invoke-direct {v9, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$4;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1039
    :cond_2
    return-void

    .line 1005
    .restart local v4       #inData:Landroid/os/Bundle;
    .restart local v6       #outData:Landroid/os/Bundle;
    :cond_3
    if-nez v3, :cond_4

    .line 1006
    :try_start_1
    const-string v8, "PowerOffManager"

    const-string v9, "start gsm_radio"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/16 v8, 0x9

    const/4 v9, 0x2

    invoke-interface {v7, v8, v4, v6, v9}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v3

    .line 1010
    :cond_4
    if-nez v0, :cond_1

    .line 1011
    const-string v8, "PowerOffManager"

    const-string v9, "start cdma_radio"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-interface {v7, v8, v4, v6, v9}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 1015
    .end local v4           #inData:Landroid/os/Bundle;
    .end local v6           #outData:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 1016
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "PowerOffManager"

    const-string v9, "RemoteException during modempower shutdown"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scheduleAlarmTimer()V
    .locals 6

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1187
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1188
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1189
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1191
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1193
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->isNeedSlienceReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1194
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1195
    const-string v1, "PowerOffManager"

    const-string v2, "SYSTEM_STATE_SHUTDOWN Reboot alarmManager.set()!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_0
    return-void
.end method

.method private scheduleLongIdleShutSystemTimer()V
    .locals 6

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1218
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1219
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemPowerDownSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1221
    const-string v1, "PowerOffManager"

    const-string v2, "scheduleLongIdleShutSystemTimer alarmManager.set()!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void
.end method

.method private final sendSystemBootIntent()V
    .locals 3

    .prologue
    .line 1935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.POWEROFF_BOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1938
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PowerOffManager"

    const-string v2, "sendSystemIntent PowerOffManager.ACTION_POWEROFF_BOOT!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1941
    return-void
.end method

.method private final sendSystemShutIntent()V
    .locals 3

    .prologue
    .line 1944
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.POWEROFF_SHUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PowerOffManager"

    const-string v2, "sendSystemIntent PowerOffManager.ACTION_POWEROFF_SHUT!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1950
    return-void
.end method

.method private setBackLightOFF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1145
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1146
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1147
    return-void
.end method

.method private setSystemSoundMute(Z)V
    .locals 4
    .parameter "bSoundMute"

    .prologue
    .line 1910
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1911
    .local v0, nMuteState:I
    :goto_0
    const-string v1, "PowerOffManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemSoundMute nMuteState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const-string v1, "sys.yulong.fastbootup.mute"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    return-void

    .line 1910
    .end local v0           #nMuteState:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shutBluetoothandWifi()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1827
    const-string v7, "bluetooth"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 1830
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1832
    .local v3, mwifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    if-ne v7, v6, :cond_7

    :cond_0
    move v4, v6

    .line 1833
    .local v4, wifiOff:Z
    :goto_0
    if-nez v4, :cond_1

    .line 1834
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1837
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_8

    :cond_2
    move v5, v6

    .line 1838
    .local v5, wifiapnoff:Z
    :goto_1
    if-nez v5, :cond_3

    .line 1839
    const-string v7, "PowerOffManager"

    const-string v8, "Disable WifiAp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1844
    :cond_3
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    :cond_4
    move v1, v6

    .line 1846
    .local v1, bluetoothOff:Z
    :cond_5
    if-nez v1, :cond_6

    .line 1847
    const-string v6, "PowerOffManager"

    const-string v7, "Disabling Bluetooth..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :cond_6
    :goto_2
    return-void

    .end local v1           #bluetoothOff:Z
    .end local v4           #wifiOff:Z
    .end local v5           #wifiapnoff:Z
    :cond_7
    move v4, v1

    .line 1832
    goto :goto_0

    .restart local v4       #wifiOff:Z
    :cond_8
    move v5, v1

    .line 1837
    goto :goto_1

    .line 1850
    .restart local v5       #wifiapnoff:Z
    :catch_0
    move-exception v2

    .line 1851
    .local v2, ex:Landroid/os/RemoteException;
    const-string v6, "PowerOffManager"

    const-string v7, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1852
    const/4 v1, 0x1

    .restart local v1       #bluetoothOff:Z
    goto :goto_2
.end method

.method private silenceRebootSystem()V
    .locals 2

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v0, :cond_1

    .line 1078
    const-string v0, "PowerOffManager"

    const-string v1, "silenceRebootSystem......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 1083
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v0, v1, :cond_0

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    .line 1085
    new-instance v0, Lcom/yulong/android/poweroff/PowerOffManagerService$6;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$6;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$6;->start()V

    goto :goto_0
.end method

.method private silenceRecoverySystem()V
    .locals 2

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v0, :cond_1

    .line 1105
    const-string v0, "PowerOffManager"

    const-string v1, "silenceRecoverySystem......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 1110
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v0, v1, :cond_0

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    .line 1112
    new-instance v0, Lcom/yulong/android/poweroff/PowerOffManagerService$7;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$7;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$7;->start()V

    goto :goto_0
.end method

.method private silenceShutdownSystem()V
    .locals 2

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v0, :cond_1

    .line 1051
    const-string v0, "PowerOffManager"

    const-string v1, "silenceShutdownSystem......"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 1056
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v0, v1, :cond_0

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    .line 1058
    new-instance v0, Lcom/yulong/android/poweroff/PowerOffManagerService$5;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$5;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$5;->start()V

    goto :goto_0
.end method

.method private updatePowerChargingState()V
    .locals 2

    .prologue
    .line 766
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-nez v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v0, v1, :cond_4

    .line 775
    sget-boolean v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    if-eqz v0, :cond_3

    .line 776
    sget-boolean v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mChargingFull:Z

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->setChargeFull()I

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->setPowerCharge()I

    goto :goto_0

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->setSystempoweroff()I

    goto :goto_0

    .line 785
    :cond_4
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    goto :goto_0
.end method

.method private updateSystemState(I)I
    .locals 2
    .parameter "nState"

    .prologue
    .line 623
    sput p1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    .line 625
    const-string v0, "sys.yulong.fastbootup.state"

    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method private userActivityWithBackLight()V
    .locals 6

    .prologue
    .line 1157
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->acquireRTCWakeLock(I)I

    .line 1161
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V

    .line 1162
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    sget v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->SHUTDOWN_BRIGHTNESS_ON:I

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private waitUntilModemInitComplete()V
    .locals 5

    .prologue
    .line 1862
    const/4 v1, 0x0

    .line 1864
    .local v1, nCount:I
    :goto_0
    iget-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mModemInitFinished:Z

    if-nez v2, :cond_0

    .line 1866
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1868
    add-int/lit8 v1, v1, 0x1

    .line 1870
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitUntilModemInitComplete nCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1872
    :catch_0
    move-exception v0

    .line 1874
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1878
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ModemInitComplete Total times="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x1f4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void
.end method

.method private waitWhenSystemShutdown()V
    .locals 5

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, nTimes:I
    const-string v2, "PowerOffManager"

    const-string v3, "waitWhenSystemShutdown!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWaitingSystemShut:Z

    .line 643
    :goto_0
    iget-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-eqz v2, :cond_0

    .line 644
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitWhenSystemShutdown nTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 654
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWaitingSystemShut:Z

    .line 655
    return-void
.end method

.method private waitforRadioShutOff()V
    .locals 17

    .prologue
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0xbb8

    add-long v3, v13, v15

    .line 380
    .local v3, fbShutDelay:J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    if-nez v13, :cond_0

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v6, v3, v13

    .line 382
    .local v6, shutDelay:J
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-gtz v13, :cond_2

    .line 383
    const-string v13, "PowerOffManager"

    const-string v14, "wait modem shut timeout, go to sleep! "

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v6           #shutDelay:J
    :cond_0
    const-wide/16 v13, 0x64

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 399
    const-string v13, "PowerOffManager"

    const-string v14, "sleep(100) to wait modem shutting complete "

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v13

    if-nez v13, :cond_3

    .line 406
    const-string v13, "PowerOffManager"

    const-string v14, "we don\'t need to unmount sdcard, since it\'s not removable"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    :goto_2
    return-void

    .line 386
    .restart local v6       #shutDelay:J
    :cond_2
    const-string v13, "PowerOffManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inAirplaneMode_waitfor = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-wide/16 v13, 0x64

    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 389
    const-string v13, "PowerOffManager"

    const-string v14, "sleep(100) to wait modem shutting complete "

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v6           #shutDelay:J
    :catch_1
    move-exception v2

    .line 402
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 412
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    const/4 v1, 0x0

    .line 413
    .local v1, bSdUnMounted:Z
    const-string v13, "mount"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 416
    .local v5, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    add-long v10, v13, v15

    .line 417
    .local v10, shutMountTimeout:J
    :goto_3
    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v8, v10, v13

    .line 420
    .local v8, shutMountDelay:J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 421
    .local v12, state:Ljava/lang/String;
    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 422
    const/4 v1, 0x1

    .line 425
    :cond_4
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-gtz v13, :cond_5

    .line 426
    const-string v13, "PowerOffManager"

    const-string v14, "wait mountservice unmount timeout, go to sleep! "

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 430
    :cond_5
    const-wide/16 v13, 0x64

    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 431
    const-string v13, "PowerOffManager"

    const-string v14, "sleep(100) to wait mountservice unmount complete!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 432
    :catch_2
    move-exception v2

    .line 434
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public acquirePowerOffWakeLock(I)I
    .locals 4
    .parameter "nMills"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockAcquireTime:J

    .line 1999
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    .line 2001
    const-string v0, "PowerOffManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePowerOffWakeLock mSleepLockTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    return v0
.end method

.method public goToSleep()I
    .locals 1

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->gotoSleepWithBackLight()V

    .line 2017
    const/4 v0, 0x0

    return v0
.end method

.method public isFastBootupMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v0

    return v0
.end method

.method public isNeedFastShut()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 591
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->isRtcAlarmWakeupWhenReboot(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    const-string v1, "PowerOffManager"

    const-string v2, "isNeedFastShut Not Support FastBootup Mode When RTC Alarm take effect!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isEngineDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    const/4 v0, 0x1

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isNeedFastShut()Z

    move-result v0

    goto :goto_0
.end method

.method public isPowerKeyCanWakeup()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v0, :cond_1

    .line 1137
    :cond_0
    const/4 v0, 0x0

    .line 1140
    :goto_0
    return v0

    :cond_1
    sget-boolean v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    goto :goto_0
.end method

.method public isSilenceRebootMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1890
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    :goto_0
    return v0

    .line 1894
    :cond_0
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isSlienceReboot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isDalvikReboot()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1895
    .local v0, isSilenceReboot:Z
    :cond_1
    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public processSilenceFirstBootSystem()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 539
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-nez v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v4

    .line 544
    :cond_1
    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v1, :cond_0

    .line 547
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    .line 549
    invoke-direct {p0, v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    .line 550
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 551
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 554
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 556
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootAnimation()I

    .line 559
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_1
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 566
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V

    .line 570
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V

    .line 571
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 574
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 576
    iput-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public rebootSystem()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    const-string v2, "PowerOffManager"

    const-string v3, "reboot because of lost card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;

    invoke-direct {v1}, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;-><init>()V

    .line 221
    .local v1, rebootTypeLog:Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;
    if-eqz v1, :cond_0

    .line 222
    const-string v2, "lostcard"

    invoke-virtual {v1, v2}, Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;->write(Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string v2, "lostcard"

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1           #rebootTypeLog:Lcom/yulong/android/poweroff/PowerOffManagerService$RebootLog;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlarmManager(Lcom/android/server/AlarmManagerService;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter "alarm"
    .parameter "lights"

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    .line 1581
    iput-object p2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 1584
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLightsService:Lcom/android/server/LightsService;

    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->LIGHT_ID_BACKLIGHT:I

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 1585
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLightsService:Lcom/android/server/LightsService;

    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->LIGHT_ID_BUTTONS:I

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 1586
    return-void
.end method

.method public setPowerCharge(Z)I
    .locals 5
    .parameter "bCharge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    const-string v1, "PowerOffManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerCharge bCharge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput-boolean p1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    .line 245
    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    if-eqz v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    const-string v1, "yulong.fbanim.complete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    .local v0, fb_animation_complete:I
    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v2, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v1, v2, :cond_0

    .line 251
    sget-boolean v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPowerCharging:Z

    if-eqz v1, :cond_2

    .line 252
    const-string v1, "PowerOffManager"

    const-string v2, "setPowerCharge userActivityWithBackLight..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    goto :goto_0

    .line 257
    :cond_2
    if-nez v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 261
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v4}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method public setSilcenReBootDelay(I)I
    .locals 4
    .parameter "nMills"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1902
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J

    .line 1904
    const-string v0, "PowerOffManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSilcenReBootDelay mSilenceRebootDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownSystem()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 276
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-nez v7, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v11

    .line 280
    :cond_1
    iget-boolean v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v7, :cond_0

    .line 283
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPoweroffdelay:Ljava/lang/Runnable;

    const-wide/16 v9, 0x4650

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    iput-boolean v12, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    .line 286
    iput-boolean v12, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedSilenceReboot:Z

    .line 288
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 289
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 290
    .local v5, listRunningAppProcess:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    .line 291
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 292
    .local v1, appProInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v7, "com.android.gallery3d"

    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 293
    const-string v7, "PowerOffManager"

    const-string v8, "kill gallery 3d inviod shutanimation screen exception."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 299
    .end local v1           #appProInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    sget v7, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    invoke-direct {p0, v7}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 301
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 302
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v7}, Lcom/yulong/android/poweroff/PowerOffSocket;->startShutAnimation()I

    .line 304
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 306
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemShutIntent()V

    .line 309
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->processSystemShutdown()V

    .line 311
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->scheduleAlarmTimer()V

    .line 316
    const-wide/16 v7, 0x5dc

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_2
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->waitforRadioShutOff()V

    .line 324
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 326
    .local v6, vibrator:Landroid/os/Vibrator;
    const-wide/16 v7, 0x12c

    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :goto_3
    const-wide/16 v7, 0x12c

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 340
    :goto_4
    invoke-virtual {v6}, Landroid/os/Vibrator;->cancel()V

    .line 343
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V

    .line 347
    const-wide/16 v7, 0x32

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 353
    :goto_5
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setBackLightOFF()V

    .line 354
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v7}, Lcom/yulong/android/poweroff/PowerOffSocket;->stopShutAnimation()I

    .line 356
    invoke-direct {p0, v12}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    .line 358
    sget v7, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    if-lez v7, :cond_4

    .line 359
    const-string v7, "PowerOffManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "card_lost_times = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/poweroff/PowerOffManagerService;->card_lost_times:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V

    .line 364
    :cond_4
    iget-boolean v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWaitingSystemShut:Z

    if-nez v7, :cond_5

    .line 365
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->gotoSleepWithBackLight()V

    .line 368
    :cond_5
    iput-boolean v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    .line 369
    iput-boolean v11, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z

    .line 370
    iget-object v7, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPoweroffdelay:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 317
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v3

    .line 319
    .local v3, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v3           #e1:Ljava/lang/InterruptedException;
    .restart local v6       #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v2

    .line 330
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PowerOffManager"

    const-string v8, "Failed to vibrate during shutdown."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 335
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 337
    .restart local v3       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 348
    .end local v3           #e1:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v3

    .line 350
    .restart local v3       #e1:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method public shutdownWhenUSBConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1960
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isEngineDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1983
    :goto_0
    return v4

    .line 1964
    :cond_0
    iget-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-eqz v2, :cond_2

    .line 1966
    const-string v2, "yulong.fbanim.complete"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, value:Ljava/lang/String;
    :goto_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1969
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1971
    const-string v2, "yulong.fbanim.complete"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1972
    const-string v2, "PowerOffManager"

    const-string v3, "wait for animation Complete!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1974
    :catch_0
    move-exception v0

    .line 1976
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1979
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->setSystempoweroff()I

    .line 1982
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V

    goto :goto_0
.end method

.method public startBootSystem()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 461
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v4, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v3

    .line 465
    :cond_1
    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSilenceReboot:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    if-eqz v4, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->processSilenceFirstBootSystem()I

    move-result v3

    goto :goto_0

    .line 470
    :cond_2
    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z

    if-nez v4, :cond_0

    .line 473
    iput-boolean v6, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    .line 481
    invoke-direct {p0, v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    .line 482
    sget v4, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 483
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 484
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedSilenceReboot:Z

    .line 488
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 490
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v4}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootAnimation()I

    .line 493
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_1
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v4}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 500
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V

    .line 503
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->processSystemStartup()V

    .line 505
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 507
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    :goto_2
    const-wide/16 v4, 0x32

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 521
    :goto_3
    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 523
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 525
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 527
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z

    goto :goto_0

    .line 494
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 508
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PowerOffManager"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 516
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 518
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public startRecoverySystem()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1918
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemInitFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemShutdown:Z

    if-eqz v0, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return v3

    .line 1923
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 1925
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1927
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->startRecoverySystem()I

    .line 1929
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceRecoverySystem()V

    goto :goto_0
.end method

.method public startSystemFromShutdown()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 707
    sget v1, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v2, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-eq v1, v2, :cond_1

    .line 753
    :cond_0
    :goto_0
    return v4

    .line 712
    :cond_1
    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    if-nez v1, :cond_0

    .line 715
    const/16 v1, 0x2710

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->acquireRTCWakeLock(I)I

    .line 716
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    .line 717
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->waitWhenSystemShutdown()V

    .line 719
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 720
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 721
    invoke-direct {p0, v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    .line 722
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 724
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->setSystempoweroff()I

    .line 725
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 727
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 730
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V

    .line 732
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootAnimation()I

    .line 735
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_1
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 743
    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSilenceReboot:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    if-eqz v1, :cond_2

    .line 744
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V

    .line 745
    iput-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 750
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->processSystemStartup()V

    .line 751
    iput-boolean v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    goto :goto_0
.end method

.method public systemInit()V
    .locals 3

    .prologue
    .line 1478
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isSlienceReboot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSilenceReboot:Z

    .line 1482
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1529
    :goto_0
    return-void

    .line 1488
    :cond_0
    const-string v1, "sys.yulong.fastbootup.state"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1489
    .local v0, nSystemstate:I
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isDalvikReboot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit SYSTEM_STATE_NORMAL SilenceReboot.isDalvikReboot().."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    goto :goto_0

    .line 1498
    :cond_1
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isSlienceReboot()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isDalvikReboot()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1499
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit isSlienceReboot && !isDalvikReboot .."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isKernelScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1503
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootWav()I

    .line 1505
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit isSlienceReboot && !isDalvikReboot isKernelScreenOn .."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 1507
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->setSystemBootComplete()V

    goto :goto_0

    .line 1511
    :cond_2
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit updateSystemState SHUTDOWN .."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 1514
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    goto :goto_0

    .line 1518
    :cond_3
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isDalvikReboot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1520
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit forceshutdownsystem!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    goto :goto_0

    .line 1527
    :cond_4
    const-string v1, "PowerOffManager"

    const-string v2, "systemRebootInit kernel Normal Bootup!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter "wm"

    .prologue
    const/4 v2, 0x0

    .line 1596
    const-string v0, "PowerOffManager"

    const-string v1, "systemReady ...."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1600
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->initPowerOffManagerService()V

    .line 1602
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffUtils;->isFastBootupMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V

    .line 1778
    :goto_0
    return-void

    .line 1607
    :cond_0
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    if-ne v0, v1, :cond_1

    .line 1608
    const-string v0, "PowerOffManager"

    const-string v1, "systemReady SYSTEM_STATE_NORMAL return...."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V

    goto :goto_0

    .line 1614
    :cond_1
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isKernelScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1615
    sget v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 1616
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->setSystemBootComplete()V

    .line 1618
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootWav()I

    .line 1619
    const-string v0, "PowerOffManager"

    const-string v1, "systemReady isKernelScreenOn return...."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V

    .line 1622
    invoke-direct {p0, v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    goto :goto_0

    .line 1626
    :cond_2
    sget v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 1628
    const-string v0, "PowerOffManager"

    const-string v1, "systemReady SYSTEM_STATE_SHUTDOWN...."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->setBootLoaderUI()I

    .line 1633
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1635
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 1640
    new-instance v0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$9;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->start()V

    goto :goto_0
.end method

.method public userActivityWithForce()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public wakeupSystemForRTCAlarm()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 662
    sget v0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemState:I

    sget v1, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-eq v0, v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v3

    .line 667
    :cond_1
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mStartFromShut:Z

    if-nez v0, :cond_0

    .line 670
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->acquireRTCWakeLock(I)I

    .line 671
    iput-boolean v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    .line 672
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->waitWhenSystemShutdown()V

    .line 674
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->cancelAlarmTimer()V

    .line 675
    sget v0, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    invoke-direct {p0, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I

    .line 676
    invoke-direct {p0, v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V

    .line 677
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 679
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V

    .line 681
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 683
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 684
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V

    .line 687
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSilenceReboot:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z

    if-eqz v0, :cond_2

    .line 688
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V

    .line 689
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    goto :goto_0

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->processSystemStartup()V

    .line 695
    iput-boolean v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService;->mWakeRtcAlarm:Z

    goto :goto_0
.end method
