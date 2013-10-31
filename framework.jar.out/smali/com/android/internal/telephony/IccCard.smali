.class public abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$5;,
        Lcom/android/internal/telephony/IccCard$State;,
        Lcom/android/internal/telephony/IccCard$Subscription;,
        Lcom/android/internal/telephony/IccCard$SubscriptionData;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH_CHECK_CARD_COMPLETE:Ljava/lang/String; = "YULONG.INTENT.ACTION.CHECK_CARD_COMPLETE"

.field protected static final EVENT_CARD_ADDED:I = 0x21

.field protected static final EVENT_CARD_REMOVED:I = 0x20

.field protected static final EVENT_CHANGE_CARD_STATE:I = 0x15

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field protected static final EVENT_DELAY_REBOOT:I = 0x25

.field protected static final EVENT_DELAY_UPDATE_STATEPROP:I = 0x23

.field static final EVENT_DISABLE_DATA_CONNECTION_DONE:I = 0x12

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_STATUS_DONE_EX:I = 0x16

.field protected static final EVENT_GET_ICC_STATUS_RESET_DONE:I = 0x1c

.field static final EVENT_ICC_CHANGED:I = 0x13

.field protected static final EVENT_ICC_LOCKED_OR_ABSENT:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field protected static final EVENT_PHONEMODESERVICE_SUBSCRIPTION_ACTIVE:I = 0x18

.field protected static final EVENT_PHONEMODESERVICE_SUBSCRIPTION_DEACTIVE:I = 0x19

.field private static final EVENT_PINPUK_COUNT_GET_DONE:I = 0xc

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field protected static final EVENT_RILD_SOCKET_CONNECTED:I = 0x22

.field static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0xe

.field protected static final EVENT_SET_POWER_RESET_DONE:I = 0x1d

.field static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x11

.field static final EVENT_SET_UICC_DEACTIVE_SUBSCRIPTION_DONE:I = 0x14

.field protected static final EVENT_SET_UICC_RESET_DEACTIVE_SUBSCRIPTION_DONE:I = 0x1e

.field static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0xd

.field protected static final EVENT_SET_UICC_TIMEOUT_DEACTIVE_SUBSCRIPTION_DONE:I = 0x1b

.field protected static final EVENT_SUBSCRIPTION_READY:I = 0x17

.field static final EVENT_SUBSCRIPTION_SET_DONE:I = 0xf

.field protected static final EVENT_SUPPLY_PUK_COMPLETE_GET_FACILITY_LOCKED:I = 0x24

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_KEY_SUBSCRIPTION:Ljava/lang/String; = "phone_subscription"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_PERSENT:Ljava/lang/String; = "PERSENT"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_ICC_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final INTENT_VALUE_ICC_UNUSED:Ljava/lang/String; = "UNUSED"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "SIM NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"

.field static final NUM_SUBSCRIPTIONS:I = 0x2

.field public static final SUB_ACTIVATE:I = 0x0

.field public static final SUB_ACTIVATED:I = 0x4

.field public static final SUB_ACTIVATING:I = 0x2

.field public static final SUB_DEACTIVATE:I = 0x1

.field public static final SUB_DEACTIVATED:I = 0x5

.field public static final SUB_DEACTIVATING:I = 0x3

.field public static final SUB_INVALID:I = 0x6

.field private static dualcardcheckdone:Z

.field static geticccount:I

.field private static mResetDeactiveBackFlag:Z


# instance fields
.field private IsActive:I

.field IsfirstIn:Z

.field UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

.field defaultmode:I

.field isRegist:Z

.field private isgorc:I

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field mCdmacardready:Z

.field mCdmaneedActivecount:I

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field mGsmcardready:Z

.field mGsmneedActivecount:I

.field protected mHandler:Landroid/os/Handler;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccFdnEnabled:Z

.field private mIccPinLocked:Z

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDual:I

.field private mIsPersoSubStateInProcessOrReady:Z

.field mIstwocardandzero:Z

.field protected mLock:Ljava/lang/Object;

.field protected mLogTag:Ljava/lang/String;

.field private mLostCardslot:I

.field private mMode:I

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mOldValidCard:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mPinPukCount:I

.field private mPowerLevel:I

.field private mSetdualmodedone:Z

.field protected mState:Lcom/android/internal/telephony/IccCard$State;

.field mSubscription:I

.field private mValidCard:I

.field private mValidslot:I

.field private msubIndex:I

.field private pinstate:Z

.field private pm:Landroid/os/PowerManager;

.field public preRunMode:I

.field public rilresetDelayFlag:I

