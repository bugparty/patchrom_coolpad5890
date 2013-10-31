.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;,
        Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERN_GET_EXPONENT:Ljava/lang/String; = "android.icoolme.intent.action.GET_EXPONENT"

.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final DAYTIME_BEGIN_HOUR:I = 0x8

.field private static final DAYTIME_END_HOUR:I = 0x14

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field public static final KEYGUARD_IS_MOVE:Ljava/lang/String; = "yulong.intent.action.Lockscreen.CHANGE_STATUBAR_BLACK"

.field public static final LOCKSCREEN_UPDATE_WEATHER:Ljava/lang/String; = "android.icoolme.intent.action.GET_WEATHER_DATA"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field public static final REQUEST_SHOWNUM_ACTION:Ljava/lang/String; = "yulong.intent.action.launcher.REQUEST_SHOW_NUM"

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I

.field public static mIsHideStatuBar:Z


# instance fields
.field private cityNameSave:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCameraDisabled:Z

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private final mHasVibrator:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

.field private mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSearchDisabled:Z

.field mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private weatherImageDayTimeIds:[I

.field private weatherImageNightIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockScreen;->mIsHideStatuBar:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v1, 0x20

    const/4 v8, -0x1

    .line 721
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->weatherImageDayTimeIds:[I

    .line 141
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->weatherImageNightIds:[I

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 251
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 798
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 722
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 723
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 724
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 727
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 730
    new-instance v6, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 731
    .local v6, lockScreenStatusMethod:Lcom/android/internal/policy/impl/LockScreen$LockScreenStatusInfoMethod;
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setOnSurfaceTouchListener(Lcom/android/internal/policy/impl/LockScreenStatusInfo;)V

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->removeAllViews()V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->addView(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->getLockScreenSurfaceData()Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;

    .line 741
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 742
    .local v7, vibrator:Landroid/os/Vibrator;
    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHasVibrator:Z

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 744
    return-void

    .line 742
    :cond_0
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0

    .line 121
    :array_0
    .array-data 0x4
        0x41t 0x6t 0x8t 0x1t
        0x42t 0x6t 0x8t 0x1t
        0x43t 0x6t 0x8t 0x1t
        0x44t 0x6t 0x8t 0x1t
        0x45t 0x6t 0x8t 0x1t
        0x46t 0x6t 0x8t 0x1t
        0x48t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x47t 0x6t 0x8t 0x1t
        0x48t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x4at 0x6t 0x8t 0x1t
        0x4bt 0x6t 0x8t 0x1t
        0x4ct 0x6t 0x8t 0x1t
        0x4dt 0x6t 0x8t 0x1t
        0x4et 0x6t 0x8t 0x1t
        0x4ft 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x4dt 0x6t 0x8t 0x1t
        0x4at 0x6t 0x8t 0x1t
        0x50t 0x6t 0x8t 0x1t
        0x4ft 0x6t 0x8t 0x1t
        0x4et 0x6t 0x8t 0x1t
        0x51t 0x6t 0x8t 0x1t
        0x52t 0x6t 0x8t 0x1t
        0x53t 0x6t 0x8t 0x1t
        0x54t 0x6t 0x8t 0x1t
        0x54t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x55t 0x6t 0x8t 0x1t
    .end array-data

    .line 141
    :array_1
    .array-data 0x4
        0x57t 0x6t 0x8t 0x1t
        0x58t 0x6t 0x8t 0x1t
        0x59t 0x6t 0x8t 0x1t
        0x5at 0x6t 0x8t 0x1t
        0x45t 0x6t 0x8t 0x1t
        0x5bt 0x6t 0x8t 0x1t
        0x48t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x47t 0x6t 0x8t 0x1t
        0x48t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x4at 0x6t 0x8t 0x1t
        0x4bt 0x6t 0x8t 0x1t
        0x4ct 0x6t 0x8t 0x1t
        0x4dt 0x6t 0x8t 0x1t
        0x4et 0x6t 0x8t 0x1t
        0x4ft 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x4dt 0x6t 0x8t 0x1t
        0x4at 0x6t 0x8t 0x1t
        0x50t 0x6t 0x8t 0x1t
        0x4ft 0x6t 0x8t 0x1t
        0x4et 0x6t 0x8t 0x1t
        0x51t 0x6t 0x8t 0x1t
        0x52t 0x6t 0x8t 0x1t
        0x53t 0x6t 0x8t 0x1t
        0x54t 0x6t 0x8t 0x1t
        0x54t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x49t 0x6t 0x8t 0x1t
        0x55t 0x6t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenInfoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->startSmsApp(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/LockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen;->cityNameSave:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 983
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 984
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static isDaytime()Z
    .locals 3

    .prologue
    .line 841
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 842
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 843
    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 980
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static setIsHideStatuBar(Z)V
    .locals 0
    .parameter "isHideStatusBar"

    .prologue
    .line 899
    sput-boolean p0, Lcom/android/internal/policy/impl/LockScreen;->mIsHideStatuBar:Z

    .line 900
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 704
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 705
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 706
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 707
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startSmsApp(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 913
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 914
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.MMS_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MessageId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 917
    const-string v1, "LockScreen"

    const-string v2, " startSmsApp id != -1 is done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 928
    return-void

    .line 919
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.mms.switchView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 923
    const-string v1, "vnd.android-dir/newmms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v1, "LockScreen"

    const-string v2, " startSmsApp id = -1 is done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->cleanUp()V

    .line 825
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 826
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 827
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 828
    return-void
.end method

.method public getWeatherBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "cityName"
    .parameter "strMinDegree"
    .parameter "strMaxDegree"
    .parameter "strWeatherRdes"
    .parameter "weatherType"

    .prologue
    .line 847
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, weatherAndDegree:Ljava/lang/String;
    if-lez p5, :cond_3

    .line 853
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen;->isDaytime()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 854
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->weatherImageDayTimeIds:[I

    add-int/lit8 v13, p5, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 861
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-nez v1, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080656

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 865
    :cond_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42df

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 866
    .local v3, bitmapWidthPx:I
    iget-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v12, 0x4302

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 868
    .local v2, bitmapHeightPx:I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 869
    .local v6, mbitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 870
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 871
    .local v7, p:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 872
    const/4 v11, -0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    iget-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v12, 0x4128

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 875
    .local v8, paintSize:I
    int-to-float v11, v8

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 876
    iget-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42e9

    invoke-static {v11, v12}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 878
    .local v4, bitmapWidthetPx:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v13, 0x4128

    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v12

    mul-int/2addr v11, v12

    sub-int v11, v4, v11

    div-int/lit8 v10, v11, 0x2

    .line 879
    .local v10, widthCenther:I
    if-gez v10, :cond_1

    .line 880
    const/4 v10, 0x0

    .line 883
    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v1, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 884
    if-eqz p1, :cond_4

    .line 886
    int-to-float v11, v10

    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v13, 0x42d2

    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, p1, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 890
    :goto_1
    if-eqz v9, :cond_5

    .line 892
    int-to-float v11, v10

    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const/high16 v13, 0x42f0

    invoke-static {v12, v13}, Lcom/android/internal/policy/impl/LockScreen;->dip2px(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v5, v9, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 896
    :goto_2
    return-object v6

    .line 856
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapHeightPx:I
    .end local v3           #bitmapWidthPx:I
    .end local v4           #bitmapWidthetPx:I
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v6           #mbitmap:Landroid/graphics/Bitmap;
    .end local v7           #p:Landroid/graphics/Paint;
    .end local v8           #paintSize:I
    .end local v10           #widthCenther:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->weatherImageNightIds:[I

    add-int/lit8 v13, p5, -0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 859
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080656

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 888
    .restart local v2       #bitmapHeightPx:I
    .restart local v3       #bitmapWidthPx:I
    .restart local v4       #bitmapWidthetPx:I
    .restart local v5       #c:Landroid/graphics/Canvas;
    .restart local v6       #mbitmap:Landroid/graphics/Bitmap;
    .restart local v7       #p:Landroid/graphics/Paint;
    .restart local v8       #paintSize:I
    .restart local v10       #widthCenther:I
    :cond_4
    const-string v11, "LockScreen"

    const-string v12, "...............cityName == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 894
    :cond_5
    const-string v11, "LockScreen"

    const-string v12, "...............weatherAndDegree == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 763
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 769
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 770
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 775
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 782
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 748
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 751
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->unLockWidgetMethodReset(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->onPause()V

    .line 796
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 812
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->onResume()V

    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 815
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    :cond_0
    return-void
.end method

.method public sendBroadCastToStatuBar(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 831
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "senBsetBroadCastToStatusBar mIsHideStatusBar before= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/LockScreen;->mIsHideStatuBar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.Lockscreen.CHANGE_STATUBAR_BLACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changeback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 834
    const-string v1, "isHideStatuBar"

    sget-boolean v2, Lcom/android/internal/policy/impl/LockScreen;->mIsHideStatuBar:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 838
    :cond_0
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "senBsetBroadCastToStatusBar mIsHideStatusBar after= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/LockScreen;->mIsHideStatuBar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 756
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 757
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 759
    :cond_0
    return-void
.end method
