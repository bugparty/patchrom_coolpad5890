.class public Lcom/android/internal/policy/impl/LockScreenInfoManager;
.super Landroid/widget/LinearLayout;
.source "LockScreenInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenFastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;,
        Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field public static final LOCKSCREEN_DIALOG_STATUS_CHANGED:Ljava/lang/String; = "yulong.intent.action.Lockscreen.CHANGE_STATUSBAR_ALPHA"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final RELEASE_SOUND_FILE_PATH:Ljava/lang/String; = "/system/media/audio/ui/Release.ogg"

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreenInfoManager"

.field private static final TOUCH_SOUND_FILE_PATH:Ljava/lang/String; = "/system/media/audio/ui/Touch.ogg"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private final PREFERENCE_NAME:Ljava/lang/String;

.field private ad:Landroid/app/AlertDialog;

.field private isItemsChecked:[Z

.field private isOntouchUnlock:Z

.field private isTarget:Z

.field private ismove:Z

.field private keyguardWidgetBg:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraDisabled:Z

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultListItemValues:[Z

.field private mDialogSettingButton:Landroid/widget/Button;

.field private mDialogView:Landroid/view/View;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEnableMenuKeyInLockScreen:Z

.field private mEnableRingSilenceFallback:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mGridLayout:Landroid/widget/GridLayout;

.field private final mHasVibrator:Z

.field public mIsDialogShoing:Z

.field private mIsRandomUnlock:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

.field private mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

.field private mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNaturalBarHeight:I

.field private mSearchDisabled:Z

.field private mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWhichWidgetBg:I

.field private mWidgetBgAlphaTv:Landroid/widget/TextView;

.field private mscreenHeigh:I

.field private mscreenWidth:I

.field private final r_lockscreen:F

.field private strKeyguardWidgetBg:[Ljava/lang/String;

.field private unreadcalendar:I

.field private unreademail:I

.field private unreadphone:I

.field private unreadsms:I

.field private whichCheckedKey:[Ljava/lang/String;

.field private xDown:F

.field private xOffset:I

.field private yDown:F

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "creationOrientation"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEnableRingSilenceFallback:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mNaturalBarHeight:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGridLayout:Landroid/widget/GridLayout;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ismove:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z

    .line 125
    const-string v0, "survey"

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->PREFERENCE_NAME:Ljava/lang/String;

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "salverChecked"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timeChecked"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "carrierChecked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WeatherChecked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MsgBoxChecked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IsRandowUnlock"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0%"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "20%"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "40%"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "60%"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;

    .line 943
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    .line 944
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 945
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 946
    iput p2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCreationOrientation:I

    .line 947
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEnableMenuKeyInLockScreen:Z

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 956
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenWidth:I

    .line 957
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenHeigh:I

    .line 958
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenHeigh:I

    if-le v0, v1, :cond_0

    .line 959
    const-string v0, "LockScreenInfoManager"

    const-string v1, "fangzhengru screenWidth is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenHeigh:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenWidth:I

    .line 962
    :cond_0
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mscreenWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->r_lockscreen:F

    .line 974
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 976
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 977
    const v0, 0x1090058

    const/4 v1, 0x1

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 981
    :goto_0
    const v0, 0x1020384

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    .line 982
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setKeyguardBitmap()V

    .line 983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setFocusable(Z)V

    .line 984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setFocusableInTouchMode(Z)V

    .line 985
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setDescendantFocusability(I)V

    .line 986
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 989
    const v0, 0x1020383

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogSettingButton:Landroid/widget/Button;

    .line 990
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {v0, p0, p4, v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    .line 991
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->getLockScreenWidgetChoice()Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "survey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 997
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 999
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z

    aget-boolean v3, v3, v6

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v6

    .line 997
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 979
    .end local v6           #i:I
    :cond_1
    const v0, 0x1090058

    const/4 v1, 0x1

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 1002
    .restart local v6       #i:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "whichBg"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsRandomUnlock:Z

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreenWidgetChoice;->showWidgets([ZIZ)V

    .line 1005
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$LSInfoManagerDetectListener;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogSettingButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setButtonOnClickListener(Landroid/widget/Button;)V

    .line 1010
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 1011
    .local v9, vibrator:Landroid/os/Vibrator;
    if-nez v9, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mHasVibrator:Z

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    .line 1014
    const v0, 0x10202c2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    .line 1019
    return-void

    .line 1011
    :cond_3
    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_2

    .line 132
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 141
    nop

    :array_1
    .array-data 0x4
        0x9et 0x6t 0x8t 0x1t
        0x9ft 0x6t 0x8t 0x1t
        0xa0t 0x6t 0x8t 0x1t
        0xa1t 0x6t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSearchDisabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isTarget:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCreationOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsRandomUnlock:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->keyguardWidgetBg:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->strKeyguardWidgetBg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadcalendar:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadcalendar:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    .locals 10
    .parameter "unlockWidget"

    .prologue
    .line 1021
    instance-of v6, p1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 1022
    check-cast v3, Lcom/android/internal/widget/SlidingTab;

    .line 1023
    .local v3, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 1024
    const v6, 0x1040327

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 1025
    const v6, 0x10802d5

    const v7, 0x10803a8

    const v8, 0x1080389

    const v9, 0x108039c

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 1030
    new-instance v2, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/SlidingTab;)V

    .line 1031
    .local v2, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 1042
    .end local v2           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;
    .end local v3           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    return-object v2

    .line 1033
    :cond_0
    instance-of v6, p1, Lcom/android/internal/widget/WaveView;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 1034
    check-cast v4, Lcom/android/internal/widget/WaveView;

    .line 1035
    .local v4, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/WaveView;)V

    .line 1036
    .local v5, waveViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    move-object v2, v5

    .line 1037
    goto :goto_0

    .line 1038
    .end local v4           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v5           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;
    :cond_1
    instance-of v6, p1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 1039
    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 1040
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 1041
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    move-object v2, v1

    .line 1042
    goto :goto_0

    .line 1044
    .end local v0           #glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .end local v1           #glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized unlock widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1287
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 903
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenInfoManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$1;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    return-void
.end method

.method private sendBroadcastToChangeStatusBar(Z)V
    .locals 2
    .parameter "isShowing"

    .prologue
    .line 1518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "yulong.intent.action.Lockscreen.CHANGE_STATUSBAR_ALPHA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, intentToStatusBar:Landroid/content/Intent;
    const-string v1, "isLockScreenDialogShowing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1520
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1523
    :cond_0
    return-void
.end method

.method private setAudio(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1232
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1233
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1247
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1256
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1262
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1264
    :cond_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1250
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1251
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1252
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 1253
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1257
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1258
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 1259
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 1260
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setButtonOnClickListener(Landroid/widget/Button;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 1075
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenInfoManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$2;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 930
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 931
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 932
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 933
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

.method private toggleRingMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 912
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    .line 913
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mHasVibrator:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 920
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 912
    goto :goto_0

    :cond_1
    move v1, v2

    .line 914
    goto :goto_1

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->cleanUp()V

    .line 1108
    return-void
.end method

.method public dispatchOntouchEvent(I)V
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goDistanceUnLockScreen(I)V

    .line 1113
    :cond_0
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichHandle"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goTargetUnLockScreen(I)V

    .line 900
    :cond_0
    return-void
.end method

.method public getLockScreenSurfaceData()Lcom/android/internal/policy/impl/LockScreenDataInfo;
    .locals 1

    .prologue
    .line 1093
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    .line 1291
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1294
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mNaturalBarHeight:I

    .line 1298
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".......................................mNaturalBarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mNaturalBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mNaturalBarHeight:I

    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->onPause()V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 1101
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 1105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1119
    const-wide/16 v1, 0x0

    .line 1120
    .local v1, mdistance:D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1121
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1122
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1123
    .local v4, y:F
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_0

    .line 1124
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1126
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 1127
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1228
    :cond_1
    :goto_0
    return v9

    .line 1131
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    if-eqz v5, :cond_3

    .line 1132
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eq v5, v9, :cond_1

    .line 1143
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsRandomUnlock:Z

    if-nez v5, :cond_4

    .line 1144
    if-eqz v0, :cond_1

    .line 1146
    if-ne v0, v9, :cond_1

    goto :goto_0

    .line 1151
    :cond_4
    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsShowing:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsHidden:Z

    if-eqz v5, :cond_6

    .line 1152
    :cond_5
    const-string v5, "LockScreenInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can ontouch KeyguardViewMediator.mIsShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KeyguardViewMediator.mIsHidden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsHidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    :cond_6
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1158
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    .line 1163
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xDown:F

    .line 1164
    iput v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yDown:F

    goto :goto_0

    .line 1167
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    if-nez v5, :cond_8

    .line 1168
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ismove:Z

    if-eqz v5, :cond_7

    .line 1170
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->sendBroadCastStatuBar(Z)V

    .line 1171
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ismove:Z

    .line 1172
    const-string v5, "LockScreenInfoManager"

    const-string v6, "lockscreen move to sendBroadCastToStatuBar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xDown:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xOffset:I

    .line 1175
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yDown:F

    sub-float v5, v4, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yOffset:I

    .line 1176
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xOffset:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    .line 1177
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yOffset:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->invalidate()V

    .line 1179
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    iget v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    iget v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 1180
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->r_lockscreen:F

    float-to-double v5, v5

    cmpl-double v5, v1, v5

    if-ltz v5, :cond_1

    .line 1181
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    if-eqz v5, :cond_1

    .line 1182
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockScreen;->setIsHideStatuBar(Z)V

    .line 1183
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->sendBroadCastStatuBar(Z)V

    .line 1184
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1185
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    goto/16 :goto_0

    .line 1193
    :cond_8
    :pswitch_2
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    iget v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    iget v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 1194
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->r_lockscreen:F

    float-to-double v5, v5

    cmpl-double v5, v1, v5

    if-ltz v5, :cond_9

    .line 1195
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    if-eqz v5, :cond_9

    .line 1196
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockScreen;->setIsHideStatuBar(Z)V

    .line 1197
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v5, v9}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->sendBroadCastStatuBar(Z)V

    .line 1198
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1199
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isOntouchUnlock:Z

    .line 1202
    :cond_9
    const-string v5, "LockScreenInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->r_lockscreen:F

    float-to-double v5, v5

    cmpg-double v5, v1, v5

    if-gez v5, :cond_1

    .line 1205
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->sendBroadCastStatuBar(Z)V

    .line 1206
    const-string v5, "LockScreenInfoManager"

    const-string v6, "lockscreen up to sendBroadCastToStatuBar(false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ismove:Z

    .line 1208
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    .line 1209
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    .line 1210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->invalidate()V

    .line 1211
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xOffset:I

    .line 1212
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yOffset:I

    goto/16 :goto_0

    .line 1217
    :pswitch_3
    const-string v5, "LockScreenInfoManager"

    const-string v6, "lockscreen cancel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollX:I

    .line 1219
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mScrollY:I

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->invalidate()V

    .line 1221
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->xOffset:I

    .line 1222
    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->yOffset:I

    goto/16 :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyguardBitmap()V
    .locals 7

    .prologue
    .line 1267
    const v4, 0x10202a8

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGridLayout:Landroid/widget/GridLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGridLayout:Landroid/widget/GridLayout;

    if-eqz v4, :cond_1

    .line 1273
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const-string v5, "wallpaper"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 1274
    .local v2, mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getKeyguardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1276
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1277
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108060b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->getStatusBarHeight()I

    move-result v3

    .line 1281
    .local v3, ptod:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mGridLayout:Landroid/widget/GridLayout;

    new-instance v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenFastBitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v3, v6}, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;ILcom/android/internal/policy/impl/LockScreenInfoManager$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #mWallpaperManager:Landroid/app/WallpaperManager;
    .end local v3           #ptod:I
    :cond_1
    return-void

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnSurfaceTouchListener(Lcom/android/internal/policy/impl/LockScreenStatusInfo;)V
    .locals 2
    .parameter "onSurfaceTouchListener"

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setOnSurfaceTouchListener(Lcom/android/internal/policy/impl/LockScreenStatusInfo;)V

    .line 1090
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1401
    const v7, 0x1020384

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    .line 1402
    const v7, 0x1020376

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1403
    .local v0, dialogScreenView:Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x1020377

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1404
    .local v2, listView:Landroid/widget/ListView;
    new-instance v7, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1406
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x1020379

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1407
    .local v4, positiveButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x102037a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1409
    .local v3, negativeButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x10203ba

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 1410
    .local v1, keyguardDialogRadioGroup:Landroid/widget/RadioGroup;
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x10203b5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;

    .line 1411
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    const v8, 0x10203b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;

    .line 1412
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const-string v8, "survey"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1413
    .local v6, storeWhichBgPreferences:Landroid/content/SharedPreferences;
    const-string v7, "whichBg"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    .line 1414
    new-instance v7, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    iget v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;I)V

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1416
    if-eqz v0, :cond_0

    .line 1417
    new-instance v7, Lcom/android/internal/policy/impl/LockScreenInfoManager$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$4;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1426
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 1427
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 1429
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 1430
    .local v5, statusManager:Landroid/app/StatusBarManager;
    if-eqz v5, :cond_1

    .line 1431
    const/high16 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1442
    .end local v5           #statusManager:Landroid/app/StatusBarManager;
    :cond_1
    new-instance v7, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    new-instance v7, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1493
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;

    new-instance v8, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1515
    :cond_2
    return-void
.end method

.method public showMultiChoiceDialog()V
    .locals 12

    .prologue
    .line 1594
    const-string v8, "lockScreenInfoManager"

    const-string v9, "is run showMultiChoiceDialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const v0, 0x1070040

    .line 1599
    .local v0, choiceItemsId:I
    const v6, 0x1040547

    .line 1600
    .local v6, title:I
    const v7, 0x1040548

    .line 1601
    .local v7, widgetsApplyId:I
    const v1, 0x1040549

    .line 1604
    .local v1, dialogCancelId:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 1605
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;

    aget-object v10, v10, v2

    iget-object v11, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z

    aget-boolean v11, v11, v2

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    aput-boolean v9, v8, v2

    .line 1606
    const-string v8, "LockScreenInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isItemsChecked["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] in dialog="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    aget-boolean v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1609
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1610
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x10900da

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1611
    .local v5, settingBgView:Landroid/view/View;
    const v8, 0x10203ba

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 1612
    .local v4, keyguardDialogRadioGroup:Landroid/widget/RadioGroup;
    const v8, 0x10203b5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSetWidgetBgParentLayout:Landroid/widget/LinearLayout;

    .line 1613
    const v8, 0x10203b8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWidgetBgAlphaTv:Landroid/widget/TextView;

    .line 1615
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "whichBg"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    .line 1616
    new-instance v8, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;

    iget v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I

    invoke-direct {v8, p0, v5, v9}, Lcom/android/internal/policy/impl/LockScreenInfoManager$MyRadioGroupCheckChangedListener;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;I)V

    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1617
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    const v10, 0x10302fc

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z

    new-instance v10, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v8, v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/LockScreenInfoManager$8;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$8;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;

    .line 1654
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1655
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/internal/policy/impl/LockScreenInfoManager$11;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$11;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1668
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1686
    return-void
.end method

.method public updateTargets()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1048
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1050
    .local v1, disabledByAdmin:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v2

    .line 1051
    .local v2, disabledBySimState:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    const v8, 0x10802dd

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v0

    .line 1055
    .local v0, cameraTargetPresent:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    const v8, 0x1080294

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v4

    .line 1060
    .local v4, searchTargetPresent:Z
    :goto_1
    if-eqz v1, :cond_6

    .line 1061
    const-string v5, "LockScreenInfoManager"

    const-string v8, "Camera disabled by Device Policy"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_7

    move v3, v7

    .line 1066
    .local v3, searchActionAvailable:Z
    :goto_3
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_8

    :cond_1
    move v5, v7

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mCameraDisabled:Z

    .line 1067
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSearchDisabled:Z

    .line 1068
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 1069
    return-void

    .end local v0           #cameraTargetPresent:Z
    .end local v3           #searchActionAvailable:Z
    .end local v4           #searchTargetPresent:Z
    :cond_4
    move v0, v6

    .line 1051
    goto :goto_0

    .restart local v0       #cameraTargetPresent:Z
    :cond_5
    move v4, v6

    .line 1055
    goto :goto_1

    .line 1062
    .restart local v4       #searchTargetPresent:Z
    :cond_6
    if-eqz v2, :cond_0

    .line 1063
    const-string v5, "LockScreenInfoManager"

    const-string v8, "Camera disabled by Sim State"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v3, v6

    .line 1065
    goto :goto_3

    .restart local v3       #searchActionAvailable:Z
    :cond_8
    move v5, v6

    .line 1066
    goto :goto_4
.end method