.field public rilresetFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/android/internal/telephony/IccCard;->geticccount:I

    .line 112
    sput-boolean v0, Lcom/android/internal/telephony/IccCard;->mResetDeactiveBackFlag:Z

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/IccCard;->dualcardcheckdone:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 425
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v3, "Icccard"

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 61
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 62
    iput-object v7, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 63
    iput-object v7, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 65
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 66
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 71
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 74
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLock:Ljava/lang/Object;

    .line 76
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 77
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    .line 78
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    .line 79
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    .line 80
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mOldValidCard:I

    .line 81
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mIsDual:I

    .line 82
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 83
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->IsActive:I

    .line 85
    iput-object v7, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 86
    iput-object v7, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 87
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 88
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 89
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIstwocardandzero:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->isRegist:Z

    .line 93
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    .line 95
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mSetdualmodedone:Z

    .line 96
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mSubscription:I

    .line 98
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->pinstate:Z

    .line 100
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mPowerLevel:I

    .line 102
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    .line 104
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    .line 106
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->rilresetFlag:I

    .line 108
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->preRunMode:I

    .line 110
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->rilresetDelayFlag:I

    .line 114
    new-instance v3, Lcom/android/internal/telephony/IccCard$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-object v7, p0, Lcom/android/internal/telephony/IccCard;->pm:Landroid/os/PowerManager;

    .line 2718
    new-instance v3, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 3516
    new-instance v3, Lcom/android/internal/telephony/IccCard$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/IccCard$4;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 427
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 428
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 429
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->pm:Landroid/os/PowerManager;

    .line 430
    const-string/jumbo v3, "persist.yulong.defaultmode"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/IccCard;->defaultmode:I

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    .line 432
    .local v2, phoneId:I
    invoke-static {v2}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v0

    .line 433
    .local v0, commType:I
    packed-switch v0, :pswitch_data_0

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_NO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 450
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 451
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    return-void

    .line 435
    .end local v1           #filter:Landroid/content/IntentFilter;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    goto :goto_0

    .line 438
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    goto :goto_0

    .line 441
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_W"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    goto :goto_0

    .line 444
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->IsActive:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/IccCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->IsActive:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/internal/telephony/IccCard;->mResetDeactiveBackFlag:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/internal/telephony/IccCard;->mResetDeactiveBackFlag:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/IccCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->mPowerLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/IccCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->mPinPukCount:I

    return p1
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;I)V
    .locals 4
    .parameter "ar"
    .parameter "control"

    .prologue
    const/4 v3, 0x1

    .line 779
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "(UiccCardStatusResponse)ar.result == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 789
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto :goto_0

    .line 791
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto :goto_0

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/UiccCardStatusResponse;I)V

    goto :goto_0

    .line 803
    :cond_4
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/UiccCardStatusResponse;)V

    goto :goto_0
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/UiccCardStatusResponse;)V
    .locals 13
    .parameter "newCardStatus"

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, iccCardStatusTem:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v5, -0x2

    .line 819
    .local v5, returnvalue:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 821
    .local v4, oldState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v9, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v9

    if-nez v9, :cond_3

    .line 822
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "CP_COMM: handleIccCardStatus sec g  null "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 824
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 825
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 826
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 827
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v9

    if-nez v9, :cond_1

    .line 828
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 843
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 901
    :goto_1
    return-void

    .line 832
    :cond_1
    if-eqz v4, :cond_0

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_0

    .line 833
    iget-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "handleIccCardStatus Notify SIM missing when numapp == 0."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2
    const-string v9, "1"

    const-string/jumbo v10, "yulong.is.switching.slot"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 836
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 837
    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_3
    const-string v9, "handleIccCardStatus newCardStatus "

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 847
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "CP_COMM: handleIccCardStatus sec g  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 849
    new-instance v9, Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct {v9}, Lcom/android/internal/telephony/UiccCardStatusResponse;-><init>()V

    iput-object v9, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 850
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v9, :cond_4

    .line 851
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-virtual {v9, p1}, Lcom/android/internal/telephony/UiccCardStatusResponse;->copyFrom(Lcom/android/internal/telephony/UiccCardStatusResponse;)Lcom/android/internal/telephony/UiccCardStatusResponse;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 853
    :cond_4
    iget-object v9, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    array-length v9, v9

    if-lez v9, :cond_5

    iget-object v9, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v9

    if-lez v9, :cond_5

    .line 854
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    .line 855
    iget-object v9, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mIsDual:I

    .line 856
    new-instance v9, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v10, p1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v9, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 857
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v9

    if-nez v9, :cond_5

    .line 858
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v5

    .line 861
    :cond_5
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 862
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 863
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 864
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 865
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 866
    .local v3, newState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter handleIccCardStatus, newState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 869
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_6

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v9, :cond_7

    :cond_6
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_b

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v9, :cond_b

    :cond_7
    const/4 v8, 0x1

    .line 871
    .local v8, transitionedIntoPinLocked:Z
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_c

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v9, :cond_c

    const/4 v6, 0x1

    .line 873
    .local v6, transitionedIntoAbsent:Z
    :goto_3
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v9, :cond_d

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v9, :cond_d

    iget-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    if-nez v9, :cond_d

    const/4 v7, 0x1

    .line 874
    .local v7, transitionedIntoNetworkLocked:Z
    :goto_4
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v9, :cond_e

    const/4 v2, 0x1

    .line 875
    .local v2, isIccCardRemoved:Z
    :goto_5
    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v9, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v1, 0x1

    .line 876
    .local v1, isIccCardAdded:Z
    :goto_6
    if-eqz v8, :cond_11

    .line 877
    iget-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v9, :cond_8

    .line 878
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "handleIccCardStatus Notify SIM pin or puk locked."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 880
    const-string v10, "LOCKED"

    sget-object v9, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v9, :cond_10

    const-string v9, "PIN"

    :goto_7
    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_9
    :goto_8
    if-eqz v2, :cond_15

    .line 895
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x20

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 900
    :cond_a
    :goto_9
    const-string v9, "PERSENT"

    const-string v10, "NO REASON"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 869
    .end local v1           #isIccCardAdded:Z
    .end local v2           #isIccCardRemoved:Z
    .end local v6           #transitionedIntoAbsent:Z
    .end local v7           #transitionedIntoNetworkLocked:Z
    .end local v8           #transitionedIntoPinLocked:Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    .line 871
    .restart local v8       #transitionedIntoPinLocked:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 873
    .restart local v6       #transitionedIntoAbsent:Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 874
    .restart local v7       #transitionedIntoNetworkLocked:Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 875
    .restart local v2       #isIccCardRemoved:Z
    :cond_f
    const/4 v1, 0x0

    goto :goto_6

    .line 880
    .restart local v1       #isIccCardAdded:Z
    :cond_10
    const-string v9, "PUK"

    goto :goto_7

    .line 882
    :cond_11
    if-eqz v6, :cond_13

    .line 883
    iget-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v9, :cond_12

    .line 884
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "handleIccCardStatus Notify SIM missing."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_12
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 886
    const-string v9, "ABSENT"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 887
    :cond_13
    if-eqz v7, :cond_9

    .line 888
    iget-boolean v9, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v9, :cond_14

    .line 889
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "handleIccCardStatus Notify SIM network locked."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_14
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 891
    const-string v9, "LOCKED"

    const-string v10, "SIM NETWORK"

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 896
    :cond_15
    if-eqz v1, :cond_a

    .line 897
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x21

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/UiccCardStatusResponse;I)V
    .locals 23
    .parameter "newCardStatus"
    .parameter "control"

    .prologue
    .line 910
    const/4 v4, 0x0

    .line 911
    .local v4, iccCardStatusTem:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v13, -0x2

    .line 912
    .local v13, returnvalue:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 913
    .local v11, oldState:Lcom/android/internal/telephony/IccCard$State;
    const-string v19, "handleIccCardStatus newCardStatus "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus control =  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "mCdmacardready:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "mGsmcardready:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 917
    new-instance v19, Lcom/android/internal/telephony/UiccCardStatusResponse;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCardStatusResponse;->copyFrom(Lcom/android/internal/telephony/UiccCardStatusResponse;)Lcom/android/internal/telephony/UiccCardStatusResponse;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 923
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    if-lez v19, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    if-lez v19, :cond_f

    .line 925
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " two cards  set cardinfo PHONE_TYPE_CDMA newCardStatus.cards.length == 2 slot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v19, 0x1c

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "CP_COMM: handleIccCardStatus reset"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 931
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    const/16 v20, 0x1

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 932
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 933
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 935
    const-string/jumbo v19, "yulong.left.g.ismi"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, leftGImsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset leftGImsi = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofImsiBySlotId(ILjava/lang/String;I)V

    .line 938
    const-string/jumbo v19, "yulong.right.g.ismi"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 939
    .local v14, rightGImsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset rightGImsi = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofImsiBySlotId(ILjava/lang/String;I)V

    .line 941
    const-string/jumbo v19, "yulong.left.pin"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 942
    .local v7, leftPin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset leftPin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofPinBySlotId(ILjava/lang/String;)V

    .line 944
    const-string/jumbo v19, "yulong.right.pin"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 945
    .local v15, rightPin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset rightPin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v0, v15}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofPinBySlotId(ILjava/lang/String;)V

    .line 951
    .end local v6           #leftGImsi:Ljava/lang/String;
    .end local v7           #leftPin:Ljava/lang/String;
    .end local v14           #rightGImsi:Ljava/lang/String;
    .end local v15           #rightPin:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSlot()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 952
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    .line 1118
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mOldValidCard:I

    .line 1120
    const-string/jumbo v19, "persist.yulong.lostcard.reboot"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1121
    .local v8, lostcard:I
    const-string/jumbo v19, "yulong.radio.reset.count"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1122
    .local v9, mPhoneResetCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enter handleIccCardStatus lostcard:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mPhoneResetCount:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " IsfirstIn:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mValidCard:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mValidslot:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-lez v8, :cond_5

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1127
    const/4 v12, 0x0

    .line 1128
    .local v12, presentValidSlot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 1129
    const/4 v12, 0x3

    .line 1133
    :cond_3
    :goto_1
    and-int v19, v8, v12

    move/from16 v0, v19

    if-ge v0, v8, :cond_4

    .line 1134
    const-string v19, "ABSENT"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_4
    const-string/jumbo v19, "persist.yulong.lostcard.reboot"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    .end local v12           #presentValidSlot:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 1141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 1142
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "enter handleIccCardStatus the first time "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->processPendingActivateRequests()V

    .line 1155
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v10

    .line 1156
    .local v10, newState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enter handleIccCardStatus, newState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1159
    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_6

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-eq v10, v0, :cond_7

    :cond_6
    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_25

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_25

    :cond_7
    const/16 v18, 0x1

    .line 1162
    .local v18, transitionedIntoPinLocked:Z
    :goto_3
    if-eqz v11, :cond_26

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_26

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_26

    const/16 v16, 0x1

    .line 1164
    .local v16, transitionedIntoAbsent:Z
    :goto_4
    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_27

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_27

    const/16 v17, 0x1

    .line 1165
    .local v17, transitionedIntoNetworkLocked:Z
    :goto_5
    if-eqz v18, :cond_29

    .line 1166
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "handleIccCardStatus Notify SIM pin or puk locked."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1168
    const-string v20, "LOCKED"

    sget-object v19, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v19

    if-ne v10, v0, :cond_28

    const-string v19, "PIN"

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_9
    :goto_7
    const-string v19, "PERSENT"

    const-string v20, "NO REASON"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1183
    const-string/jumbo v19, "persist.sys.fastbootup.mode"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1185
    sget-boolean v19, Lcom/android/internal/telephony/IccCard;->dualcardcheckdone:Z

    if-eqz v19, :cond_b

    .line 1186
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/internal/telephony/IccCard;->dualcardcheckdone:Z

    .line 1187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "broadcase for checkcard finished"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_a
    new-instance v5, Landroid/content/Intent;

    const-string v19, "YULONG.INTENT.ACTION.CHECK_CARD_COMPLETE"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1194
    .end local v5           #intent:Landroid/content/Intent;
    :cond_b
    return-void

    .line 955
    .end local v8           #lostcard:I
    .end local v9           #mPhoneResetCount:I
    .end local v10           #newState:Lcom/android/internal/telephony/IccCard$State;
    .end local v16           #transitionedIntoAbsent:Z
    .end local v17           #transitionedIntoNetworkLocked:Z
    .end local v18           #transitionedIntoPinLocked:Z
    :cond_c
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    goto/16 :goto_0

    .line 961
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "two cards handleIccCardStatus set cardinfo PHONE_TYPE_GSM newCardStatus.cards.length == 2 slot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSlot()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 964
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    goto/16 :goto_0

    .line 967
    :cond_e
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    goto/16 :goto_0

    .line 973
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    if-gtz v19, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    if-gtz v19, :cond_11

    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 975
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    .line 976
    const/4 v3, 0x0

    .line 977
    .local v3, i:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    if-lez v19, :cond_16

    .line 978
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mIsDual:I

    .line 979
    const/4 v3, 0x0

    .line 984
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "one card handleIccCardStatus set cardinfo newCardStatus.cards.length == 1 slot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v21, v0

    aget-object v21, v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSlot()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getSlot()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mValidslot == 0 set slot 1 null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, -0x1

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 996
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 997
    const/16 v19, 0x1c

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "CP_COMM: handleIccCardStatus reset   "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v20, v0

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 1000
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1001
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 1004
    const-string/jumbo v19, "yulong.left.g.ismi"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1005
    .restart local v6       #leftGImsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset leftGImsi = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofImsiBySlotId(ILjava/lang/String;I)V

    .line 1007
    const-string/jumbo v19, "yulong.left.pin"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1008
    .restart local v7       #leftPin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset leftPin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofPinBySlotId(ILjava/lang/String;)V

    .line 1022
    .end local v6           #leftGImsi:Ljava/lang/String;
    .end local v7           #leftPin:Ljava/lang/String;
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1023
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v20, v0

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    .line 1034
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->defaultmode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1035
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mOldValidCard:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    if-nez v19, :cond_1a

    .line 1037
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    .line 1041
    :goto_c
    const-string/jumbo v19, "yulong.lostcard"

    const-string/jumbo v20, "true"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Lost card at slot: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1045
    const-string/jumbo v19, "persist.sys.fastbootup.mode"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1046
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1b

    .line 1048
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/32 v21, 0xc350

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 981
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mIsDual:I

    .line 982
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 991
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mValidslot == 1 set slot 0 null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    goto/16 :goto_9

    .line 1011
    :cond_18
    const-string/jumbo v19, "yulong.right.g.ismi"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1012
    .restart local v14       #rightGImsi:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset rightGImsi = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofImsiBySlotId(ILjava/lang/String;I)V

    .line 1014
    const-string/jumbo v19, "yulong.right.pin"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1015
    .restart local v15       #rightPin:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CP_COMM: handleIccCardStatus reset rightPin = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v0, v15}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoofPinBySlotId(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 1028
    .end local v14           #rightGImsi:Ljava/lang/String;
    .end local v15           #rightPin:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1030
    new-instance v19, Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    move-result v13

    goto/16 :goto_b

    .line 1039
    :cond_1a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    goto/16 :goto_c

    .line 1051
    :cond_1b
    const-string/jumbo v19, "persist.yulong.lostcard.reboot"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7d0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1067
    .end local v3           #i:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no card handleIccCardStatus   "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    .line 1069
    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I

    .line 1070
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->defaultmode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mOldValidCard:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    .line 1074
    const-string/jumbo v19, "yulong.lostcard"

    const-string/jumbo v20, "true"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Lost card at slot: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1078
    const-string/jumbo v19, "persist.sys.fastbootup.mode"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1079
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 1081
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/32 v21, 0xc350

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1084
    :cond_1e
    const-string/jumbo v19, "persist.yulong.lostcard.reboot"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mLostCardslot:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7d0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1094
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mOldValidCard:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1095
    const-string/jumbo v19, "yulong.lostcard"

    const-string/jumbo v20, "true"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Both of the cards are lost,and reboot immediately"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1099
    const-string/jumbo v19, "persist.sys.fastbootup.mode"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1100
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_21

    .line 1102
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/32 v21, 0xc350

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1105
    :cond_21
    const-string/jumbo v19, "persist.yulong.lostcard.reboot"

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x25

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x7d0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1130
    .restart local v8       #lostcard:I
    .restart local v9       #mPhoneResetCount:I
    .restart local v12       #presentValidSlot:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x1

    goto/16 :goto_1

    .line 1146
    .end local v12           #presentValidSlot:I
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/IccCard;->processPendingCardStatusRf(I)V

    goto/16 :goto_2

    .line 1149
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enter handleIccCardStatus the first dsdstype = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1151
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1152
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1153
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_2

    .line 1159
    .restart local v10       #newState:Lcom/android/internal/telephony/IccCard$State;
    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1162
    .restart local v18       #transitionedIntoPinLocked:Z
    :cond_26
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1164
    .restart local v16       #transitionedIntoAbsent:Z
    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1168
    .restart local v17       #transitionedIntoNetworkLocked:Z
    :cond_28
    const-string v19, "PUK"

    goto/16 :goto_6

    .line 1170
    :cond_29
    if-eqz v16, :cond_2b

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "handleIccCardStatus Notify SIM missing."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1173
    const-string v19, "ABSENT"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1174
    :cond_2b
    if-eqz v17, :cond_9

    .line 1175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "handleIccCardStatus Notify SIM network locked."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1177
    const-string v19, "LOCKED"

    const-string v20, "SIM NETWORK"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: [IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 3388
    const/4 v2, 0x0

    .line 3392
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$3;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$3;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 3404
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 3405
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x104041d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3407
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x104041e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3409
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x104041f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3410
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3413
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 3414
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3415
    return-void

    .line 3405
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x104041a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3407
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x104041b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 2667
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2668
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2669
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 2673
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 2674
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 2675
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2674
    goto :goto_1

    .line 2677
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "CP_COMM: [IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 2647
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2648
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_0
    :goto_0
    return-void

    .line 2652
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 2653
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 2654
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 2655
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2656
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2654
    goto :goto_1

    .line 2658
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "CP_COMM: [IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 2682
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_0

    .line 2683
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2686
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2688
    const-string/jumbo v2, "phoneName"

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2689
    const-string/jumbo v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2690
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2691
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v2, :cond_1

    .line 2692
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2696
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v1, intentDual:Landroid/content/Intent;
    const-string/jumbo v2, "phoneName"

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2698
    const-string/jumbo v2, "ss"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2699
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    const-string/jumbo v2, "phoneIdKey"

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2701
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2702
    return-void
.end method

.method public broadcastPhoneRestToUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2706
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->setRilresetFlag(I)V

    .line 2707
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->setRilresetFlag(I)V

    .line 2709
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->removeMessages(I)V

    .line 2710
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2711
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "Broadcasting intent ACTION_PHONE_RESET "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2714
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "batteryInOrOut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2715
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2716
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 730
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 731
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Pin2 old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 743
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 736
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Pin2 old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 741
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern changeIccFdnPassword  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 704
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 705
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Pin1 old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 716
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 709
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Pin1 old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 714
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern changeIccLockPassword  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract dispose()V
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "CP_COMM: IccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    return-void
.end method

.method public getCheckCardState()Z
    .locals 3

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2619
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckCardState mCdmacardready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 2625
    :goto_0
    return v0

    .line 2623
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_2

    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCheckCardState mGsmcardready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto :goto_0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 6

    .prologue
    .line 3296
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_0

    .line 3297
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 3369
    :goto_0
    return-object v3

    .line 3301
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3302
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: [IccCard] IccCardStatus isCardPresent() FALSE  =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 3305
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: [IccCard] IccCardStatus is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 3307
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter getIccCardState()."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_3

    .line 3315
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  NOT_READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3318
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_e

    .line 3324
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_6

    .line 3326
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 3330
    .local v2, index:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getIccCardState subscription_app_index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 3332
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_7

    .line 3333
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] Subscription Application in not present"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3328
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    .restart local v2       #index:I
    goto :goto_1

    .line 3339
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_7
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$AppState;->isPinRequired()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3340
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  PIN_REQUIRED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3343
    :cond_8
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$AppState;->isPukRequired()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3344
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  PUK_REQUIRED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3347
    :cond_9
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$AppState;->isSubscriptionPersoEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3349
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->isPersoSubStateRuimInProcessOrReady()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3350
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    .line 3354
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: [IccCard] IccCardStatus is  NETWORK_LOCKED mIsPersoSubStateInProcessOrReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3352
    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsPersoSubStateInProcessOrReady:Z

    goto :goto_2

    .line 3357
    :cond_b
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$AppState;->isAppReady()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3358
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3361
    :cond_c
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccConstants$AppState;->isAppNotReady()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3362
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  NOT_READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3365
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  NOT_READY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 3368
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "CP_COMM: [IccCard] IccCardStatus is  ABSENT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "getIccFdnEnabled return fase for cdma"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccLockEnabled mIccPinLocked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getPreRunMode()I
    .locals 1

    .prologue
    .line 3591
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->preRunMode:I

    return v0
