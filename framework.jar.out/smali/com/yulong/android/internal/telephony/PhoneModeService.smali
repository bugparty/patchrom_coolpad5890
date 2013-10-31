.class public Lcom/yulong/android/internal/telephony/PhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/PhoneModeService$2;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
    }
.end annotation


# static fields
.field private static ActiveOrNoCdma:I = 0x0

.field private static ActiveOrNoGsm:I = 0x0

.field public static final BATTERY_CDMA_WARN_LEVEL:I = 0x5

.field public static final BATTERY_GSM_WARN_LEVEL:I = 0x9

.field public static final BATTERY_NORMAL_LEVEL:I = 0xe

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUBSCRIPTION_DEACTIVE:I = 0x21

.field private static final EVENT_CDMA_SUBSCRIPTION_READY:I = 0x26

.field private static final EVENT_CDMA_SUBSCRIPTION_READY2:I = 0x24

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CHECK_CDMA_RIL_POWERON_RESULT:I = 0x34

.field private static final EVENT_CHECK_GSM_RIL_POWERON_RESULT:I = 0x35

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

.field private static final EVENT_C_LOST_CARD_REBOOT:I = 0x37

.field private static final EVENT_C_PHONE_DISCONNECT:I = 0x39

.field private static final EVENT_DELAY_LOST_CARD_REBOOT:I = 0x3b

.field private static final EVENT_FINISH_SELECT_NET:I = 0x32

.field private static final EVENT_FINISH_SWITCH_SLOT_MODE:I = 0x3

.field private static final EVENT_GET_CARD_TYPE_BY_AT:I = 0x11

.field private static final EVENT_GET_CDMA_MODEM_STATUS:I = 0x6

.field private static final EVENT_GET_GSM_IMSI_BY_AT:I = 0x10

.field private static final EVENT_GET_GSM_MODEM_STATUS:I = 0x7

.field private static final EVENT_GET_PINPUK_LEFT_NUM:I = 0x12

.field private static final EVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field private static final EVENT_GSM_RADIO_ON:I = 0xd

.field private static final EVENT_GSM_RADIO_STATE_CHANGED:I = 0xf

.field private static final EVENT_GSM_SUBSCRIPTION_DEACTIVE:I = 0x20

.field private static final EVENT_GSM_SUBSCRIPTION_READY:I = 0x27

.field private static final EVENT_GSM_SUBSCRIPTION_READY2:I = 0x25

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_G_LOST_CARD_REBOOT:I = 0x38

.field private static final EVENT_G_PHONE_DISCONNECT:I = 0x3a

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_CDMA_MODEM_POWER_PINPUK:I = 0x3c

.field private static final EVENT_OPEN_CDMA_SELECT_DONE:I = 0x1f

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_OPEN_GSM_MODEM_POWER_PINPUK:I = 0x3d

.field private static final EVENT_OPEN_GSM_SELECT_DONE:I = 0x1e

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SEND_RADIO_POWER_DONE:I = 0x40

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x36

.field private static final EVENT_SMS_DELAY_TIME_OUT:I = 0x3f

.field private static final EVENT_SUBSCRIPTION_DEACTIVE_DONE:I = 0x3e

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneModeService"

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field public static final POWER_MGR_LOW_PWR_POWEROFF_C:I = 0x4

.field public static final POWER_MGR_LOW_PWR_POWEROFF_G:I = 0x3

.field public static final POWER_MGR_NORMAL:I = 0x1

.field public static final POWER_MGR_UNINIT:I = 0x0

.field public static final POWER_MGR_WORNING:I = 0x2

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x0

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final PWR_ACTION_RESET:I = 0x3

.field private static final REBOOT_SYSTEM_MILLIS:I = 0xbb8

.field private static final RESET_MODEM_MILLIS:I = 0x2710

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SUB_ACTIVATE:I = 0x0

.field private static final SUB_DEACTIVATE:I = 0x1

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static final UNLOCK_PIN_BY_CDMA_STEP:I = 0x5

.field private static final UNLOCK_PIN_BY_GSM_STEP:I = 0x6

.field private static fakeDualModeCardId:I

.field private static mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static mContext:Landroid/content/Context;

.field static mCtoGState:Z

.field static mDataState:Z

.field private static mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static mHasCardOnSlotOne:I

.field private static mHasCardOnSlotTwo:I

.field public static final mLock5:Ljava/lang/Object;

.field public static final mLock6:Ljava/lang/Object;