.end method

.method public getRilresetFlag()I
    .locals 1

    .prologue
    .line 3456
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->rilresetFlag:I

    return v0
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 3

    .prologue
    .line 375
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Lcom/android/internal/telephony/IccCard$5;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "CP_COMM: IccCard.getState(): case should never be reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_1
    return-object v0

    .line 384
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: IccCard.getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/android/internal/telephony/IccCard$5;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 408
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 412
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 416
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 418
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 399
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSubIndex()I
    .locals 1

    .prologue
    .line 2519
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    return v0
.end method

.method public getcardinfo()V
    .locals 4

    .prologue
    .line 2630
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getcardinfo mCdmacardready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2633
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "getcardinfo ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2640
    :cond_2
    return-void
.end method

.method public getphonemode()I
    .locals 4

    .prologue
    .line 2585
    const-string/jumbo v1, "yulong.radio.work.mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2586
    .local v0, phonemode:I
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2587
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getphonemode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_0
    return v0
.end method

.method public getpinstate()Z
    .locals 1

    .prologue
    .line 2523
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->pinstate:Z

    return v0
.end method

.method public getrunmode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2606
    const/4 v0, 0x0

    .line 2607
    .local v0, runmode:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2608
    const-string/jumbo v1, "yulong.c.run.state"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2612
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getrunmode runmode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_0
    return v0

    .line 2610
    :cond_1
    const-string/jumbo v1, "yulong.g.run.state"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$CardState;->isCardPresent()Z

    move-result v0

    .line 3426
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccConstants$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 3373
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 3380
    :cond_0
    :goto_0
    return v2

    .line 3374
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3375
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 3376
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne v3, p1, :cond_2

    .line 3377
    const/4 v2, 0x1

    goto :goto_0

    .line 3374
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public phonereset()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2538
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 2539
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phonereset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 2541
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    .line 2542
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 2543
    sput v6, Lcom/android/internal/telephony/IccCard;->geticccount:I

    .line 2544
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    .line 2556
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->registerForSubActiveOrDeactiveall()V

    .line 2574
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2575
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 2576
    return-void

    .line 2546
    .end local v0           #callback:Landroid/os/Message;
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_2

    .line 2547
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phonereset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 2549
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 2550
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->IsfirstIn:Z

    .line 2551
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 2552
    sput v6, Lcom/android/internal/telephony/IccCard;->geticccount:I

    .line 2553
    iput v5, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    .line 2554
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_0
.end method