.field private static mPinValues:[Ljava/lang/String;

.field private static mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private static mSlotConnectMode:I

.field private static readycount:I

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

.field private static sSmsDelayCount:I

.field private static setsubmodestate:I


# instance fields
.field isFirstIn_RUIM:Z

.field isFirstIn_SIM:Z

.field isHasCardforIndia:Z

.field protected mBaseHandler:Landroid/os/Handler;

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field private mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

.field private mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

.field private mIsUserSelectNet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLock1:Ljava/lang/Object;

.field private final mLock2:Ljava/lang/Object;

.field private final mLock3:Ljava/lang/Object;

.field private final mLock4:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field private mNeedUnlockMode:I

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/PhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterClientNo:I

.field private mSelectLock:Z

.field protected mStateMonitor:Ljava/lang/Object;

.field private mStateRadio:Z

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private nextselect:[I

.field private pm:Landroid/os/PowerManager;

.field private processStateCdma:I

.field private processStateGsm:I

.field private ruim_insert_state:Ljava/lang/String;

.field private silenceReboot:Z

.field private sim_insert_state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 232
    sput v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 298
    sput v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 299
    sput v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 300
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 303
    sput v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->readycount:I

    .line 318
    new-array v0, v4, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 327
    new-array v0, v4, [Ljava/lang/String;

    aput-object v5, v0, v1

    aput-object v5, v0, v3

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 334
    sput v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    .line 358
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    .line 386
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 387
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    .line 396
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->fakeDualModeCardId:I

    .line 1650
    sput-boolean v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    .line 1651
    sput-boolean v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1242
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 57
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 58
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    .line 59
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 60
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 238
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    .line 239
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 294
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 295
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 296
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 297
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 301
    iput-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 330
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    .line 338
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 341
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 344
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 346
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 348
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 351
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    .line 353
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    .line 354
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    .line 355
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    .line 356
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 388
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    .line 389
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 393
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 395
    iput-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    .line 399
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 1243
    const-string v1, "CP_COMM: enter PhoneModeService add iPhoneModeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1244
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneModeServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1246
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    .line 1248
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1249
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    .line 1251
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1252
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    .line 1253
    new-instance v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    invoke-direct {v1, p0}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    .line 1254
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1256
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 1257
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 1258
    const-string v1, "CP_COMM: registerReceiver."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1259
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1262
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x37

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForLostCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1264
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    .line 1265
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->createWakelock()V

    .line 1266
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    if-eqz v1, :cond_1

    .line 1284
    :goto_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1286
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1287
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1290
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1292
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1294
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1297
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x27

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1299
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x26

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1303
    const-string v1, "iPhoneModeService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1304
    const-string v1, "iPhoneModeService"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1312
    :goto_1
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    if-nez v1, :cond_0

    .line 1313
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->registerClientToNativeService()V

    .line 1316
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1317
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1318
    return-void

    .line 1270
    :cond_1
    const-string v1, "get PowerManager service fail"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1308
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 330
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->onBatteryInfoReceiver(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1200(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$2100()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return p1
.end method

.method static synthetic access$2208(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I

    return v0
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$2400()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return p1
.end method

.method static synthetic access$2508(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I

    return v0
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    return p0
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    return p0
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    return v0
.end method

.method static synthetic access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V

    return-void
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    return p1
.end method

.method static synthetic access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastPwrMgrControl(II)V
    .locals 7
    .parameter "iCloseOrOpen"
    .parameter "operId"

    .prologue
    const/4 v6, 0x1

    .line 5072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: iCloseOrOpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5074
    const/4 v0, 0x0

    .line 5075
    .local v0, iLeftSlotModemType:I
    const/4 v2, 0x0

    .line 5076
    .local v2, iRightSlotModemType:I
    const/4 v1, -0x1

    .line 5077
    .local v1, iPreferredSlotId:I
    if-nez p1, :cond_5

    .line 5079
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-nez v4, :cond_0

    .line 5081
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 5082
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput-boolean v6, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 5083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: broadcastPwrMgrControl iCloseOrOpen :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5089
    :cond_0
    if-ne p2, v6, :cond_4

    .line 5091
    sget v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-nez v4, :cond_3

    .line 5092
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5093
    const/4 v2, 0x0

    .line 5094
    const/4 v1, 0x0

    .line 5118
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl  mCardSelectedInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5145
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5146
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5147
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v1, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 5149
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "yulong.intent.action.POWER_MANAGER_OPERATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5152
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "closeOrOpenNet"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5153
    const-string/jumbo v4, "leftSlotModemType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5155
    const-string/jumbo v4, "rightSlotModemTyp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5157
    const-string/jumbo v4, "preferredSlotId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5160
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5161
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 5095
    :cond_3
    sget v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-ne v4, v6, :cond_1

    .line 5096
    const/4 v0, 0x0

    .line 5097
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5098
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5100
    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 5103
    const/4 v0, 0x0

    .line 5104
    const/4 v2, 0x0

    .line 5105
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 5109
    :cond_5
    if-ne p1, v6, :cond_6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-eqz v4, :cond_6

    .line 5110
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 5111
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 5112
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 5113
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_0

    .line 5115
    :cond_6
    const-string v4, "broadcastPwrMgrControl without any oper"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private broadcastSelectNetFinishIntent(Ljava/lang/String;I)V
    .locals 9
    .parameter "result"
    .parameter "errNo"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: broadcastSelectNetFinish, type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", c = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", g = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", preSlotId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1529
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "selectNetResult"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const/4 v2, -0x1

    .line 1536
    .local v2, mSlotConnectMode:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1537
    const/4 v2, 0x1

    .line 1541
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: broadcastSelectNetFinish, mSlotConnectMode = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1542
    const-string/jumbo v3, "slotConnectMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1545
    const-string v3, "Success"

    if-ne p1, v3, :cond_6

    .line 1546
    const-string/jumbo v6, "selectCdmaStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v5, :cond_4

    :cond_0
    move v3, v5

    :goto_1
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1550
    const-string/jumbo v6, "selectGsmStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v8, :cond_5

    :cond_1
    move v3, v5

    :goto_2
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1554
    const-string/jumbo v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    :cond_2
    :goto_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1576
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCardSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCardSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCardSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const-string v3, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v3, v6, :cond_8

    .line 1586
    const-string v3, "PhoneModeService"

    const-string v5, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1604
    :goto_4
    return-void

    .line 1539
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 1546
    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 1550
    goto/16 :goto_2

    .line 1557
    :cond_6
    const-string v3, "TimeOut"

    if-eq p1, v3, :cond_7

    const-string v3, "RILError"

    if-ne p1, v3, :cond_2

    .line 1562
    :cond_7
    const-string/jumbo v3, "selectCdmaStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1564
    const-string/jumbo v3, "selectGsmStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1566
    const-string/jumbo v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1568
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1591
    :cond_8
    const-string v3, "PhoneModeService"

    const-string v6, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :goto_5
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1602
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    aget v5, v5, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_4

    .line 1596
    :catch_0
    move-exception v0

    .line 1598
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .parameter "batteryStatus"

    .prologue
    const/4 v3, 0x0

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1614
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1618
    const-string/jumbo v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1619
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1622
    return-void
.end method

.method private canStartNet(I)Z
    .locals 3
    .parameter "curPwrState"

    .prologue
    const/4 v0, 0x1

    .line 4981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: canStartNet curPwrState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4983
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lt v1, v2, :cond_0

    .line 4985
    const-string v1, "CP_COMM: close net operation, canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5000
    :goto_0
    return v0

    .line 4990
    :cond_0
    if-ne p1, v0, :cond_1

    .line 4991
    const-string v1, "CP_COMM: canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4996
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 4997
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4998
    const-string v0, "CP_COMM: canStartNet:false"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5000
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSwitchNetWorkbydsds()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 2918
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2919
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2920
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mCdmaPhone).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2945
    :goto_0
    return v0

    .line 2925
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2926
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mCdmaPhone).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2927
    goto :goto_0

    .line 2931
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSmsWorkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2932
    const-string v0, "PhoneModeService"

    const-string v2, "((GSMPhone)mGsmPhone).getSmsWorkStatus() == true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2933
    goto :goto_0

    .line 2935
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_4

    .line 2940
    :cond_3
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCdmaPhone.getState() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    const-string v0, "PhoneModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGsmPhone.getState() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2942
    goto :goto_0

    .line 2944
    :cond_4
    const-string v0, "PhoneModeService"

    const-string v1, "canSwitchNetWorkbydsds() == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private checkUserSelectValid(III)Z
    .locals 8
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 4101
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 4102
    .local v0, dsdsType:I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: checkUserSelectValid commtpye  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 4190
    :cond_1
    :goto_0
    return v1

    .line 4107
    :pswitch_0
    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    .line 4110
    :cond_2
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-gt p1, v6, :cond_1

    if-gt p2, v6, :cond_1

    .line 4115
    if-nez p3, :cond_3

    if-eqz p1, :cond_1

    :cond_3
    if-ne p3, v2, :cond_4

    if-eqz p2, :cond_1

    .line 4118
    :cond_4
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_0

    .line 4119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4125
    :pswitch_1
    if-ne p1, p2, :cond_5

    if-nez p2, :cond_1

    .line 4145
    :cond_5
    if-lt p3, v7, :cond_1

    if-gt p3, v2, :cond_1

    .line 4148
    if-nez p2, :cond_13

    if-nez p1, :cond_13

    .line 4159
    :cond_6
    if-ne p1, v6, :cond_7

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_12

    :cond_7
    if-ne p1, v2, :cond_8

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_12

    :cond_8
    if-ne p2, v6, :cond_9

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    if-eqz v3, :cond_12

    :cond_9
    if-ne p2, v2, :cond_a

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    if-eqz v3, :cond_12

    :cond_a
    if-ne p1, v6, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_b

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_b
    if-ne p1, v2, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_c
    if-ne p2, v2, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_d
    if-ne p2, v6, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_e
    if-ne p2, v6, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v3, v2, :cond_12

    :cond_f
    if-ne p2, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v2, :cond_10

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_10
    if-ne p1, v2, :cond_11

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v2, :cond_11

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eq v3, v2, :cond_12

    :cond_11
    if-ne p1, v6, :cond_15

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_15

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v3, v2, :cond_15

    .line 4179
    :cond_12
    const-string v1, "CP_COMM: checkUserSelectValid APP NOT READY "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v1, v2

    .line 4180
    goto/16 :goto_0

    .line 4153
    :cond_13
    if-nez p3, :cond_14

    if-eqz p1, :cond_1

    :cond_14
    if-ne p3, v2, :cond_6

    if-nez p2, :cond_6

    goto/16 :goto_0

    .line 4183
    :cond_15
    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    if-eq v3, v7, :cond_0

    .line 4184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkWhetherNeedSwitchBindMode(II)Z
    .locals 1
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"

    .prologue
    .line 4204
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd checkWhetherNeedSwitchBindMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4206
    const/4 v0, 0x0

    return v0
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    .line 4295
    const/4 v0, 0x0

    .line 4298
    .local v0, slotId:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4300
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 4301
    const/4 v0, 0x1

    .line 4312
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertPhoneIdToSlotId phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSlotConnectMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4316
    return v0

    .line 4303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4306
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 4307
    const/4 v0, 0x0

    goto :goto_0

    .line 4309
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 4264
    const/4 v0, 0x0

    .line 4266
    .local v0, phoneId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4267
    if-nez p1, :cond_0

    .line 4268
    const/4 v0, 0x2

    .line 4282
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSlotIdToPhoneId slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4284
    return v0

    .line 4270
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4276
    :cond_1
    if-nez p1, :cond_2

    .line 4277
    const/4 v0, 0x1

    goto :goto_0

    .line 4279
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5607
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5609
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5611
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 5613
    return-void
.end method

.method private enforcePhoneModemOper(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 4917
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4919
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1632
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 1633
    .local v0, slotId:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1634
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1640
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    int-to-byte v2, p1

    iput-byte v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 1641
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string/jumbo v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 1647
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1648
    return-void

    .line 1644
    :cond_0
    const-string/jumbo v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 3

    .prologue
    .line 3990
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3993
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3994
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 4000
    :goto_0
    return-void

    .line 3997
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public static getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;
    .locals 1

    .prologue
    .line 1360
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    .line 1361
    new-instance v0, Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 1364
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/PhoneModeService;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 4248
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4250
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4251
    .local v0, myBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4253
    .local v1, myTp:Lcom/android/internal/telephony/ITelephony;
    return-object v1
.end method

.method private getModemPowerStatus(I)I
    .locals 9
    .parameter "modemType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 4645
    if-ne v7, p1, :cond_2

    .line 4646
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 4647
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 4679
    :cond_0
    :goto_0
    return v1

    .line 4650
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 4663
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4665
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4669
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4671
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 4673
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 4652
    :cond_2
    if-ne v8, p1, :cond_0

    .line 4653
    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 4654
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 4657
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 4666
    :catch_0
    move-exception v0

    .line 4667
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4669
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4674
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 4676
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    goto :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 6

    .prologue
    .line 4228
    const/4 v0, 0x0

    .line 4229
    .local v0, i:I
    const/4 v2, 0x0

    .line 4230
    .local v2, myBinder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, myNS:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 4232
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 4233
    const-string/jumbo v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 4234
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 4237
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getMyNativeService, myNS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4239
    return-object v3
.end method

.method private getPinPukNumByCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2192
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2194
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2195
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V

    .line 2206
    :goto_0
    return-void

    .line 2199
    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2200
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0

    .line 2203
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPinPukNumByCdmaOrGsm1()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2212
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm1."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2213
    iget v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2214
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    .line 2220
    :goto_0
    return-void

    .line 2217
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(I)I
    .locals 6
    .parameter "nBatPwr"

    .prologue
    .line 4934
    const/4 v3, 0x0

    .line 4937
    .local v3, tempPwrState:I
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v2

    .line 4938
    .local v2, batteryLevelNormal:I
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v1

    .line 4939
    .local v1, batteryLevelCloseG:I
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getBatteryLevelType(I)I

    move-result v0

    .line 4940
    .local v0, batteryLevelCloseC:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: batteryLevelNormal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",batteryLevelCloseG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",batteryLevelCloseC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4942
    if-lt p1, v2, :cond_1

    .line 4943
    const/4 v3, 0x1

    .line 4968
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: BatteryVolt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PwrState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4970
    return v3

    .line 4944
    :cond_1
    if-ge p1, v2, :cond_2

    if-le p1, v1, :cond_2

    .line 4946
    const/4 v3, 0x2

    goto :goto_0

    .line 4947
    :cond_2
    if-gt p1, v1, :cond_3

    if-le p1, v0, :cond_3

    .line 4949
    const/4 v3, 0x3

    goto :goto_0

    .line 4950
    :cond_3
    if-gt p1, v0, :cond_0

    .line 4951
    const/4 v3, 0x4

    goto :goto_0
.end method

.method private getSlotConnectMode()I
    .locals 1

    .prologue
    .line 4487
    const-string v0, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd getSlotConnectMode"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4501
    sget v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method private getSynPinPukValidCount(III)I
    .locals 5
    .parameter "reqType"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    .line 3776
    const/4 v1, -0x1

    .line 3779
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 3780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSynPinPukValidCount count  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 3783
    if-nez p1, :cond_1

    .line 3785
    const/4 v1, -0x1

    .line 3809
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3811
    return v1

    .line 3786
    :cond_1
    if-ne p1, v4, :cond_0

    .line 3788
    const/4 v1, -0x1

    goto :goto_0

    .line 3791
    :cond_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 3793
    :try_start_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3796
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    int-to-byte v3, v1

    iput-byte v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3797
    if-ne p1, v4, :cond_0

    .line 3799
    if-nez v1, :cond_0

    .line 3800
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3805
    :catch_0
    move-exception v0

    .line 3806
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from getSynPinPukValidCount()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4375
    const/4 v0, 0x0

    .line 4377
    .local v0, iCardNum:I
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 4378
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4379
    const/4 v1, -0x1

    .line 4390
    :goto_0
    return v1

    .line 4382
    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 4383
    add-int/lit8 v0, v0, 0x1

    .line 4386
    :cond_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 4387
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 4390
    goto :goto_0
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 4598
    const/4 v0, 0x0

    .line 4634
    .local v0, result:I
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5242
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5260
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5251
    const-string v0, "PhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 3
    .parameter "checkType"
    .parameter "result"
    .parameter "slotId"

    .prologue
    .line 4854
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 4856
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4858
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4861
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4866
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4867
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;I)I

    .line 4871
    :cond_0
    return-void

    .line 4861
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4764
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4765
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4767
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4768
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4764
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4771
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4800
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4801
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4803
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4804
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4800
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4807
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifySelectNetResult(IILjava/lang/String;)V
    .locals 3
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4837
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4838
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    .line 4840
    .local v1, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 4841
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->sendSelectNetResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V

    .line 4837
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4844
    .end local v1           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private onBatteryInfoReceiver(I)V
    .locals 3
    .parameter "iLevel"

    .prologue
    .line 5226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver iLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5228
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPwrStateByBatPwr(I)I

    move-result v0

    .line 5229
    .local v0, newPwrState:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v0, v1, :cond_0

    .line 5230
    const-string v1, "CP_COMM: onBatteryInfoReceiver without any oper"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5234
    :goto_0
    return-void

    .line 5233
    :cond_0
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->powerChangeOper(I)V

    goto :goto_0
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 11

    .prologue
    .line 2226
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2227
    .local v0, cdmaRadioPower:Z
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v3, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2228
    .local v3, gsmRadioPower:Z
    const/4 v5, 0x0

    .line 2230
    .local v5, ret:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter operateRadioCdmaAndGsm, cdma = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", gsm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter operateRadioCdmaAndGsm, OPERATE_C_RADIO_STEP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v9, 0x8

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", OPERATE_G_RADIO_STEP = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v9, 0x9

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2236
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 2237
    .local v1, dsdsType:I
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: operateRadioCdmaAndGsm commtpye  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    packed-switch v1, :pswitch_data_0

    .line 2575
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 2578
    invoke-virtual {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unlockPinFor3GCard()V

    .line 2579
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2581
    :cond_1
    return-void

    .line 2243
    :pswitch_0
    const/4 v6, 0x1

    .line 2244
    .local v6, substate:I
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    :cond_2
    if-nez v0, :cond_8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v7, :cond_8

    .line 2246
    :cond_3
    if-nez v0, :cond_4

    .line 2247
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2249
    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2295
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    :cond_6
    if-nez v3, :cond_e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v7, :cond_e

    .line 2297
    :cond_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    goto :goto_0

    .line 2250
    :cond_8
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 2251
    const-string v7, "enter operateRadioCdmaAndGsm cdma OPERATION_FINISH "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2254
    :cond_9
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v7, :cond_a

    .line 2255
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2261
    :goto_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    .line 2262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2265
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    move-result v5

    .line 2272
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    .line 2274
    if-nez v5, :cond_c

    .line 2275
    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    if-nez v7, :cond_b

    .line 2276
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2280
    :goto_3
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2281
    const-string/jumbo v7, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2257
    :cond_a
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_2

    .line 2278
    :cond_b
    const/4 v7, 0x0

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_3

    .line 2282
    :cond_c
    const/4 v7, -0x1

    if-ne v7, v5, :cond_5

    .line 2283
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 2284
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2288
    :goto_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2289
    const-string/jumbo v7, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2286
    :cond_d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_4

    .line 2299
    :cond_e
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v3, :cond_f

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2301
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2302
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    goto/16 :goto_0

    .line 2299
    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    .line 2309
    .end local v6           #substate:I
    :pswitch_1
    const/4 v6, 0x1

    .line 2310
    .restart local v6       #substate:I
    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    if-nez v7, :cond_25

    .line 2311
    if-eqz v0, :cond_10

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_11

    :cond_10
    if-nez v0, :cond_17

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v7, :cond_17

    .line 2313
    :cond_11
    if-nez v0, :cond_12

    .line 2314
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2316
    :cond_12
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2376
    :cond_13
    :goto_6
    if-eqz v3, :cond_14

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_15

    :cond_14
    if-nez v3, :cond_1e

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v7, :cond_1e

    .line 2378
    :cond_15
    if-nez v3, :cond_16

    .line 2379
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2381
    :cond_16
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    goto/16 :goto_0

    .line 2317
    :cond_17
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    .line 2318
    const-string v7, "enter operateRadioCdmaAndGsm cdma OPERATION_FINISH "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 2321
    :cond_18
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v7, :cond_1a

    .line 2322
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2328
    :goto_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_13

    .line 2330
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v4

    .line 2331
    .local v4, isDisconnected:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDisconnected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2333
    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    .line 2334
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2335
    if-nez v4, :cond_19

    .line 2336
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    monitor-enter v8

    .line 2338
    :try_start_0
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    :goto_8
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    :cond_19
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    move-result v5

    .line 2353
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    .line 2355
    if-nez v5, :cond_1c

    .line 2356
    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    if-nez v7, :cond_1b

    .line 2357
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2361
    :goto_9
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2362
    const-string/jumbo v7, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB fail "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2324
    .end local v4           #isDisconnected:Z
    :cond_1a
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_7

    .line 2339
    .restart local v4       #isDisconnected:Z
    :catch_0
    move-exception v2

    .line 2340
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v7, "CP_COMM: interrupted"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_8

    .line 2342
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2359
    :cond_1b
    const/4 v7, 0x0

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_9

    .line 2363
    :cond_1c
    const/4 v7, -0x1

    if-ne v7, v5, :cond_13

    .line 2364
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    .line 2365
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2369
    :goto_a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2370
    const-string/jumbo v7, "operateRadioCdmaAndGsm DEACTIVE CDMA SUB nocard "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2367
    :cond_1d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_a

    .line 2382
    .end local v4           #isDisconnected:Z
    :cond_1e
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    .line 2383
    const-string v7, "enter operateRadioCdmaAndGsm GSM OPERATION_FINISH "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2386
    :cond_1f
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v7, :cond_21

    .line 2387
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2392
    :goto_b
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 2394
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v4

    .line 2395
    .restart local v4       #isDisconnected:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operateRadioCdmaAndGsm  GSM SUB substate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDisconnected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2397
    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    .line 2398
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2399
    if-nez v4, :cond_20

    .line 2400
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    monitor-enter v8

    .line 2402
    :try_start_3
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2406
    :goto_c
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2410
    :cond_20
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    move-result v5

    .line 2417
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    .line 2419
    if-nez v5, :cond_23

    .line 2420
    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    if-nez v7, :cond_22

    .line 2421
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2425
    :goto_d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2426
    const-string/jumbo v7, "operateRadioCdmaAndGsm  GSM SUB fail "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2389
    .end local v4           #isDisconnected:Z
    :cond_21
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_b

    .line 2403
    .restart local v4       #isDisconnected:Z
    :catch_1
    move-exception v2

    .line 2404
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v7, "CP_COMM: interrupted"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_c

    .line 2406
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 2423
    :cond_22
    const/4 v7, 0x0

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_d

    .line 2427
    :cond_23
    const/4 v7, -0x1

    if-ne v7, v5, :cond_0

    .line 2428
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_24

    .line 2429
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2433
    :goto_e
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2434
    const-string/jumbo v7, "operateRadioCdmaAndGsm  GSM SUB nocard "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2431
    :cond_24
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_e

    .line 2443
    .end local v4           #isDisconnected:Z
    :cond_25
    if-eqz v0, :cond_26

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_27

    :cond_26
    if-nez v0, :cond_2d

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v7, :cond_2d

    .line 2445
    :cond_27
    if-nez v0, :cond_28

    .line 2446
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2449
    :cond_28
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2510
    :cond_29
    :goto_f
    if-eqz v3, :cond_2a

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2b

    :cond_2a
    if-nez v3, :cond_34

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v7, :cond_34

    .line 2512
    :cond_2b
    if-nez v3, :cond_2c

    .line 2513
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2515
    :cond_2c
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    goto/16 :goto_0

    .line 2450
    :cond_2d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    .line 2451
    const-string v7, "enter operateRadioCdmaAndGsm CDMA OPERATION_FINISH "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_f

    .line 2454
    :cond_2e
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v7, :cond_30

    .line 2455
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2461
    :goto_10
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_29

    .line 2463
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v4

    .line 2464
    .restart local v4       #isDisconnected:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operateRadioCdmaAndGsm  CDMA SUB substate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDisconnected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2466
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2f

    .line 2467
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2468
    if-nez v4, :cond_2f

    .line 2469
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    monitor-enter v8

    .line 2471
    :try_start_6
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2475
    :goto_11
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2479
    :cond_2f
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    move-result v5

    .line 2486
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    .line 2488
    if-nez v5, :cond_32

    .line 2489
    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    if-nez v7, :cond_31

    .line 2490
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 2494
    :goto_12
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2495
    const-string/jumbo v7, "operateRadioCdmaAndGsm  CDMA SUB fail "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2457
    .end local v4           #isDisconnected:Z
    :cond_30
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_10

    .line 2472
    .restart local v4       #isDisconnected:Z
    :catch_2
    move-exception v2

    .line 2473
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_8
    const-string v7, "CP_COMM: interrupted"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_11

    .line 2475
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v7

    .line 2492
    :cond_31
    const/4 v7, 0x0

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    goto :goto_12

    .line 2496
    :cond_32
    const/4 v7, -0x1

    if-ne v7, v5, :cond_29

    .line 2498
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_33

    .line 2499
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2503
    :goto_13
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2504
    const-string/jumbo v7, "operateRadioCdmaAndGsm  CDMA SUB nocard "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2501
    :cond_33
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_13

    .line 2516
    .end local v4           #isDisconnected:Z
    :cond_34
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_35

    .line 2517
    const-string v7, "enter operateRadioCdmaAndGsm GSM OPERATION_FINISH "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2520
    :cond_35
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v7, :cond_37

    .line 2521
    const/4 v6, 0x0

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2525
    :goto_14
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 2527
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->isDisconnected()Z

    move-result v4

    .line 2528
    .restart local v4       #isDisconnected:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operateRadioCdmaAndGsm  GSM SUB substate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDisconnected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2530
    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    .line 2531
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2532
    if-nez v4, :cond_36

    .line 2533
    sget-object v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    monitor-enter v8

    .line 2535
    :try_start_9
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock6:Ljava/lang/Object;

    const-wide/16 v9, 0xfa0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3

    .line 2539
    :goto_15
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2543
    :cond_36
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    move-result v5

    .line 2550
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    .line 2552
    if-nez v5, :cond_39

    .line 2553
    iget v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    if-nez v7, :cond_38

    .line 2554
    const/4 v7, 0x1

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 2558
    :goto_16
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2559
    const-string/jumbo v7, "operateRadioCdmaAndGsm  GSM SUB fail "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2523
    .end local v4           #isDisconnected:Z
    :cond_37
    const/4 v6, 0x1

    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_14

    .line 2536
    .restart local v4       #isDisconnected:Z
    :catch_3
    move-exception v2

    .line 2537
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_b
    const-string v7, "CP_COMM: interrupted"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_15

    .line 2539
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v7

    .line 2556
    :cond_38
    const/4 v7, 0x0

    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    goto :goto_16

    .line 2560
    :cond_39
    const/4 v7, -0x1

    if-ne v7, v5, :cond_0

    .line 2561
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3a

    .line 2562
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2566
    :goto_17
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 2567
    const-string/jumbo v7, "operateRadioCdmaAndGsm  GSM SUB nocard "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2564
    :cond_3a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_17

    .line 2239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private powerChangeOper(I)V
    .locals 9
    .parameter "newPwrState"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: powerChangeOper newPwrState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "oldPwrState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5014
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 5018
    :cond_0
    const-string v2, "CP_COMM: phone is not idle, without any oper"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5063
    :cond_1
    :goto_0
    return-void

    .line 5021
    :catch_0
    move-exception v0

    .line 5022
    .local v0, ex:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from isDualIdle()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 5025
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x9c40

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5026
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v1, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 5027
    .local v1, oldPowerState:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iput p1, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 5028
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5031
    :pswitch_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 5033
    invoke-direct {p0, v6, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5034
    :cond_3
    if-ne p1, v8, :cond_4

    .line 5036
    invoke-direct {p0, v6, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5037
    :cond_4
    if-ne p1, v5, :cond_1

    .line 5039
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5044
    :pswitch_1
    if-ne p1, v8, :cond_5

    .line 5046
    invoke-direct {p0, v6, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5047
    :cond_5
    if-ne p1, v5, :cond_1

    .line 5048
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5053
    :pswitch_2
    if-ne p1, v5, :cond_1

    .line 5054
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 5028
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerClientToNativeService()V
    .locals 2

    .prologue
    .line 1328
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1330
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1331
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1333
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 4898
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4899
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4901
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4902
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 4903
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4905
    monitor-exit v3

    .line 4909
    :goto_1
    return-void

    .line 4901
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4908
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #recordCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private resetNet()I
    .locals 2

    .prologue
    .line 5532
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5533
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "yulong.intent.action.RESET_NET_OPERATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5534
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5535
    const/4 v1, 0x1

    return v1
.end method

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 4705
    const/4 v1, 0x0

    .line 4708
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 4710
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 4711
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4717
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 4713
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "cardType"
    .parameter "mncMcc"
    .parameter "gsmOperId"
    .parameter "slotId"

    .prologue
    .line 4552
    const/4 v0, 0x0

    .line 4554
    .local v0, result:I
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd saveInfoToNativeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4556
    const/4 v1, 0x0

    return v1
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 2
    .parameter "pin"
    .parameter "slotId"

    .prologue
    .line 4524
    const/4 v0, 0x0

    .line 4526
    .local v0, result:I
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd savePinToNativeService"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4537
    const/4 v1, 0x0

    return v1
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2748
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2749
    .local v0, dsdsType:I
    const-string v2, "PhoneModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: selectCloseModemCdmaOrGsm commtpye  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    packed-switch v0, :pswitch_data_0

    .line 2908
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v9

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v5, :cond_0

    .line 2910
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2914
    :cond_0
    return-void

    .line 2754
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2755
    .local v1, gsmModemStatus:I
    const-string v2, "enter selectCloseModemCdmaOrGsm."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2757
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_2

    .line 2758
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2760
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2761
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2763
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2764
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2766
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    .line 2772
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_4

    if-ne v1, v5, :cond_4

    .line 2774
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v5, :cond_3

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v2, v5, :cond_3

    .line 2777
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_0

    .line 2768
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2769
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    goto :goto_1

    .line 2783
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    goto/16 :goto_0

    .line 2786
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    goto/16 :goto_0

    .line 2793
    .end local v1           #gsmModemStatus:I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectCloseModemCdmaOrGsm ActiveOrNoGsm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ActiveOrNoCdma = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mStateRadio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectCloseModemCdmaOrGsm mLeftSlotModemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRightSlotModemType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2800
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-ne v2, v5, :cond_6

    .line 2805
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2807
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 2809
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setModemPowerOperation single C not need"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2819
    :cond_5
    :goto_2
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2821
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2822
    iput v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2823
    const-string/jumbo v2, "selectOpenModemCdmaOrGsm mCardSelectedInfo  close mode ok "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2827
    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_16

    .line 2829
    :cond_7
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode in single"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2830
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    if-ne v2, v5, :cond_15

    .line 2832
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode single C not need"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2836
    :goto_3
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode out single"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2845
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v2, v7, :cond_a

    .line 2846
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_9

    .line 2847
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2851
    :cond_9
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2852
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2853
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2855
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v2, v7, :cond_c

    .line 2856
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_b

    .line 2857
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2861
    :cond_b
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2862
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2863
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2867
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v2, v5, :cond_e

    .line 2868
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_d

    .line 2869
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2873
    :cond_d
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2874
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2875
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2879
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v2, v5, :cond_10

    .line 2880
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v2, :cond_f

    .line 2881
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2885
    :cond_f
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2886
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2887
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2890
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v2, v5, :cond_11

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v2, v5, :cond_11

    .line 2893
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2895
    :cond_11
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v2, v7, :cond_12

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v2, v7, :cond_12

    .line 2898
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2900
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectCloseModemCdmaOrGsm mStateRadio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2902
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v9

    .line 2903
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v2, v8

    goto/16 :goto_0

    .line 2811
    :cond_13
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2812
    :cond_14
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_2

    .line 2834
    :cond_15
    invoke-virtual {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    goto/16 :goto_3

    .line 2838
    :cond_16
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v2, :cond_8

    .line 2841
    const-string v2, "CP_COMM: selectCloseModemCdmaOrGsm setSubscriptionMode  dualstandby"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    goto/16 :goto_4

    .line 2752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 12

    .prologue
    const/4 v7, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1982
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 1983
    .local v1, dsdsType:I
    const-string v4, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: selectOpenModemCdmaOrGsm commtpye  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    packed-switch v1, :pswitch_data_0

    .line 2131
    const-string v4, "CP_COMM: selectOpenModemCdmaOrGsm err!!!!"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2134
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v10

    if-ne v4, v8, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v4, v4, v11

    if-ne v4, v8, :cond_1

    .line 2137
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->unLockPinAfterModemReset()V

    .line 2140
    :cond_1
    :goto_1
    return-void

    .line 1988
    :pswitch_0
    const/4 v0, 0x1

    .line 1989
    .local v0, cdmaModemStatus:I
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v3

    .line 1990
    .local v3, gsmModemStatus:I
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 1991
    iget v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1993
    const-string/jumbo v4, "selectOpenModemCdmaOrGsm mGsmPhone.setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1994
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1997
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 1998
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v11

    goto :goto_1

    .line 2001
    :cond_2
    const-string/jumbo v4, "selectOpenModemCdmaOrGsm mCdmaPhone.setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2002
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2005
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v10

    goto :goto_0

    .line 2008
    :cond_3
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    .line 2010
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v4, :cond_4

    .line 2011
    const-string/jumbo v4, "selectOpenModemCdmaOrGsm  mIsUserSelectNet mCdmaPhone.setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2012
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2013
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2015
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    :goto_2
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v11

    .line 2021
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v7

    .line 2028
    :goto_3
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 2030
    const-string/jumbo v4, "selectOpenModemCdmaOrGsm  mIsUserSelectNet mGsmPhone.setModemPowerOperation"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2033
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2034
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2035
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2036
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 2037
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v9, v4, v5

    .line 2038
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v10

    goto/16 :goto_0

    .line 2016
    :catch_0
    move-exception v2

    .line 2018
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2024
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v11

    .line 2025
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v7

    goto :goto_3

    .line 2040
    :cond_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v10

    .line 2041
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v8, v4, v5

    goto/16 :goto_0

    .line 2048
    .end local v0           #cdmaModemStatus:I
    .end local v3           #gsmModemStatus:I
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectOpenModemCdmaOrGsm mUserWishSelectedInfo mLeftSlotModemType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRightSlotModemType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectOpenModemCdmaOrGsm mCardSelectedInfo  mGsmRadio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCdmaRadio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v5, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2055
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 2056
    iput v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 2057
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v10

    .line 2058
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v5, 0x6

    aput v8, v4, v5

    .line 2059
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v11

    .line 2060
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v4, v7

    .line 2061
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gtz v4, :cond_6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v4, :cond_f

    .line 2063
    :cond_6
    const-string v4, "CP_COMM: enter selectOpenModemCdmaOrGsm.222"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2064
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v4, v8, :cond_c

    .line 2066
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_7

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_7

    .line 2068
    const-string v4, "PhoneModeService"

    const-string/jumbo v5, "set mCardSelectedInfo.mCdmaRaido true with no card availible"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v8, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2071
    :cond_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2073
    :cond_8
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2074
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    monitor-enter v5

    .line 2076
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2080
    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2113
    :cond_9
    :goto_5
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_a

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v4, :cond_b

    .line 2115
    :cond_a
    const-string v4, "PhoneModeService"

    const-string/jumbo v5, "sleep 1 second with one or two card avalible in selectOpenModemCdmaOrGsm()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2123
    :cond_b
    :goto_6
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v4, :cond_0

    .line 2126
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSubscriptionMode(I)I

    .line 2127
    const-string v4, "CP_COMM: selectOpenModemCdmaOrGsm setSubscriptionMode  dualstandby"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2077
    :catch_1
    move-exception v2

    .line 2078
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "CP_COMM: interrupted while selectOpenModemCdmaOrGsm"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 2080
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2085
    :cond_c
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2087
    :cond_d
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2088
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    monitor-enter v5

    .line 2090
    :try_start_5
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2094
    :goto_7
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2097
    :cond_e
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    .line 2099
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v8, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_5

    .line 2091
    :catch_2
    move-exception v2

    .line 2092
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v4, "CP_COMM: interrupted while selectOpenModemCdmaOrGsm"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_7

    .line 2094
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 2103
    :cond_f
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_9

    .line 2105
    const-string v4, "CP_COMM: enter selectOpenModemCdmaOrGsm.333"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2106
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v4, :cond_9

    .line 2108
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v9, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2109
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v9, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_5

    .line 2118
    :catch_3
    move-exception v2

    .line 2120
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1986
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendBroadcastandActiveOrDeactive(II)V
    .locals 3
    .parameter "phoneid"
    .parameter "type"

    .prologue
    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter sendBroadcastandActiveOrDeactive phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PHONEID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1231
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1234
    return-void
.end method

.method private sendBroadcastandSendMessageForReboot()V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4784
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4785
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4790
    :cond_0
    :goto_0
    return-void

    .line 4787
    :catch_0
    move-exception v0

    .line 4788
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 4820
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4821
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4826
    :cond_0
    :goto_0
    return-void

    .line 4823
    :catch_0
    move-exception v0

    .line 4824
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSelectNetResult(Lcom/yulong/android/internal/telephony/PhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 4884
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 4885
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onSelectNetResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4890
    :cond_0
    :goto_0
    return-void

    .line 4887
    :catch_0
    move-exception v0

    .line 4888
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static setCardInfoBySlotId(Lcom/android/internal/telephony/IccCardStatus;II)I
    .locals 10
    .parameter "CarInfo"
    .parameter "cardslotid"
    .parameter "phonetype"

    .prologue
    .line 3024
    move v1, p1

    .line 3025
    .local v1, iSlotId:I
    const/4 v0, 0x0

    .line 3026
    .local v0, i:I
    const/4 v3, 0x0

    .line 3027
    .local v3, j:I
    const/4 v5, -0x1

    .line 3028
    .local v5, returnvalue:I
    const/4 v2, 0x0

    .line 3029
    .local v2, index:I
    if-nez p0, :cond_2

    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    .line 3030
    const-string v7, "PhoneModeService"

    const-string v8, "CardInfo = null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    .line 3032
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    .line 3060
    :cond_0
    :goto_0
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mHasCardOnSlotOne = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mHasCardOnSlotTwo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: setCardInfoBySlotId: cardslotid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " phonetype ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-nez v7, :cond_1

    .line 3066
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x0

    new-instance v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v9}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v9, v7, v8

    .line 3067
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x1

    new-instance v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v9}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v9, v7, v8

    .line 3068
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3069
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3071
    :cond_1
    if-gez v1, :cond_8

    .line 3072
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3074
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    move v6, v5

    .line 3250
    .end local v5           #returnvalue:I
    .local v6, returnvalue:I
    :goto_1
    return v6

    .line 3034
    .end local v6           #returnvalue:I
    .restart local v5       #returnvalue:I
    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 3035
    const-string v7, "PhoneModeService"

    const-string v8, "CardInfo = null, cardslotid == 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    goto/16 :goto_0

    .line 3037
    :cond_3
    if-nez p0, :cond_4

    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    .line 3038
    const-string v7, "PhoneModeService"

    const-string v8, "CardInfo = null, cardslotid == 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    goto/16 :goto_0

    .line 3041
    :cond_4
    const-string v7, "PhoneModeService"

    const-string v8, "CardInfo != null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    if-nez v1, :cond_6

    .line 3043
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3044
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v7, v8, :cond_5

    .line 3045
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    goto/16 :goto_0

    .line 3047
    :cond_5
    const/4 v7, 0x1

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    goto/16 :goto_0

    .line 3051
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3052
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v7, v8, :cond_7

    .line 3053
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    goto/16 :goto_0

    .line 3055
    :cond_7
    const/4 v7, 0x1

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    goto/16 :goto_0

    .line 3076
    :cond_8
    if-gez p2, :cond_9

    .line 3077
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    move v6, v5

    .line 3078
    .end local v5           #returnvalue:I
    .restart local v6       #returnvalue:I
    goto :goto_1

    .line 3081
    .end local v6           #returnvalue:I
    .restart local v5       #returnvalue:I
    :cond_9
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    if-nez v7, :cond_a

    .line 3082
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: nostatic mSlotCardInfoArray[iSlotId] == null "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 3085
    .end local v5           #returnvalue:I
    .restart local v6       #returnvalue:I
    goto/16 :goto_1

    .line 3087
    .end local v6           #returnvalue:I
    .restart local v5       #returnvalue:I
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 3088
    const/4 v2, 0x0

    .line 3107
    :goto_2
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: index =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v7

    if-nez v7, :cond_d

    .line 3109
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: the index application = null  "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 3110
    .end local v5           #returnvalue:I
    .restart local v6       #returnvalue:I
    goto/16 :goto_1

    .line 3090
    .end local v6           #returnvalue:I
    .restart local v5       #returnvalue:I
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCardApplication;->getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccConstants$AppState;->getintvalue()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication;->getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppState;->getintvalue()I

    move-result v8

    if-le v7, v8, :cond_c

    .line 3092
    const/4 v2, 0x1

    .line 3097
    :goto_3
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication;->getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 3102
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    .line 3103
    const-string v7, "PhoneModeService"

    const-string/jumbo v8, "mDualGAppState != 2"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3094
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 3099
    :pswitch_0
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mDualGAppState:I

    goto :goto_2

    .line 3112
    :cond_d
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmApplicationState:I

    .line 3113
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaApplicationState:I

    .line 3114
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication;->is3gAppType()I

    move-result v8

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    .line 3117
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardApplication;->getAppState()Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 3158
    const/4 v5, -0x1

    .line 3159
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3162
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 3163
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_2

    .line 3180
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: mCardType \ufffd\u01f7\ufffd"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :goto_5
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_e

    .line 3234
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_e

    .line 3235
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x3

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 3240
    :cond_e
    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->fakeDualModeCardId:I

    if-ne v1, v7, :cond_f

    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_f

    .line 3242
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 3245
    :cond_f
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: mSlotCardInfoArray["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: pin,cardtype returnvalue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 3250
    .end local v5           #returnvalue:I
    .restart local v6       #returnvalue:I
    goto/16 :goto_1

    .line 3119
    .end local v6           #returnvalue:I
    .restart local v5       #returnvalue:I
    :pswitch_1
    const/4 v5, 0x0

    .line 3120
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_4

    .line 3123
    :pswitch_2
    const/4 v5, 0x1

    .line 3124
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_4

    .line 3127
    :pswitch_3
    const/4 v5, 0x2

    .line 3128
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3129
    const/4 v7, 0x2

    if-ne p2, v7, :cond_10

    .line 3130
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setpinstate(Z)V

    goto/16 :goto_4

    .line 3132
    :cond_10
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setpinstate(Z)V

    goto/16 :goto_4

    .line 3136
    :pswitch_4
    const/4 v5, 0x3

    .line 3137
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x3

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3138
    const/4 v7, 0x2

    if-ne p2, v7, :cond_11

    .line 3139
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setpinstate(Z)V

    goto/16 :goto_4

    .line 3141
    :cond_11
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/IccCard;->setpinstate(Z)V

    goto/16 :goto_4

    .line 3147
    :pswitch_5
    const/4 v5, 0x4

    .line 3148
    goto/16 :goto_4

    .line 3150
    :pswitch_6
    const/4 v5, 0x5

    .line 3151
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_4

    .line 3154
    :pswitch_7
    const/4 v5, 0x6

    .line 3155
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_4

    .line 3165
    :pswitch_8
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3168
    :pswitch_9
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3171
    :pswitch_a
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x3

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3174
    :pswitch_b
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3177
    :pswitch_c
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3186
    :cond_12
    const/4 v4, -0x1

    .line 3187
    .local v4, n:I
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_3

    .line 3192
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: mCardType OK 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :goto_6
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_4

    .line 3201
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: mCardType OK 1"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :goto_7
    const/4 v7, -0x1

    if-eq v4, v7, :cond_13

    .line 3205
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_5

    .line 3222
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: mCardType \ufffd\u01f7\ufffd"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3189
    :pswitch_d
    const/4 v4, 0x1

    .line 3190
    goto :goto_6

    .line 3198
    :pswitch_e
    const/4 v4, 0x0

    .line 3199
    goto :goto_7

    .line 3207
    :pswitch_f
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, -0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3210
    :pswitch_10
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3213
    :pswitch_11
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x3

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3216
    :pswitch_12
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3219
    :pswitch_13
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x2

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3227
    :cond_13
    const-string v7, "PhoneModeService"

    const-string v8, "CP_COMM: mCardType CardType_DualMode"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, v1

    const/4 v8, 0x4

    iput v8, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_5

    .line 3097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 3117
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 3163
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 3187
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch

    .line 3196
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch

    .line 3205
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static setCardInfoofImsiBySlotId(ILjava/lang/String;I)V
    .locals 6
    .parameter "slot"
    .parameter "imsi"
    .parameter "phonetype"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 2958
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCardInfoofImsiBySlotId: slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phonetype ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIccId:Ljava/lang/String;

    .line 2962
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2963
    .local v0, dsdsType:I
    const-string v1, "PhoneModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: setCardInfoofImsiBySlotId commtpye  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    if-eqz v1, :cond_3

    .line 2966
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 2967
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    .line 2969
    packed-switch v0, :pswitch_data_0

    .line 3011
    :cond_0
    :goto_0
    return-void

    .line 2971
    :pswitch_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 2973
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 2979
    :pswitch_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 2981
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto :goto_0

    .line 2988
    :cond_1
    if-nez p0, :cond_2

    .line 2989
    const-string/jumbo v1, "yulong.left.g.ismi"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    :goto_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 2999
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 3001
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p0

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto/16 :goto_0

    .line 2993
    :cond_2
    const-string/jumbo v1, "yulong.right.g.ismi"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3006
    :cond_3
    const-string v1, "PhoneModeService"

    const-string v2, "CP_COMM: setCardInfoBySlotId: mSlotCardInfoArray[slot] = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2969
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setCardInfoofPinBySlotId(ILjava/lang/String;)V
    .locals 1
    .parameter "slot"
    .parameter "pin"

    .prologue
    .line 3262
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    .line 3263
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 3265
    :cond_0
    return-void
.end method

.method public static setFakeDualModeCard(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 5656
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5657
    sput p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->fakeDualModeCardId:I

    .line 5658
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p0

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 5659
    const/4 v0, 0x1

    .line 5661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 0
    .parameter "cdmaPhone"
    .parameter "gsmPhone"
    .parameter "context"

    .prologue
    .line 1349
    sput-object p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1350
    sput-object p1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1351
    sput-object p2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    .line 1352
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .parameter "iPreferredModemType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4070
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    if-ne v3, p1, :cond_0

    .line 4077
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    :goto_0
    return v2

    .line 4083
    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSlotConnectMode(I)V
    .locals 0
    .parameter "SlotConnectMode"

    .prologue
    .line 4511
    sput p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 4513
    return-void
.end method

.method private switchSlotBindMode()Z
    .locals 2

    .prologue
    .line 4215
    const/4 v0, 0x1

    .line 4217
    .local v0, success:Z
    const-string v1, "CP_COMM: 9060\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u03b5\ufffdNativeService\ufffd\ufffd\ufffd\ufffd switchSlotBindMode"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    .line 4219
    return v0
.end method

.method private unLockPinAfterModemReset()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x6

    const/4 v7, 0x1

    .line 2146
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2147
    .local v0, dsdsType:I
    const-string v3, "PhoneModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: unLockPinAfterModemReset commtpye  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    packed-switch v0, :pswitch_data_0

    .line 2182
    :goto_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v8

    if-ne v3, v7, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v9

    if-ne v3, v7, :cond_0

    .line 2184
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm()V

    .line 2186
    :cond_0
    return-void

    .line 2152
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v2

    .line 2153
    .local v2, slotId:I
    const/4 v1, 0x0

    .line 2154
    .local v1, sleepSeconds:Z
    const-string v3, "CP_COMM: enter unLockPinAfterModemReset."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2156
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v9

    .line 2157
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v2

    .line 2159
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v8

    if-nez v3, :cond_2

    .line 2161
    if-nez v1, :cond_1

    .line 2163
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :cond_1
    :goto_1
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2172
    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v8

    goto :goto_0

    .line 2178
    .end local v1           #sleepSeconds:Z
    .end local v2           #slotId:I
    :pswitch_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v9

    .line 2179
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v7, v3, v8

    goto :goto_0

    .line 2164
    .restart local v1       #sleepSeconds:Z
    .restart local v2       #slotId:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1402
    const/4 v0, 0x0

    .line 1404
    .local v0, errNo:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->Isequal(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    const-string v2, "CP_COMM: broadcastSelectNetFinish  uneuqal "

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1411
    const-string p1, "RILError"

    .line 1414
    :cond_0
    const-string v2, "Success"

    if-ne p1, v2, :cond_5

    .line 1415
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_1

    .line 1416
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1419
    :cond_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;)V

    .line 1421
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_3

    .line 1422
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1427
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_4

    .line 1428
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1509
    :cond_2
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1510
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1511
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1512
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1513
    return-void

    .line 1424
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1430
    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1432
    :cond_5
    const-string v2, "RILError"

    if-eq p1, v2, :cond_6

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_2

    .line 1434
    :cond_6
    const/4 v1, 0x0

    .line 1436
    .local v1, i:I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_8

    .line 1437
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_7

    .line 1438
    add-int/lit8 v0, v1, 0x1

    .line 1443
    :cond_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1436
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1446
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v6, v2, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_9

    .line 1448
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1449
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1455
    :goto_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 1456
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_a

    .line 1457
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1458
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1464
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_b

    .line 1465
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1466
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1472
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_c

    .line 1473
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1504
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_2

    .line 1505
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1451
    :cond_9
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPreferredModemType(I)Z

    .line 1452
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_3

    .line 1460
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1461
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1468
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1469
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1475
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1481
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_e

    .line 1482
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1483
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1489
    :goto_7
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_f

    .line 1490
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1491
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1497
    :goto_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1498
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6

    .line 1485
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1486
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_7

    .line 1493
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1494
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_8

    .line 1500
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_6
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4691
    if-nez p1, :cond_0

    .line 4692
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I

    .line 4693
    iput v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I

    .line 4695
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4696
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4699
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 4701
    return v1
.end method

.method private waitBeforeorAfterUnlockPin()V
    .locals 5

    .prologue
    .line 4044
    const-string v1, "CP_COMM: waitActiveCardBeforeUnlockPin "

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4050
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v2

    .line 4052
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4056
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 4057
    return-void

    .line 4053
    :catch_0
    move-exception v0

    .line 4054
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 4056
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 4010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4012
    iget v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 4017
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4019
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4033
    :goto_0
    return v5

    .line 4025
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4027
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4031
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4028
    :catch_0
    move-exception v0

    .line 4029
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4020
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public ActivateCardBeforeUnlockPin(II)V
    .locals 5
    .parameter "slotId"
    .parameter "SlotConnectMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5392
    const-string v1, "CP_COMM: enter activate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5394
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v3, :cond_3

    if-ne p2, v3, :cond_3

    .line 5396
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 5397
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5400
    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin ,SET ONLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5402
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5410
    :cond_2
    :goto_0
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 5411
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    .line 5434
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: ActivateCardBeforeUnlockPin mNeedUnlockMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5437
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitBeforeorAfterUnlockPin()V

    .line 5438
    return-void

    .line 5403
    :catch_0
    move-exception v0

    .line 5405
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 5416
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 5417
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_4

    .line 5420
    const-string v1, "CP_COMM: ActivateCardBeforeUnlockPin ,SET ONLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5422
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5429
    :cond_4
    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 5430
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    goto :goto_1

    .line 5423
    :catch_1
    move-exception v0

    .line 5425
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public DeactivateCardAfterUnlockPin(IIIZ)V
    .locals 6
    .parameter "slotId"
    .parameter "SlotConnectMode"
    .parameter "callback"
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 5442
    const-string v1, "CP_COMM: enter deactivate net"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5453
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-ne p1, v5, :cond_4

    if-ne p2, v5, :cond_4

    .line 5455
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-nez p4, :cond_3

    .line 5472
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5473
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5475
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin ,SET OFFLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5477
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5520
    :cond_2
    :goto_1
    return-void

    .line 5458
    :cond_3
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, p2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    .line 5462
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 5464
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 5465
    const-string v1, "CP_COMM: wait untill deactive card1 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5469
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5466
    :catch_0
    move-exception v0

    .line 5467
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 5478
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 5480
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 5488
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_5

    if-nez p4, :cond_5

    .line 5505
    :goto_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 5506
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    if-nez v1, :cond_2

    .line 5507
    const-string v1, "CP_COMM: DeactivateCardAfterUnlockPin ,SET OFFLINE"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5509
    const-wide/16 v1, 0x3e8

    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5510
    :catch_2
    move-exception v0

    .line 5512
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 5491
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, p2}, Lcom/android/internal/telephony/IccCard;->processActivateRequestsbyPhone(Landroid/os/Message;II)I

    .line 5495
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    monitor-enter v2

    .line 5497
    :try_start_5
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 5498
    const-string v1, "CP_COMM: wait untill deactive card2 success"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5502
    :goto_4
    :try_start_6
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 5499
    :catch_3
    move-exception v0

    .line 5500
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v1, "CP_COMM: interrupted while deactive"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4
.end method

.method acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 5622
    const-string v1, "CP_COMM: Acquiring cpu wake lock"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5623
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 5634
    :goto_0
    return-void

    .line 5627
    :cond_0
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5630
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "PhoneModeService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5633
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public canGetCardInfo()V
    .locals 1

    .prologue
    .line 5563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 5564
    return-void
.end method

.method public cdmaSubActiveNotify()V
    .locals 1

    .prologue
    .line 5559
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5560
    return-void
.end method

.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 11
    .parameter "iSlotId"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x5

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3275
    const-string v3, "enter getCardInfoBySlotId"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3277
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3278
    const-string/jumbo v3, "persist.sys.fastbootup.mode"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 3279
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    if-eqz v3, :cond_0

    .line 3280
    const-string v3, "getCardInfoBySlotId silenceReboot == true"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3562
    :goto_0
    return-object v3

    .line 3286
    :cond_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v3

    if-gt v3, v7, :cond_1

    .line 3288
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3291
    const-string v3, "getCardInfoBySlotId checkcard no ok "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3292
    goto :goto_0

    .line 3294
    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v3

    if-nez v3, :cond_3

    .line 3295
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 3296
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3297
    const-string v3, "getCardInfoBySlotId 1 checkcard no ok "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3298
    goto :goto_0

    .line 3307
    :cond_2
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 3308
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3309
    const-string v3, "getCardInfoBySlotId 2 checkcard no ok "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3310
    goto :goto_0

    .line 3321
    :cond_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3324
    :cond_4
    const-string v3, "getCardInfoBySlotId(1 || 2)checkcard no ok "

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3325
    goto :goto_0

    .line 3334
    :cond_5
    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    if-nez v3, :cond_6

    .line 3335
    const-string v3, "cdma.ruim.insert.state"

    const-string v5, "ABSENT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    const-string v3, "ABSENT"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 3340
    :cond_6
    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    if-ne v3, v7, :cond_f

    .line 3341
    const-string v3, "gsm.sim.insert.state"

    const-string v5, "PRESENT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3343
    const-string v3, "PRESENT"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    .line 3349
    :cond_7
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoBySlotId getOperatorType =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3351
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v3

    const/16 v5, 0x32

    if-ne v3, v5, :cond_13

    .line 3352
    const-string/jumbo v3, "yulong.phoneone.sid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3354
    .local v2, sid:Ljava/lang/String;
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSpn()Ljava/lang/String;

    move-result-object v1

    .line 3356
    .local v1, ruimspn:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 3357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoBySlotId ruimspn =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3365
    :goto_2
    if-eqz v1, :cond_8

    .line 3366
    const-string v3, "MTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3367
    const-string v3, "PRESENT"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 3368
    const-string v3, "cdma.ruim.insert.state"

    const-string v5, "PRESENT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    if-eqz v3, :cond_8

    .line 3372
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 3374
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcast for RUIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cdma.ruim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.RUIM_INSERT_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3383
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v3, "state"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3460
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    :goto_3
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    if-eqz v3, :cond_b

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_b

    .line 3464
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "40400"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_9

    if-eqz v2, :cond_9

    const-string v3, "14844"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eq v3, v7, :cond_a

    :cond_9
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "40589"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_12

    if-eqz v2, :cond_12

    const-string v3, "14554"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v7, :cond_12

    .line 3470
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoBySlotId 1 ok mCdmaImsi =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3493
    .end local v1           #ruimspn:Ljava/lang/String;
    .end local v2           #sid:Ljava/lang/String;
    :cond_b
    :goto_4
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RUIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cdma.ruim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RUIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_INSERT_STATE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.sim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    if-nez v3, :cond_c

    .line 3508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: getCardInfoBySlotId:  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  = null "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3515
    :cond_c
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    const-string v5, "ABSENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3516
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    if-eqz v3, :cond_d

    .line 3517
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 3519
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcast for RUIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cdma.ruim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.RUIM_INSERT_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3528
    .restart local v0       #intent:Landroid/content/Intent;
    const-string/jumbo v3, "state"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3529
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3537
    .end local v0           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    const-string v5, ""

    if-eq v3, v5, :cond_e

    .line 3538
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    if-eqz v3, :cond_e

    .line 3539
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_SIM:Z

    .line 3541
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcast for SIM_INSERT_STATE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gsm.sim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.SIM_INSERT_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3550
    .restart local v0       #intent:Landroid/content/Intent;
    const-string/jumbo v3, "state"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3551
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3554
    .end local v0           #intent:Landroid/content/Intent;
    :cond_e
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    if-nez v3, :cond_14

    .line 3555
    const-string v3, "CP_COMM: mSlotCardInfoArray getCardInfoBySlotId == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move-object v3, v4

    .line 3556
    goto/16 :goto_0

    .line 3344
    :cond_f
    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotTwo:I

    if-nez v3, :cond_7

    .line 3345
    const-string v3, "gsm.sim.insert.state"

    const-string v5, "ABSENT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const-string v3, "ABSENT"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    goto/16 :goto_1

    .line 3359
    .restart local v1       #ruimspn:Ljava/lang/String;
    .restart local v2       #sid:Ljava/lang/String;
    :cond_10
    const-string v3, "getCardInfoBySlotId ruimspn =  null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3388
    :cond_11
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v8

    iput v10, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3389
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3390
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 3391
    const-string v3, "cdma.ruim.insert.state"

    const-string v5, "NOMTS"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    const-string v3, "NOMTS"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    .line 3395
    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    if-eqz v3, :cond_8

    .line 3396
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isFirstIn_RUIM:Z

    .line 3398
    const-string v3, "PhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcast for RUIM_INSERT_STATE :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cdma.ruim.insert.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "....."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.RUIM_INSERT_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3407
    .restart local v0       #intent:Landroid/content/Intent;
    const-string/jumbo v3, "state"

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3408
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 3473
    .end local v0           #intent:Landroid/content/Intent;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoBySlotId 1 mCdmaImsi =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3475
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    iput v10, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3476
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->MemSetSlotCardInfo()V

    .line 3477
    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    .line 3478
    const-string v3, "gsm.sim.insert.state"

    const-string v5, "NOMTS"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    const-string v3, "NOMTS"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    goto/16 :goto_4

    .line 3486
    .end local v1           #ruimspn:Ljava/lang/String;
    .end local v2           #sid:Ljava/lang/String;
    :cond_13
    sget v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mHasCardOnSlotOne:I

    if-ne v3, v7, :cond_b

    .line 3487
    const-string v3, "cdma.ruim.insert.state"

    const-string v5, "PRESENT"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3490
    const-string v3, "PRESENT"

    iput-object v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    goto/16 :goto_4

    .line 3559
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM:iSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getCardInfoBySlotId == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3562
    sget-object v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto/16 :goto_0
.end method

.method public getCardStatusByPhoneId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, -0x1

    .line 4401
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4403
    .local v0, slotId:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4410
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4411
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4416
    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .parameter "iSlotId"

    .prologue
    .line 3589
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3591
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 3593
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3595
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 3600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3602
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 1
    .parameter "phoneid"

    .prologue
    .line 5542
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataFirewall()I

    move-result v0

    return v0
.end method

.method public getIccLockEnabled(I)I
    .locals 6
    .parameter "phoneId"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 5571
    const/4 v1, 0x0

    .line 5574
    .local v1, ret:Z
    if-ne p1, v3, :cond_2

    .line 5575
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 5576
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    .line 5587
    :cond_0
    :goto_0
    const-string v2, "PhoneModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccLockEnabled phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    if-ne v1, v5, :cond_4

    .line 5589
    const/4 v0, 0x1

    .line 5593
    .local v0, re:I
    :goto_1
    return v0

    .line 5578
    .end local v0           #re:I
    :cond_1
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5580
    :cond_2
    if-ne p1, v5, :cond_0

    .line 5581
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 5582
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5584
    :cond_3
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0

    .line 5591
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #re:I
    goto :goto_1
.end method

.method public getPinPukValidCount(II)I
    .locals 12
    .parameter "pinType"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x6

    const/4 v10, 0x1

    .line 3614
    const/4 v6, -0x5

    .line 3616
    .local v6, result:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", sid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", isSelectNet="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3619
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_0

    .line 3620
    const/4 v7, -0x4

    .line 3763
    :goto_0
    return v7

    .line 3623
    :cond_0
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v7, v7, p2

    iget v7, v7, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v7, :cond_2

    :cond_1
    move v7, v6

    .line 3625
    goto :goto_0

    .line 3628
    :cond_2
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v5

    .line 3629
    .local v5, phoneId:I
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    if-ne v5, v11, :cond_3

    .line 3631
    const/4 v7, -0x3

    goto :goto_0

    .line 3634
    :cond_3
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 3635
    if-ne v5, v11, :cond_4

    .line 3636
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v4

    .line 3637
    .local v4, gsmRunMode:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getPreRunMode()I

    move-result v3

    .line 3638
    .local v3, gsmPreRunMode:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPinPukValidCount gsmRunMode = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "gsmPreRunMode = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3639
    if-ne v3, v10, :cond_5

    if-nez v4, :cond_5

    .line 3640
    const-string v7, "gsm card haven\'t be activated"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 3641
    goto :goto_0

    .line 3643
    .end local v3           #gsmPreRunMode:I
    .end local v4           #gsmRunMode:I
    :cond_4
    if-ne v5, v10, :cond_5

    .line 3644
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getrunmode()I

    move-result v1

    .line 3645
    .local v1, cdmaRunMode:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getPreRunMode()I

    move-result v0

    .line 3646
    .local v0, cdmaPreRunMode:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPinPukValidCount cdmaRunMode = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "cdmaPreRunMode = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3647
    if-ne v0, v10, :cond_5

    if-nez v1, :cond_5

    .line 3648
    const-string v7, "cdma card haven\'t be activated"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 3649
    goto/16 :goto_0

    .line 3654
    .end local v0           #cdmaPreRunMode:I
    .end local v1           #cdmaRunMode:I
    :cond_5
    iput p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3655
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3656
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v2

    .line 3657
    .local v2, dsdstype:I
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: getPinPukValidCount commtpye  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    packed-switch v2, :pswitch_data_0

    :goto_1
    move v7, v6

    .line 3763
    goto/16 :goto_0

    .line 3662
    :pswitch_0
    invoke-direct {p0, p1, v5, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSynPinPukValidCount(III)I

    move-result v6

    .line 3663
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V

    goto :goto_1

    .line 3658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public gsmSubActiveNotify()V
    .locals 1

    .prologue
    .line 5554
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 5555
    return-void
.end method

.method public isActivePhoneByPhoneId(I)I
    .locals 7
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 4441
    const/4 v1, 0x0

    .line 4442
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 4443
    .local v0, radioState:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4444
    if-ne p1, v3, :cond_3

    .line 4445
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4449
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 4451
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    .line 4458
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 4459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: mSlotCardInfoArray[slotId] = null. phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 4477
    :cond_2
    :goto_1
    return v2

    .line 4446
    :cond_3
    if-ne p1, v4, :cond_0

    .line 4447
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 4465
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isActivePhoneByPhoneId phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "radioState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "mSlotCardInfoArray[slotId].mCardType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4469
    if-eqz v0, :cond_6

    .line 4470
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 4471
    goto :goto_1

    :cond_5
    move v2, v4

    .line 4473
    goto :goto_1

    .line 4477
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isHasCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4427
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_0

    .line 4430
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSecdmodem(I)Z
    .locals 2
    .parameter "phoneId"

    .prologue
    .line 5600
    invoke-static {p1}, Lcom/yulong/android/modemservice/CPPhoneProperties;->IsNeedActiveCard(I)Z

    move-result v0

    .line 5601
    .local v0, ret:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .parameter "actionId"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    .line 4329
    const/4 v0, 0x0

    .line 4331
    .local v0, result:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4332
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getValidCardNum()I

    move-result v0

    .line 4366
    :cond_0
    :goto_0
    return v0

    .line 4333
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4334
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 4335
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 4336
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 4337
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 4338
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 4339
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 4340
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 4341
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 4342
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 4343
    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    .line 4344
    move v1, p2

    .line 4345
    .local v1, status:I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 4346
    goto :goto_0

    .end local v1           #status:I
    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    .line 4347
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 4348
    :cond_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_9

    .line 4349
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->resetNet()I

    move-result v0

    goto :goto_0

    .line 4350
    :cond_9
    const/16 v2, 0xb

    if-ne p1, v2, :cond_a

    .line 4353
    invoke-virtual {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getIccLockEnabled(I)I

    move-result v0

    goto :goto_0

    .line 4354
    :cond_a
    const/16 v2, 0xc

    if-ne p1, v2, :cond_b

    .line 4355
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 4358
    :cond_b
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 4359
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_c

    .line 4360
    const/4 v0, 0x0

    goto :goto_0

    .line 4362
    :cond_c
    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
.end method

.method public registerForCdmaSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5192
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5193
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5194
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5195
    monitor-exit v2

    .line 5197
    return-void

    .line 5195
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCdmaSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5166
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5167
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5168
    monitor-exit v2

    .line 5169
    return-void

    .line 5168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubActive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5208
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5209
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5210
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5211
    monitor-exit v2

    .line 5212
    return-void

    .line 5211
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForGsmSubDeactive(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 5178
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5179
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 5180
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 5181
    monitor-exit v2

    .line 5183
    return-void

    .line 5181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseCpuLock()V
    .locals 1

    .prologue
    .line 5641
    const-string v0, "CP_COMM: Releasing cpu wake lock"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 5642
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 5643
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5644
    const/4 v0, 0x0

    sput-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5646
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1374
    const-string v0, "CP_COMM: PhoneModeService  reset "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1375
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I

    .line 1376
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I

    .line 1377
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z

    .line 1378
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I

    .line 1379
    sput v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoCdma:I

    .line 1380
    sput v3, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActiveOrNoGsm:I

    .line 1381
    sput v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    .line 1382
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1383
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 1384
    iput-boolean v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1385
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1386
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1387
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1388
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1389
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1390
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1391
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1392
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput v1, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1394
    return-void
.end method

.method public savaAllCardInfoToNativeService(Lcom/yulong/android/internal/telephony/SlotCardInfo;I)I
    .locals 1
    .parameter "slotInfo"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5652
    const/4 v0, 0x0

    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 5
    .parameter "modetype"
    .parameter "powersate"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectCloseModemCdmaOrGsmInternal  phonetype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " powersate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2716
    if-ne p1, v4, :cond_1

    .line 2717
    if-nez p2, :cond_0

    .line 2718
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    .line 2742
    :goto_0
    return-void

    .line 2723
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2728
    :cond_1
    if-ne p1, v3, :cond_3

    .line 2729
    if-nez p2, :cond_2

    .line 2730
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2734
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v0, v0, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_0

    .line 2739
    :cond_3
    const-string/jumbo v0, "selectCloseModemCdmaOrGsmInternal err phonetype "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 11
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    .line 1663
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1664
    const/4 v7, 0x3

    .line 1975
    :goto_0
    return v7

    .line 1667
    :cond_0
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getRilresetFlag()I

    move-result v6

    .line 1668
    .local v6, rilresetFlag:I
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rilresetFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mSelectLock = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    if-nez p3, :cond_1

    const/4 v7, 0x1

    if-eq p1, v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    if-ne p3, v7, :cond_3

    const/4 v7, 0x1

    if-ne p2, v7, :cond_3

    .line 1674
    :cond_2
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "zhanghao selectModemAndPreferredSlot() mCtoGState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    sget-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    if-eqz v7, :cond_3

    .line 1677
    const/4 v7, 0x0

    sput-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    .line 1680
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1682
    .local v4, mCM:Landroid/net/ConnectivityManager;
    sget-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1683
    const/4 v7, 0x0

    sput-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    .line 1687
    .end local v4           #mCM:Landroid/net/ConnectivityManager;
    :cond_3
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1689
    :cond_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1690
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1691
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    .line 1692
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1695
    :cond_5
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canSwitchNetWorkbydsds()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_7

    .line 1696
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sSmsDelayCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-gt v7, p1, :cond_6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-le v7, p2, :cond_7

    .line 1699
    :cond_6
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1700
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1701
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    .line 1702
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1703
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1705
    sget v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 1706
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1709
    :cond_7
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->sSmsDelayCount:I

    .line 1712
    const-string v7, "ABSENT"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->ruim_insert_state:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "ABSENT"

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->sim_insert_state:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1714
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p1, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v7, p2, :cond_a

    .line 1716
    :cond_9
    const-string v7, "PhoneModeService"

    const-string v8, "The last action : not airmode ,then close net and back"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1718
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1719
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    .line 1720
    const/4 p1, 0x0

    .line 1721
    const/4 p2, 0x0

    .line 1722
    const/4 p3, -0x1

    .line 1749
    :goto_1
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "nextselect[0] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; nextselect[1] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; nextselect[2] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v7

    if-nez v7, :cond_11

    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getCheckCardState()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1752
    const-string/jumbo v7, "selectModemAndPreferredSlot checkcard no ok "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1753
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1724
    :cond_a
    const-string v7, "PhoneModeService"

    const-string v8, "The last action: airMode OR  same choice"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1726
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1727
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    goto :goto_1

    .line 1731
    :cond_b
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lez v7, :cond_c

    if-lez p1, :cond_c

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p1, :cond_f

    :cond_c
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lez v7, :cond_d

    if-lez p2, :cond_d

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, p2, :cond_f

    :cond_d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, p1, :cond_e

    if-nez p1, :cond_f

    :cond_e
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p2, :cond_10

    if-eqz p2, :cond_10

    .line 1735
    :cond_f
    const-string v7, "PhoneModeService"

    const-string/jumbo v8, "mSlotConnectMode changes , what dsdstype gonna do: airmode and back"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1737
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1738
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    .line 1739
    const/4 p1, 0x0

    .line 1740
    const/4 p2, 0x0

    .line 1741
    const/4 p3, -0x1

    goto/16 :goto_1

    .line 1743
    :cond_10
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x0

    aput p1, v7, v8

    .line 1744
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x1

    aput p2, v7, v8

    .line 1745
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I

    const/4 v8, 0x2

    aput p3, v7, v8

    goto/16 :goto_1

    .line 1756
    :cond_11
    const/4 v3, 0x0

    .line 1757
    .local v3, i:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: PhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", preSID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1763
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v7

    const/16 v8, 0x32

    if-ne v7, v8, :cond_12

    .line 1764
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->isHasCardforIndia:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 1765
    const-string/jumbo v7, "selectModemAndPreferredSlot india no mts CARD "

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1766
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1767
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1768
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1772
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkUserSelectValid(III)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1774
    const-string v7, "CP_COMM: selectModemAndPreferredSlot  SELECT_NET_CHOICE_ERROR"

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1775
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1778
    :cond_13
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    .line 1779
    .local v1, dsdstype:I
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: selectModemAndPreferredSlot commtpye  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    packed-switch v1, :pswitch_data_0

    .line 1826
    :cond_14
    :goto_2
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1827
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1828
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p3, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1829
    if-nez p3, :cond_15

    .line 1830
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p1, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1833
    :cond_15
    const/4 v7, 0x1

    if-ne p3, v7, :cond_16

    .line 1834
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iput p2, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1837
    :cond_16
    const/4 v7, -0x1

    if-eq p3, v7, :cond_17

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-nez v7, :cond_18

    .line 1839
    :cond_17
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1842
    :cond_18
    const/4 v7, 0x1

    if-eq p1, v7, :cond_19

    const/4 v7, 0x1

    if-ne v7, p2, :cond_21

    .line 1844
    :cond_19
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1849
    :goto_3
    const/4 v7, 0x2

    if-eq p1, v7, :cond_1a

    const/4 v7, 0x2

    if-ne v7, p2, :cond_22

    .line 1851
    :cond_1a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1856
    :goto_4
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->canStartNet(I)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1857
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 1785
    :pswitch_0
    const/4 v7, 0x1

    if-eq p2, v7, :cond_1b

    const/4 v7, 0x2

    if-ne p1, v7, :cond_1c

    .line 1787
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode p = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1789
    const/4 v7, 0x1

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1792
    :cond_1c
    if-nez p1, :cond_1d

    if-eqz p2, :cond_14

    .line 1796
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode p = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 1798
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1799
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1805
    :pswitch_1
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    goto/16 :goto_2

    .line 1810
    :pswitch_2
    const/4 v7, 0x2

    if-eq p1, v7, :cond_1e

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1f

    .line 1812
    :cond_1e
    const/4 v7, 0x1

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1815
    :cond_1f
    if-nez p1, :cond_20

    if-eqz p2, :cond_14

    .line 1819
    :cond_20
    const/4 v7, 0x0

    sput v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 1820
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CP_COMM: selectModemAndPreferredSlot  mSlotConnectMode a = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1846
    :cond_21
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto/16 :goto_3

    .line 1853
    :cond_22
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto/16 :goto_4

    .line 1859
    :cond_23
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    .line 1861
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v7

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, v8, :cond_24

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v7}, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->access$4200(Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v7

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v7, v8, :cond_25

    .line 1864
    :cond_24
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1865
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1866
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;

    iget-object v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    const/4 v8, 0x0

    iput v8, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1869
    :cond_25
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v7, p1, :cond_26

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v7, p2, :cond_26

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v7, v8, :cond_26

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v7, v7, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v7, v8, :cond_26

    .line 1873
    const-string v7, "PhoneModeService"

    const-string/jumbo v8, "shixiaogang selectModemAndPreferedSlotId() the two modemtypes are as same as the previous ones,just return FINISH."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1882
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1886
    :cond_26
    const/4 v7, -0x1

    if-eq p3, v7, :cond_29

    const/4 v7, 0x4

    invoke-virtual {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySlotId(I)I

    move-result v8

    if-ne v7, v8, :cond_29

    .line 1887
    if-nez p3, :cond_27

    const/4 v7, 0x2

    if-eq p1, v7, :cond_28

    :cond_27
    const/4 v7, 0x1

    if-ne p3, v7, :cond_29

    const/4 v7, 0x2

    if-ne p2, v7, :cond_29

    .line 1890
    :cond_28
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1891
    .restart local v4       #mCM:Landroid/net/ConnectivityManager;
    const/4 v7, 0x1

    sput-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    .line 1892
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    sput-boolean v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    .line 1893
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1894
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1895
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming_2"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1896
    const-string v7, "PhoneModeService"

    const-string/jumbo v8, "prefer card is dualmode card and it is gsm modem set MOBILE_DATA and DATA_ROAMING to disable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string v7, "PhoneModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "zhanghao CtoG mCtoGState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCtoGState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mDataState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    .end local v4           #mCM:Landroid/net/ConnectivityManager;
    :cond_29
    const/4 v3, 0x0

    :goto_5
    const/16 v7, 0xb

    if-gt v3, v7, :cond_2a

    .line 1902
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    aput v8, v7, v3

    .line 1901
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1905
    :cond_2a
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x7

    const/4 v9, 0x1

    aput v9, v7, v8

    .line 1907
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->checkWhetherNeedSwitchBindMode(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 1910
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v7, :cond_2e

    .line 1911
    const/4 v5, 0x0

    .line 1912
    .local v5, ret:Z
    const/4 v0, -0x1

    .line 1913
    .local v0, cdmaModemStatus:I
    const/4 v2, -0x1

    .line 1918
    .local v2, gsmModemStatus:I
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 1919
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getModemPowerStatus(I)I

    move-result v2

    .line 1922
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2c

    .line 1925
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v5

    .line 1932
    :goto_6
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2d

    .line 1936
    sget-object v7, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v5

    .line 1943
    :goto_7
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2b

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2b

    .line 1945
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->switchSlotBindMode()Z

    .line 1963
    .end local v0           #cdmaModemStatus:I
    .end local v2           #gsmModemStatus:I
    .end local v5           #ret:Z
    :cond_2b
    :goto_8
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v8, 0x33

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1964
    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v7, :cond_30

    .line 1965
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x9c40

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1975
    :goto_9
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1929
    .restart local v0       #cdmaModemStatus:I
    .restart local v2       #gsmModemStatus:I
    .restart local v5       #ret:Z
    :cond_2c
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v7, v8

    goto :goto_6

    .line 1940
    :cond_2d
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput v9, v7, v8

    goto :goto_7

    .line 1951
    .end local v0           #cdmaModemStatus:I
    .end local v2           #gsmModemStatus:I
    .end local v5           #ret:Z
    :cond_2e
    const/4 v3, 0x0

    :goto_a
    const/4 v7, 0x2

    if-gt v3, v7, :cond_2f

    .line 1952
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I

    const/4 v8, 0x1

    aput v8, v7, v3

    .line 1951
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1954
    :cond_2f
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x7530

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1955
    const-string v7, "PhoneModeService"

    const-string/jumbo v8, "mSelectLock = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSelectLock:Z

    .line 1960
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V

    goto :goto_8

    .line 1970
    :cond_30
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/32 v9, 0x9c40

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 1782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .parameter "callback"
    .parameter "events"

    .prologue
    .line 4727
    if-eqz p2, :cond_2

    .line 4728
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4730
    const/4 v3, 0x0

    .line 4732
    .local v3, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4733
    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 4735
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .local v4, r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4736
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4738
    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 4749
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->events:I

    .line 4750
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4754
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :goto_2
    return-void

    .line 4735
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_0

    .line 4743
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/PhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4744
    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 4745
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/PhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 4746
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4750
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 4752
    .end local v3           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 4750
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/PhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 5523
    sput p1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    .line 5524
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 1
    .parameter "phoneid"
    .parameter "responseCode"

    .prologue
    .line 5549
    sget-object v0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneBase;->setDataFirewall(I)Z

    .line 5550
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5527
    const-string/jumbo v0, "yulong.net.select"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5529
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "phoneId"

    .prologue
    .line 4570
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4571
    .local v0, slotId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: setPinByIccLockSettings sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 4574
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 4576
    if-nez v0, :cond_0

    .line 4577
    const-string/jumbo v1, "yulong.left.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4585
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 4587
    const/4 v1, 0x1

    return v1

    .line 4581
    :cond_0
    const-string/jumbo v1, "yulong.right.pin"

    sget-object v2, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSilenceRebootFlag()V
    .locals 1

    .prologue
    .line 5567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->silenceReboot:Z

    .line 5568
    return-void
.end method

.method setSubscriptionMode(I)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 2678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubscriptionMode  mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2679
    if-ne p1, v4, :cond_0

    .line 2693
    const/4 v1, 0x0

    .line 2707
    :goto_0
    return v1

    .line 2696
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2697
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x36

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2699
    .local v0, callback:Landroid/os/Message;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2700
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    .line 2707
    :goto_1
    sget v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->setsubmodestate:I

    monitor-exit v2

    goto :goto_0

    .line 2708
    .end local v0           #callback:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2704
    .restart local v0       #callback:Landroid/os/Message;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 10
    .parameter "pin"
    .parameter "slotId"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 3823
    const/4 v4, 0x0

    .line 3824
    .local v4, result:Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    .line 3825
    .local v3, phoneId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isSelectNet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3827
    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v6, :cond_0

    .line 3904
    :goto_0
    return v5

    .line 3830
    :cond_0
    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3831
    iput v3, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3835
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3837
    sget v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {p0, p2, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActivateCardBeforeUnlockPin(II)V

    .line 3838
    const-string v5, "CP_COMM: phone is activated ,start supplyDualpin"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3840
    const-wide/16 v5, 0x5dc

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3846
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5, p1, v3}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v4

    .line 3848
    if-eqz v4, :cond_6

    .line 3849
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    const/4 v6, 0x1

    iput v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3850
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    const-string v6, ""

    iput-object v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3851
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    const-string v6, ""

    iput-object v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3852
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v5, p2

    .line 3854
    if-nez p2, :cond_5

    .line 3855
    const-string/jumbo v5, "yulong.left.pin"

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3868
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 3870
    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3872
    :try_start_3
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock5:Ljava/lang/Object;

    const-wide/16 v7, 0x1770

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3876
    :goto_3
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3877
    :try_start_5
    const-string v5, "CP_COMM: enter supplyDualPin mLock5 end"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3887
    :cond_2
    :goto_4
    invoke-virtual {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3888
    const-string/jumbo v5, "persist.yulong.defaultmode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3889
    .local v0, defaultmode:I
    const-string v5, "PhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supplyDualPin:  defaultmode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    if-eq v0, v9, :cond_3

    .line 3891
    sget v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    const/16 v6, 0x3e

    invoke-virtual {p0, p2, v5, v6, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V

    .line 3895
    .end local v0           #defaultmode:I
    :cond_3
    const-string v5, "PhoneModeService"

    const-string/jumbo v6, "supplyDualPin return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3900
    :goto_5
    if-nez v4, :cond_4

    .line 3901
    const/4 v5, -0x1

    iput v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_4
    move v5, v4

    .line 3904
    goto/16 :goto_0

    .line 3841
    :catch_0
    move-exception v1

    .line 3843
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 3896
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 3897
    .local v2, ex:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_5

    .line 3859
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_5
    :try_start_7
    const-string/jumbo v5, "yulong.right.pin"

    sget-object v6, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 3873
    :catch_2
    move-exception v1

    .line 3874
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_8
    const-string v5, "CP_COMM: interrupted"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 3876
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v5

    .line 3880
    :cond_6
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, p2

    .line 3881
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget-byte v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    iput-byte v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 3882
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget-byte v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v5, :cond_2

    .line 3883
    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    const/4 v6, 0x0

    iput-byte v6, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "puk"
    .parameter "newPin"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 3917
    const/4 v3, 0x0

    .line 3918
    .local v3, result:Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 3919
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 3921
    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_0

    .line 3983
    :goto_0
    return v4

    .line 3924
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    .line 3925
    iput v2, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    .line 3929
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3931
    sget v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    invoke-virtual {p0, p3, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->ActivateCardBeforeUnlockPin(II)V

    .line 3932
    const-string v4, "CP_COMM: phone is activated ,start supplyDualpin"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3934
    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3940
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 3942
    if-eqz v3, :cond_6

    .line 3943
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x1

    iput v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 3944
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/16 v5, 0xa

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3945
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 3946
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const-string v5, ""

    iput-object v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 3947
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v4, p3

    .line 3949
    if-nez p3, :cond_5

    .line 3950
    const-string/jumbo v4, "yulong.left.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3962
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getCardTypeBySendAt()V

    .line 3971
    :cond_2
    :goto_3
    invoke-virtual {p0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3972
    sget v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotConnectMode:I

    const/16 v5, 0x3e

    invoke-virtual {p0, p3, v4, v5, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3979
    :cond_3
    :goto_4
    if-nez v3, :cond_4

    .line 3980
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I

    :cond_4
    move v4, v3

    .line 3983
    goto :goto_0

    .line 3935
    :catch_0
    move-exception v0

    .line 3937
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3975
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 3976
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_4

    .line 3954
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_5
    :try_start_4
    const-string/jumbo v4, "yulong.right.pin"

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3964
    :cond_6
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 3966
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v4, :cond_2

    .line 3967
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method public unlockPinFor3GCard()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x13

    const/4 v7, 0x1

    .line 2584
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v0

    .line 2585
    .local v0, dsdstype:I
    const/4 v3, 0x0

    .line 2586
    .local v3, slot:I
    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2587
    .local v2, phoneId:I
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v4, :cond_1

    .line 2589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: mIs3GUimCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPinValues = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getPlatform = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2593
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v4

    if-ne v4, v7, :cond_1

    :cond_0
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 2596
    const-string v4, "CP_COMM: enter unlock3Gpin"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 2598
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2633
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 2634
    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2635
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v4, :cond_3

    .line 2637
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mIs3GUimCard:I

    if-eq v4, v7, :cond_2

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getPlatformType()I

    move-result v4

    if-ne v4, v7, :cond_3

    :cond_2
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_3

    .line 2641
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2646
    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 2675
    :cond_3
    :goto_3
    return-void

    .line 2599
    :catch_0
    move-exception v1

    .line 2601
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2606
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_0
    if-ne v2, v9, :cond_4

    .line 2607
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2610
    :cond_4
    if-ne v2, v7, :cond_1

    .line 2611
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2619
    :pswitch_1
    if-ne v2, v7, :cond_1

    .line 2620
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2642
    :catch_1
    move-exception v1

    .line 2644
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2649
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_2
    if-ne v2, v9, :cond_5

    .line 2650
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 2653
    :cond_5
    if-ne v2, v7, :cond_3

    .line 2654
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 2662
    :pswitch_3
    if-ne v2, v7, :cond_3

    .line 2663
    sget-object v4, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/yulong/android/internal/telephony/PhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 2603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2646
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForCdmaSubActive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5200
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5201
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5203
    monitor-exit v1

    .line 5205
    return-void

    .line 5203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCdmaSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5172
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5173
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5174
    monitor-exit v1

    .line 5175
    return-void

    .line 5174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubActive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5215
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5216
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubActiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5217
    monitor-exit v1

    .line 5218
    return-void

    .line 5217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForGsmSubDeactive(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 5186
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 5187
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmSubDeactiveRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 5188
    monitor-exit v1

    .line 5189
    return-void

    .line 5188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