.method public processActivateRequestsbyPhone(Landroid/os/Message;II)I
    .locals 8
    .parameter "onComplete"
    .parameter "subStatus"
    .parameter "mode"

    .prologue
    .line 1855
    new-instance v0, Lcom/android/internal/telephony/IccCard$Subscription;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$Subscription;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1856
    .local v0, ActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 1857
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v2

    .line 1858
    .local v2, oldslot:I
    const/4 v4, 0x1

    .line 1859
    .local v4, subNum:I
    const/4 v1, -0x1

    .line 1860
    .local v1, cardindex:I
    const/4 v3, 0x0

    .line 1861
    .local v3, ret:Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 1862
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_1

    .line 1863
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const/4 v5, -0x1

    .line 2197
    :goto_0
    return v5

    .line 1866
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 1867
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processActivateRequestsbyPhone mode =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_7

    const/4 v5, 0x1

    if-ne p3, v5, :cond_7

    .line 1869
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1870
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 1871
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1872
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1873
    const/4 v3, 0x1

    .line 1911
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v1

    .line 1912
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 1913
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1916
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 1917
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 1918
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 1919
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 1921
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 1922
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " gsm processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 1978
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setphonemode(I)V

    .line 1979
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_15

    .line 1988
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_14

    .line 1989
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 1990
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    .line 1998
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 1999
    const/4 v3, 0x1

    if-eqz v3, :cond_3

    .line 2000
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2002
    :cond_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1875
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1879
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    .line 1880
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1881
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1882
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1884
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1890
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_2

    if-nez p3, :cond_2

    .line 1891
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 1892
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_8

    .line 1893
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1894
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1895
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1897
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1901
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_a

    .line 1902
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1903
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1904
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1906
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1923
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1925
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 1926
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 1927
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 1928
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 1929
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 1930
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1933
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " cdma processPendingActivateRequests no 3GPP2 application "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    .line 1935
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_e

    .line 1936
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1940
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1942
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1938
    :cond_e
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_4

    .line 1947
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1949
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 1950
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 1951
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 1952
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 1953
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 1954
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1955
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1957
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 1958
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 1959
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 1960
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 1961
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 1962
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm processPendingActivateRequests  ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1964
    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " gsm processPendingActivateRequests no 3GPPapplication"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    .line 1966
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_13

    .line 1967
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1971
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1973
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1969
    :cond_13
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_5

    .line 1995
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 1996
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    goto/16 :goto_3

    .line 2004
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2005
    :cond_16
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2a

    .line 2006
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_17

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_18

    .line 2007
    :cond_17
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2010
    :cond_18
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 2011
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processActivateRequestsbyPhone mode =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_1e

    const/4 v5, 0x1

    if-ne p3, v5, :cond_1e

    .line 2013
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    .line 2014
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_1b

    .line 2015
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2016
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2017
    const/4 v3, 0x1

    .line 2053
    :cond_19
    :goto_6
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v1

    .line 2054
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2057
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2058
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2059
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2060
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2061
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 2063
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2068
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :goto_8
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " gsm processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 2097
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setphonemode(I)V

    .line 2098
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_29

    .line 2107
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_28

    .line 2108
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2109
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    .line 2117
    :goto_9
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 2118
    const/4 v3, 0x1

    if-eqz v3, :cond_1a

    .line 2119
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2121
    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2019
    :cond_1b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2023
    :cond_1c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_1d

    .line 2024
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2025
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2026
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 2028
    :cond_1d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2032
    :cond_1e
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_19

    if-nez p3, :cond_19

    .line 2033
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 2034
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_1f

    .line 2035
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2036
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2037
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 2039
    :cond_1f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2043
    :cond_20
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_21

    .line 2044
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2045
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2046
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 2048
    :cond_21
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2066
    :cond_22
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    goto/16 :goto_7

    .line 2069
    :cond_23
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2071
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2072
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2073
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2074
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2075
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    .line 2077
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2081
    :goto_a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2079
    :cond_24
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    goto :goto_a

    .line 2084
    :cond_25
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " cdma processPendingActivateRequests no 3GPP2 application "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const/4 v5, 0x1

    if-ne v3, v5, :cond_26

    .line 2086
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_27

    .line 2087
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2091
    :goto_b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2093
    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2089
    :cond_27
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_b

    .line 2114
    :cond_28
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2115
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    goto/16 :goto_9

    .line 2123
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2125
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_2b

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_2c

    .line 2126
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2129
    :cond_2c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 2130
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processActivateRequestsbyPhone mode =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v1

    .line 2132
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2135
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2136
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2137
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2138
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2139
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 2141
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2146
    :goto_c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :goto_d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " gsm processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 2174
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setphonemode(I)V

    .line 2175
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    .line 2184
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_34

    .line 2185
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2186
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    .line 2191
    :goto_e
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 2192
    const/4 v3, 0x1

    if-eqz v3, :cond_2d

    .line 2193
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2195
    :cond_2d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2144
    :cond_2e
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    goto :goto_c

    .line 2147
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2149
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2150
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2151
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2152
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2153
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 2154
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2158
    :goto_f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdma processPendingActivateRequests ActiveselsetSub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2156
    :cond_30
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    goto :goto_f

    .line 2161
    :cond_31
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " cdma processPendingActivateRequests no 3GPP2 application "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/4 v5, 0x1

    if-ne v3, v5, :cond_32

    .line 2163
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_33

    .line 2164
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2168
    :goto_10
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2170
    :cond_32
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2166
    :cond_33
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_10

    .line 2188
    :cond_34
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2189
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccCard;->setrunmode(I)V

    goto/16 :goto_e

    .line 2197
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public processActivateRequestsbyPhonepri(Landroid/os/Message;II)I
    .locals 8
    .parameter "onComplete"
    .parameter "subStatus"
    .parameter "mode"

    .prologue
    .line 2202
    new-instance v0, Lcom/android/internal/telephony/IccCard$Subscription;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$Subscription;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 2203
    .local v0, ActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2204
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v2

    .line 2205
    .local v2, oldslot:I
    const/4 v4, 0x1

    .line 2206
    .local v4, subNum:I
    const/4 v1, -0x1

    .line 2207
    .local v1, cardindex:I
    const/4 v3, 0x0

    .line 2208
    .local v3, ret:Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 2209
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_1

    .line 2210
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v5, -0x1

    .line 2513
    :goto_0
    return v5

    .line 2213
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 2214
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri processActivateRequestsbyPhone mode =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_8

    const/4 v5, 0x1

    if-ne p3, v5, :cond_8

    .line 2216
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 2217
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    .line 2218
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2219
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2220
    const/4 v3, 0x1

    .line 2258
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v1

    .line 2259
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 2260
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2263
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2264
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2265
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2266
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2268
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2269
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri  processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 2326
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_17

    .line 2327
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 2328
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_15

    .line 2329
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 2330
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active gsm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_3
    :goto_3
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_16

    .line 2336
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2340
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 2341
    const/4 v3, 0x1

    if-eqz v3, :cond_4

    .line 2342
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2344
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri processPendingActivateRequests mGsmneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCdmaneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2222
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2226
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_7

    .line 2227
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2228
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2229
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2231
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2236
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-eq p3, v5, :cond_2

    if-nez p3, :cond_2

    .line 2237
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 2238
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_9

    .line 2239
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2240
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2241
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2243
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2247
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_b

    .line 2248
    iput p3, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2249
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2250
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2252
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone mIccCardStatus = null  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2270
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2272
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2273
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2274
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2275
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2277
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2278
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests ActiveselsetSub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2281
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri cdma processPendingActivateRequests no 3GPP2 application "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/4 v5, 0x1

    if-ne v3, v5, :cond_e

    .line 2283
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_f

    .line 2284
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2288
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2290
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2286
    :cond_f
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_5

    .line 2295
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2297
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2298
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2299
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2300
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2301
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2302
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri gsm processPendingActivateRequests ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2303
    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2305
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2306
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2307
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2308
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2309
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2310
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri gsm processPendingActivateRequests  ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2312
    :cond_12
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri gsm processPendingActivateRequests no 3GPPapplication"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const/4 v5, 0x1

    if-ne v3, v5, :cond_13

    .line 2314
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v5, :cond_14

    .line 2315
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 2319
    :goto_6
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2321
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2317
    :cond_14
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    goto :goto_6

    .line 2331
    :cond_15
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    if-nez v5, :cond_3

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_3

    .line 2332
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 2333
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active cdma"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2338
    :cond_16
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    goto/16 :goto_4

    .line 2347
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2349
    :cond_18
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v5

    if-nez v5, :cond_26

    .line 2350
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_19

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_1a

    .line 2351
    :cond_19
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2354
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 2355
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri processActivateRequestsbyPhone   DSDSTYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 2357
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone in not phoneid 1 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2360
    :cond_1b
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    .line 2362
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2363
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2364
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2365
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2366
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2367
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIstwocardandzero:Z

    .line 2368
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 11 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri  processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 2420
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    .line 2421
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 2422
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_23

    .line 2423
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 2424
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active gsm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_1c
    :goto_8
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_24

    .line 2430
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2434
    :goto_9
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 2435
    const/4 v3, 0x1

    if-eqz v3, :cond_1d

    .line 2436
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2438
    :cond_1d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri processPendingActivateRequests mGsmneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCdmaneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2370
    :cond_1e
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1f

    .line 2371
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 2372
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2373
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 55 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2375
    :cond_1f
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIstwocardandzero:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 2377
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2378
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2379
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2381
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2382
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2384
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2385
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 22 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2387
    :cond_20
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2391
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2392
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2393
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2395
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2396
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2398
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2399
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 33 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2400
    :cond_21
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2404
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2405
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2406
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2408
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2409
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2410
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2411
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 44 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2413
    :cond_22
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri cdma processPendingActivateRequests 55 errr "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2425
    :cond_23
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    if-nez v5, :cond_1c

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_1c

    .line 2426
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 2427
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active cdma"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2432
    :cond_24
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    goto/16 :goto_9

    .line 2441
    :cond_25
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri processPendingActivateRequests ActiveselsetSub.slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2445
    :cond_26
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v5, :cond_27

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-nez v5, :cond_28

    .line 2446
    :cond_27
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri processActivateRequestsbyPhone UiccCardStatusResponseDate == NULL "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2449
    :cond_28
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    const-string/jumbo v6, "processActivateRequestsbyPhone"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse;->printf(Ljava/lang/String;)V

    .line 2450
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri processActivateRequestsbyPhone   DSDSTYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2b

    .line 2452
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 2453
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2454
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 55 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :goto_a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri  processPendingActivateRequests setSlotConnectMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-static {v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSlotConnectMode(I)V

    .line 2490
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_30

    .line 2491
    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    .line 2492
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_2e

    .line 2493
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 2494
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active gsm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_29
    :goto_b
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_2f

    .line 2500
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneSlot()I

    move-result v7

    aget-object v6, v6, v7

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    .line 2504
    :goto_c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(Lcom/android/internal/telephony/IccCard$Subscription;Landroid/os/Message;)V

    .line 2505
    const/4 v3, 0x1

    if-eqz v3, :cond_2a

    .line 2506
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v6, v6, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 2508
    :cond_2a
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri processPendingActivateRequests mGsmneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCdmaneedActivecount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2456
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 2461
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2462
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2463
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2465
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2466
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2468
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2469
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 33 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2470
    :cond_2c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v5, v5, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2d

    .line 2475
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    .line 2476
    iput p2, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    .line 2477
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    .line 2479
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 2480
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->msubIndex:I

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    .line 2482
    const/4 v5, 0x1

    iput v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    .line 2483
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pri cdma processPendingActivateRequests 44 ActiveselsetSub = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$Subscription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2485
    :cond_2d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "pri cdma processPendingActivateRequests 55 errr "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2495
    :cond_2e
    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subNum:I

    if-nez v5, :cond_29

    iget v5, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-nez v5, :cond_29

    .line 2496
    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 2497
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, " pri  processPendingActivateRequests  active cdma"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2502
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->subIndex:I

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneSub(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;I)V

    goto/16 :goto_c

    .line 2511
    :cond_30
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pri processPendingActivateRequests ActiveselsetSub.slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/telephony/IccCard$Subscription;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public processChangedPhoneMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1822
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processChangedPhoneMode mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget v0, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    if-nez v0, :cond_2

    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "processChangedPhoneMode  cdma "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1829
    new-instance v0, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v1, v1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "processChangedPhoneMode  gsm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1835
    new-instance v0, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v1, v1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    goto :goto_0

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "processChangedPhoneMode  cdma "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1843
    new-instance v0, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v1, v1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    goto :goto_0

    .line 1844
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "processChangedPhoneMode  gsm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneBase;->setPhoneSlot(I)V

    .line 1849
    new-instance v0, Lcom/android/internal/telephony/IccCardStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v1, v1, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCardStatus;-><init>(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    goto/16 :goto_0
.end method

.method processPendingActivateRequests()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1197
    const/4 v3, 0x0

    .line 1198
    .local v3, mode:I
    const/4 v1, 0x0

    .line 1199
    .local v1, flag:I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v4

    if-ne v4, v6, :cond_19

    .line 1200
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v6, :cond_e

    .line 1202
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 1203
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1206
    const/4 v3, 0x1

    .line 1207
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1208
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1209
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1210
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2

    .line 1214
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests one valid card mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests  mgsmneedcount =   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaneedActivecount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mCdmacardready ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mGsmcardready = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1368
    .local v0, callback:Landroid/os/Message;
    invoke-virtual {p0, v0, v7, v3}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhonepri(Landroid/os/Message;II)I

    goto :goto_0

    .line 1216
    .end local v0           #callback:Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1219
    const/4 v3, 0x1

    .line 1220
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1221
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1222
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1223
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 1226
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2

    .line 1227
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests one valid card mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1228
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1229
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1230
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1231
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1232
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2

    .line 1233
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests one valid card mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1235
    :cond_5
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1236
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1237
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1238
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2

    .line 1239
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests one valid card mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1245
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    if-nez v4, :cond_a

    .line 1246
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_7

    .line 1247
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests first g "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 1249
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1250
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1253
    :cond_8
    const/4 v1, 0x1

    .line 1254
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-nez v4, :cond_9

    .line 1255
    const/4 v3, 0x1

    .line 1256
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1257
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1258
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1288
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2

    .line 1289
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests one valid and dual card mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1260
    :cond_9
    const/4 v3, 0x0

    .line 1261
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1262
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1263
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto :goto_2

    .line 1266
    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_b

    .line 1267
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests first c "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_c

    .line 1269
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1270
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1271
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1274
    :cond_c
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-ne v4, v6, :cond_d

    .line 1275
    const/4 v3, 0x1

    .line 1276
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1277
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1278
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1279
    iput-boolean v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto :goto_2

    .line 1281
    :cond_d
    const/4 v3, 0x0

    .line 1282
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1283
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1284
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1285
    iput-boolean v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto :goto_2

    .line 1291
    :cond_e
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v8, :cond_18

    .line 1292
    const/4 v2, -0x1

    .line 1293
    .local v2, index:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_11

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_11

    .line 1295
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1296
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1297
    const/4 v2, 0x0

    .line 1334
    :cond_f
    :goto_3
    const/4 v4, -0x1

    if-le v2, v4, :cond_2

    .line 1335
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    if-eqz v4, :cond_16

    if-ne v2, v6, :cond_16

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1338
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_10

    .line 1339
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1298
    :cond_11
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_12

    .line 1300
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1301
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1302
    const/4 v2, 0x1

    goto :goto_3

    .line 1303
    :cond_12
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_14

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_14

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1307
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1308
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1309
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1310
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_13

    .line 1311
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_f

    .line 1312
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two sim need gsm active "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1314
    :cond_13
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_0

    .line 1315
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two sim  cdmaphone don\'t handle "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1318
    :cond_14
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1322
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1323
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1324
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1325
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_15

    .line 1326
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_f

    .line 1327
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two ruim need cdma active "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1329
    :cond_15
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_0

    .line 1330
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two ruim  gsmphone don\'t handle "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1342
    :cond_16
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1345
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_17

    .line 1346
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests mMode changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1351
    .end local v2           #index:I
    :cond_18
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1352
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1359
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests  fly mode  no card  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1370
    :cond_19
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v4

    if-nez v4, :cond_35

    .line 1371
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v6, :cond_21

    .line 1373
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_1d

    .line 1374
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1375
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v8, :cond_1f

    .line 1376
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one valid card mMode PHONE_PROP_QC_G "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_1a
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1378
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1379
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1380
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1384
    :cond_1b
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_1c

    .line 1385
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one invalid card is cdma card "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_1c
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1387
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1388
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1389
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1395
    :cond_1d
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1397
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_1e

    .line 1398
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one invalid card is cdma card "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_1e
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1400
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1401
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1402
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1406
    :cond_1f
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1407
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1408
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1624
    :cond_20
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPendingActivateRequests  mgsmneedcount =   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaneedActivecount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mCdmacardready ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mGsmcardready = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1629
    .restart local v0       #callback:Landroid/os/Message;
    invoke-virtual {p0, v0, v7, v3}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhonepri(Landroid/os/Message;II)I

    goto/16 :goto_0

    .line 1409
    .end local v0           #callback:Landroid/os/Message;
    :cond_21
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v8, :cond_34

    .line 1410
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_25

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_25

    .line 1412
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1413
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_22

    .line 1414
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_22
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1453
    :goto_5
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    if-nez v4, :cond_32

    .line 1454
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_0

    .line 1455
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests 0 time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1417
    :cond_23
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_24
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto :goto_5

    .line 1420
    :cond_25
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_29

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_29

    .line 1422
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1423
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_26

    .line 1424
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_26
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto :goto_5

    .line 1427
    :cond_27
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_28

    .line 1428
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_28
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto :goto_5

    .line 1431
    :cond_29
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_30

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_30

    .line 1433
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1435
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2a

    .line 1436
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 3 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_2a
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto/16 :goto_5

    .line 1438
    :cond_2b
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1440
    :cond_2c
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2d

    .line 1441
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 3 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_2d
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto/16 :goto_5

    .line 1444
    :cond_2e
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_2f

    .line 1445
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests 0 time 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_2f
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto/16 :goto_5

    .line 1449
    :cond_30
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_31

    .line 1450
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 4 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_31
    iput v8, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto/16 :goto_5

    .line 1458
    :cond_32
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v6, :cond_33

    .line 1459
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1460
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1461
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_20

    .line 1462
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests phoneid 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1464
    :cond_33
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1465
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1466
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1467
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1468
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_0

    .line 1469
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests phoneid 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1473
    :cond_34
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1474
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1479
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests  fly mode  no card  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1484
    :cond_35
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v6, :cond_41

    .line 1486
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_3b

    .line 1487
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1488
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v8, :cond_37

    .line 1489
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_36

    .line 1490
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one valid card 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_36
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1492
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1493
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1494
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1496
    :cond_37
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-ne v4, v6, :cond_20

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v6, :cond_20

    .line 1497
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_38

    .line 1498
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one valid card 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_38
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1500
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1501
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1502
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1506
    :cond_39
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_3a

    .line 1507
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one invalid card is cdma card "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_3a
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1509
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1510
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1511
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1517
    :cond_3b
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget v5, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->iscdma()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1519
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_3c

    .line 1520
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one invalid card is cdma card "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_3c
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1522
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1523
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1524
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1527
    :cond_3d
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-nez v4, :cond_3f

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v8, :cond_3f

    .line 1528
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_3e

    .line 1529
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one valid card 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_3e
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1531
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1532
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1533
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1535
    :cond_3f
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidslot:I

    if-ne v4, v6, :cond_20

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v6, :cond_20

    .line 1536
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one valid card 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_40
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1538
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1539
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1540
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1544
    :cond_41
    iget v4, p0, Lcom/android/internal/telephony/IccCard;->mValidCard:I

    if-ne v4, v8, :cond_4f

    .line 1545
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_44

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_44

    .line 1547
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1548
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_20

    .line 1549
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1552
    :cond_42
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_43

    .line 1553
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_43
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v6, :cond_20

    .line 1555
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1556
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1557
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto/16 :goto_0

    .line 1561
    :cond_44
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_47

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v8, :cond_47

    .line 1563
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1564
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_20

    .line 1565
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1568
    :cond_45
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_46

    .line 1569
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 2 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_46
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v8, :cond_20

    .line 1572
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1573
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1574
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto/16 :goto_0

    .line 1578
    :cond_47
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_4e

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getNumApplications()I

    move-result v4

    if-ne v4, v6, :cond_4e

    .line 1580
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1582
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_20

    .line 1583
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 3 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1585
    :cond_48
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1587
    :cond_49
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_4a

    .line 1588
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests one time 3 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_4a
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v6

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v6, :cond_4b

    .line 1592
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1593
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1594
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto/16 :goto_0

    .line 1596
    :cond_4b
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->UiccCardStatusResponseDate:Lcom/android/internal/telephony/UiccCardStatusResponse;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse;->cards:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    aget-object v4, v4, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->getApplication(I)Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->getAppType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccConstants$AppType;->isgsm()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v8, :cond_20

    .line 1598
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1599
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1600
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto/16 :goto_0

    .line 1604
    :cond_4c
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_4d

    .line 1605
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests 0 time 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_4d
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1607
    iput v7, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1608
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1609
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    goto/16 :goto_0

    .line 1613
    :cond_4e
    iget-boolean v4, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v4, :cond_20

    .line 1614
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests two time 4 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1618
    :cond_4f
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1619
    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1620
    iget-object v4, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "processPendingActivateRequests no card  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method processPendingCardStatusRf(I)V
    .locals 9
    .parameter "cardstate"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1634
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1635
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v7, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v2, v5, :cond_1

    .line 1637
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1638
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, " processPendingCardStatusRf cdmaphone mCdmacardready = true don\'t handle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v2, v5, :cond_5

    .line 1642
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1643
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, " processPendingCardStatusRf gsmphone mGsmcardready = true don\'t handle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1647
    :cond_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 1648
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1649
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1650
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, " processPendingCardStatusRf 11 gsmphone mGsmcardready = true don\'t handle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1654
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v2, v5, :cond_4

    .line 1656
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1657
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, " processPendingCardStatusRf cdmaphone mCdmacardready = true don\'t handle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1659
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v2, v5, :cond_5

    .line 1661
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1662
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, " processPendingCardStatusRf gsmphone mGsmcardready = true don\'t handle "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1667
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1674
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 1675
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf cdma unknown card state handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 1678
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    goto/16 :goto_0

    .line 1680
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1681
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1682
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1683
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf gsm unknown card state handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1692
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf detect wait card rf  handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1701
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf pin  deactive card  handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_e

    .line 1704
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v2

    if-nez v2, :cond_c

    .line 1705
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-nez v2, :cond_8

    .line 1707
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-ne v2, v5, :cond_7

    .line 1708
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mGsmcardready = false aready be deactivate return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1712
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mGsmcardready = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1715
    .local v0, callback:Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v0, v5, v2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhonepri(Landroid/os/Message;II)I

    goto/16 :goto_0

    .line 1716
    :catch_0
    move-exception v1

    .line 1718
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1721
    .end local v0           #callback:Landroid/os/Message;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v7, :cond_a

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-nez v2, :cond_a

    .line 1723
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-ne v2, v5, :cond_9

    .line 1724
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mCdmacardready = false aready be deactivate return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1728
    :cond_9
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1733
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mCdmacardready = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1735
    .restart local v0       #callback:Landroid/os/Message;
    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v0, v5, v2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhonepri(Landroid/os/Message;II)I

    goto/16 :goto_0

    .line 1729
    .end local v0           #callback:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 1731
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1737
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-nez v2, :cond_b

    .line 1739
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1740
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1741
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1742
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1743
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-nez v2, :cond_0

    .line 1745
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1746
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1747
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1748
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1753
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_d

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-nez v2, :cond_d

    .line 1755
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1756
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1757
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1758
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1759
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-nez v2, :cond_0

    .line 1761
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1762
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1763
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1764
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1768
    :cond_e
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v2

    if-nez v2, :cond_10

    .line 1769
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-nez v2, :cond_0

    .line 1770
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mActiveselsetSub:Lcom/android/internal/telephony/IccCard$Subscription;

    iget v2, v2, Lcom/android/internal/telephony/IccCard$Subscription;->subStatus:I

    if-ne v2, v5, :cond_f

    .line 1771
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mCdmacardready = false aready be deactivate return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1774
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v3, "processPendingCardStatusRf  mCdmacardready = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1777
    .restart local v0       #callback:Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1782
    :goto_3
    iget v2, p0, Lcom/android/internal/telephony/IccCard;->mMode:I

    invoke-virtual {p0, v0, v5, v2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhonepri(Landroid/os/Message;II)I

    goto/16 :goto_0

    .line 1778
    :catch_2
    move-exception v1

    .line 1780
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1785
    .end local v0           #callback:Landroid/os/Message;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v7, :cond_11

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-nez v2, :cond_11

    .line 1787
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1788
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1789
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1790
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1791
    :cond_11
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-nez v2, :cond_0

    .line 1793
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mGsmneedActivecount:I

    .line 1794
    iput v6, p0, Lcom/android/internal/telephony/IccCard;->mCdmaneedActivecount:I

    .line 1795
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    .line 1796
    iput-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    goto/16 :goto_0

    .line 1804
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf PERSO wait card rf  handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processPendingCardStatusRf ready wait card rf  handleIccCardStatus cardstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public queryPINPUKValidCount(ILandroid/os/Message;)V
    .locals 5
    .parameter "reqType"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x1

    .line 3439
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "enter queryPINPUKValidCount..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3442
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPukValidCount gsmRunMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getPreRunMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsmPreRunMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getPreRunMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v1

    if-nez v1, :cond_0

    .line 3444
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "gsm card haven\'t be activated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    new-array v0, v4, [I

    const/4 v1, 0x0

    const/4 v2, -0x6

    aput v2, v0, v1

    .line 3446
    .local v0, ints:[I
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 3447
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3453
    .end local v0           #ints:[I
    :goto_0
    return-void

    .line 3452
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public rebootSystem()V
    .locals 7

    .prologue
    .line 3596
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string/jumbo v6, "reboot immediately"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    :try_start_0
    const-string v5, "com.yulong.android.poweroff.PowerOffManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3599
    .local v0, c:Ljava/lang/Class;
    const-string v5, "getInstance"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3600
    .local v2, instance:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3601
    .local v4, retObj:Ljava/lang/Object;
    const-string/jumbo v5, "rebootSystem"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3602
    .local v3, isSRM:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3613
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #instance:Ljava/lang/reflect/Method;
    .end local v3           #isSRM:Ljava/lang/reflect/Method;
    .end local v4           #retObj:Ljava/lang/Object;
    :goto_0
    return-void

    .line 3603
    :catch_0
    move-exception v1

    .line 3604
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 465
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 466
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 470
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 495
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 496
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 500
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 480
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 481
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 485
    :cond_0
    return-void
.end method

.method public registerForSubActiveOrDeactiveall()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3577
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isRegist:Z

    if-nez v0, :cond_1

    .line 3578
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "CP_COMM: registerForSubActiveOrDeactive CMDA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForSubActiveOrDeactive()V

    .line 3580
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isRegist:Z

    .line 3588
    :cond_0
    :goto_0
    return-void

    .line 3581
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->isRegist:Z

    if-nez v0, :cond_0

    .line 3582
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3583
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "CP_COMM: registerForSubActiveOrDeactive GSM "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSubActiveOrDeactive()V

    .line 3585
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->isRegist:Z

    goto :goto_0
.end method

.method public setIccCardLock()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3487
    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v9, "enter setIccCardLock..."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v6, 0x14

    if-ge v2, v6, :cond_0

    .line 3489
    iget-object v9, p0, Lcom/android/internal/telephony/IccCard;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3490
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xc

    invoke-static {v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3492
    .local v0, callback:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v6, v10, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3494
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mLock:Ljava/lang/Object;

    const-wide/16 v10, 0x2710

    invoke-virtual {v6, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3498
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3499
    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mPinPukCount:I

    if-nez v6, :cond_2

    .end local v0           #callback:Landroid/os/Message;
    :cond_0
    move v8, v7

    .line 3511
    :cond_1
    return v8

    .line 3495
    .restart local v0       #callback:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 3496
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v10, "CP_COMM: [setIccCardLock] get pincount failed"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3498
    .end local v0           #callback:Landroid/os/Message;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 3501
    .restart local v0       #callback:Landroid/os/Message;
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/IccCard;->mPinPukCount:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 3504
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 3505
    .local v4, random:Ljava/util/Random;
    const/16 v6, 0x2710

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 3506
    .local v5, randomPassWord:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v3, v6, :cond_3

    .line 3507
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3506
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3509
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v5, v9}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 3488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v6, v8

    .line 3509
    goto :goto_3
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 668
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 669
    const/16 v4, 0xf

    .line 673
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 690
    .end local v4           #serviceClassX:I
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 678
    const/16 v4, 0xf

    .line 682
    .restart local v4       #serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 687
    .end local v4           #serviceClassX:I
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern setIccFdnEnabled  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 634
    const/4 v4, 0x7

    .line 637
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 653
    .end local v4           #serviceClassX:I
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 642
    const/4 v4, 0x7

    .line 645
    .restart local v4       #serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 650
    .end local v4           #serviceClassX:I
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern setIccLockEnabled  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRilresetFlag(I)V
    .locals 6
    .parameter "flag"

    .prologue
    const/16 v5, 0x23

    const/4 v4, 0x1

    .line 3460
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->rilresetFlag:I

    .line 3462
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRilresetFlag  flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "runmode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3464
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->preRunMode:I

    .line 3466
    :cond_0
    if-ne p1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/IccCard;->preRunMode:I

    if-ne v1, v4, :cond_1

    .line 3467
    iput v4, p0, Lcom/android/internal/telephony/IccCard;->rilresetDelayFlag:I

    .line 3468
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3469
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3470
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3471
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 3472
    const-string v1, "cdma.ruim.state"

    const-string v2, "READY"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRilresetFlag  PROPERTY_RUIM_STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cdma.ruim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRilresetFlag  PROPERTY_SIM_STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    return-void

    .line 3473
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3474
    const-string v1, "gsm.sim.state"

    const-string v2, "READY"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setisgorc(I)V
    .locals 3
    .parameter "isgorctmp"

    .prologue
    .line 2527
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setisgorc isgorctmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/IccCard;->isgorc:I

    .line 2529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    .line 2530
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->processPendingActivateRequests()V

    .line 2531
    return-void
.end method

.method public setphonemode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2579
    const-string/jumbo v0, "yulong.radio.work.mode"

    const v1, 0xffff

    rem-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setphonemode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :cond_0
    return-void
.end method

.method public setpinstate(Z)V
    .locals 0
    .parameter "Pinstate"

    .prologue
    .line 2534
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->pinstate:Z

    .line 2535
    return-void
.end method

.method public setrunmode(I)V
    .locals 3
    .parameter "runmode"

    .prologue
    const v2, 0xffff

    const/4 v1, 0x1

    .line 2593
    if-ne p1, v1, :cond_0

    .line 2594
    iput v1, p0, Lcom/android/internal/telephony/IccCard;->preRunMode:I

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2598
    const-string/jumbo v0, "yulong.c.run.state"

    rem-int v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setrunmode runmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    :cond_1
    return-void

    .line 2600
    :cond_2
    const-string/jumbo v0, "yulong.g.run.state"

    rem-int v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 579
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Despersonalization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 586
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern supplyNetworkDepersonalization  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter supplyPin pin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_3

    .line 529
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 534
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern supplyPin  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern supplyPin  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 543
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v0

    if-nez v0, :cond_3

    .line 544
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern supplyPuk  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 568
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mCdmacardready:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mGsmcardready:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 573
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "entern supplyPin  but card not ready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 474
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 504
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 489
    return-void
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStateProperty phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",radiostate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "cdma.ruim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 771
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isOverseaProduct()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
