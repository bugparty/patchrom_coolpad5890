.class public Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.super Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;,
        Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
    }
.end annotation


# static fields
.field private static final AUTO_RESELECT_NET_TIME_OUT:I = 0x2710

.field private static final BATTERY_CDMA_WARN_LEVEL:I = 0x3

.field private static final BATTERY_GSM_WARN_LEVEL:I = 0x7

.field private static final BATTERY_NORMAL_LEVEL:I = 0x9

.field private static final EVENT_CDMA_MODEM_RESET:I = 0x3e

.field private static final EVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_CDMA_RADIO_ON:I = 0xb

.field private static final EVENT_CDMA_RADIO_STATE_CHANGED:I = 0xe

.field private static final EVENT_CDMA_SUPPLYPIN_MODEMRESET:I = 0x15

.field private static final EVENT_CLOSE_CDMA_MODEM_POWER:I = 0x1

.field private static final EVENT_CLOSE_GSM_MODEM_POWER:I = 0x2

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

.field private static final EVENT_GSM_SUPPLYPIN_MODEMRESET:I = 0x16

.field private static final EVENT_HOTSWAP_CHECK_CARD_FINISH:I = 0x3f

.field private static final EVENT_OPEN_CDMA_MODEM_POWER:I = 0x4

.field private static final EVENT_OPEN_GSM_MODEM_POWER:I = 0x5

.field private static final EVENT_SELECT_NET_TIME_OUT:I = 0x33

.field private static final EVENT_SET_NEW_CARD_INSERT_STATE:I = 0x3d

.field private static final EVENT_UNLOCK_PIN_BY_CDMA:I = 0x13

.field private static final EVENT_UNLOCK_PIN_BY_GSM:I = 0x14

.field private static final GET_CARD_STATE_TIME_OUT:I = 0xbb8

.field private static final GET_PIN_OR_PUK_NUM_STEP:I = 0x7

.field private static final HOT_SWAP_MILLIS:I = 0x4e20

.field private static final LOG_TAG:Ljava/lang/String; = "DualPhoneModeService"

.field private static final MAX_NOTIFICATION_RETRIES:I = 0xa

.field private static final OPERATE_C_RADIO_STEP:I = 0x8

.field private static final OPERATE_G_RADIO_STEP:I = 0x9

.field private static final OPERATION_BEGIN:I = 0x0

.field private static final OPERATION_FINISH:I = 0x1

.field private static final POWER_DOWN_STATUS:I = 0x0

.field private static final POWER_MGR_LOW_PWR_POWEROFF_C:I = 0x4

.field private static final POWER_MGR_LOW_PWR_POWEROFF_G:I = 0x3

.field private static final POWER_MGR_NORMAL:I = 0x1

.field private static final POWER_MGR_UNINIT:I = 0x0

.field private static final POWER_MGR_WORNING:I = 0x2

.field private static final POWER_ON_STATUS:I = 0x1

.field private static final POWER_STATUS_UNINIT:I = -0x1

.field private static final PWR_ACTION_OFF:I = 0x2

.field private static final PWR_ACTION_ON:I = 0x1

.field private static final PWR_ACTION_RESET:I = 0x3

.field private static final RESET_MODEM_MILLIS:I = 0x2710

.field private static final SELECT_CLOSE_C_MODEM_STEP:I = 0xa

.field private static final SELECT_CLOSE_G_MODEM_STEP:I = 0xb

.field private static final SELECT_NET_TIME_OUT_MILLIS:I = 0x7530

.field private static final SELECT_OPEN_C_MODEM_STEP:I = 0x3

.field private static final SELECT_OPEN_G_MODEM_STEP:I = 0x4

.field private static final SLOT_CROSS_MODE:I = 0x1

.field private static final SLOT_PARALLEL_MODE:I = 0x0

.field private static final SLOT_UNKNOWN_MODE:I = -0x1

.field private static final SWITCH_CLOSE_C_MODEM_STEP:I = 0x0

.field private static final SWITCH_CLOSE_G_MODEM_STEP:I = 0x1

.field private static final SWITCH_SLOT_STEP:I = 0x2

.field private static final UNLOCK_PIN_BY_CDMA_STEP:I = 0x5

.field private static final UNLOCK_PIN_BY_GSM_STEP:I = 0x6

.field private static final WAIT_REFRESH_TIME_OUT_MILLIS:I = 0xbb8

.field private static mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static mContext:Landroid/content/Context;

.field private static mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field public static final mLock1:Ljava/lang/Object;

.field private static sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# instance fields
.field private checkCardThread:Ljava/lang/Thread;

.field private hotSwapUnlockPin:Z

.field private isCheckingCard:Z

.field protected mBaseHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private mCardTypeResponse:Ljava/lang/String;

.field private mCdmaModemResetTimes:I

.field private mCdmaModemStatus:I

.field mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

.field private mGetPinPukNumType:I

.field private mGsmImsiResponse:Ljava/lang/String;

.field private mGsmModemResetTimes:I

.field private mGsmModemStatus:I

.field private mIsUserSelectNet:Z

.field private final mLock:Ljava/lang/Object;

.field mNeedSwitchBindMode:Z

.field mOperatePinPukByPhoneId:I

.field private mOperateSwitchSteps:[I

.field private mPinValues:[Ljava/lang/String;

.field private mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterCdmaUnavailable:Z

.field private mRegisterClientNo:I

.field private mRegisterGSmUnavailable:Z

.field private mRuimInserted:Z

.field private mSelectNetNotificationRetries:I

.field private mSimInserted:Z

.field private mSlectNetTimes:I

.field private mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

.field private final mSlotCardInfoLock:Ljava/lang/Object;

.field private mSlotConnectMode:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

.field private nextselect:[I

.field private reCheckCard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1295
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/IPhoneModeService$Stub;-><init>()V

    .line 267
    new-array v5, v11, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    .line 270
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    .line 274
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 277
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 280
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 283
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 286
    iput v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 289
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    .line 292
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    .line 319
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    .line 323
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterCdmaUnavailable:Z

    .line 324
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterGSmUnavailable:Z

    .line 326
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 327
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    .line 334
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    .line 336
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    .line 339
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    .line 340
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 341
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    .line 344
    iput-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    .line 345
    iput-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    .line 349
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1296
    const-string v5, "CP_COMM: enter DualPhoneModeService add iPhoneModeService"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1298
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "PhoneModeServiceHandler"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 1300
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    .line 1302
    new-array v5, v11, [Lcom/yulong/android/internal/telephony/SlotCardInfo;

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1303
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v8

    .line 1304
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v8

    iput v7, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1305
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    new-instance v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;

    invoke-direct {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;-><init>()V

    aput-object v6, v5, v10

    .line 1306
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v10

    iput v7, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 1307
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    .line 1309
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 1310
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    .line 1311
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-direct {v5, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    .line 1312
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1314
    const/4 v0, -0x1

    .line 1315
    .local v0, batteryLevel:I
    const/4 v1, 0x0

    .line 1317
    .local v1, batteryVoltage:I
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 1318
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 1319
    const-string v5, "CP_COMM: registerReceiver."

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1320
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1321
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1322
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    const-string/jumbo v5, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v5, "yulong.intent.action.SIMCARD_SWITCH"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1329
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1331
    .local v3, pm:Landroid/os/PowerManager;
    if-eqz v3, :cond_1

    .line 1332
    invoke-virtual {v3}, Landroid/os/PowerManager;->getBatteryLevel()I

    move-result v0

    .line 1333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v3}, Landroid/os/PowerManager;->getBatteryVoltage()I

    move-result v1

    .line 1335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", batteryVoltage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1337
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-direct {p0, v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(II)I

    move-result v6

    iput v6, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 1343
    :goto_0
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1345
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1346
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1348
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1350
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1352
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1355
    const-string v5, "iPhoneModeService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1356
    const-string v5, "iPhoneModeService"

    invoke-static {v5, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: iPhoneModeService is null, current process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1365
    :goto_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    .line 1366
    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-ne v10, v5, :cond_0

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v10, v5, :cond_0

    .line 1367
    iput v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 1368
    iput v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 1372
    :cond_0
    const-string v5, "gsm.sim.insert.state"

    const-string v6, "ABSENT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v5, "cdma.ruim.insert.state"

    const-string v6, "ABSENT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1377
    invoke-virtual {p0, v10}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    .line 1379
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    .line 1381
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0x3e

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1382
    const-string v5, "CP_COMM: liuyong add 2012-06-28 w8260 reset"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1389
    :goto_2
    new-instance v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-direct {v5, p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    iput-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    .line 1391
    return-void

    .line 1339
    :cond_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput v10, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 1340
    const-string v5, "get PowerManager service fail"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: iPhoneModeService is not null, current process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1384
    :cond_3
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v7, 0x3e

    invoke-interface {v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    .line 270
    nop

    :array_0
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

    .line 336
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onBatteryInfoReceiver(II)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return v0
.end method

.method static synthetic access$1002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return v0
.end method

.method static synthetic access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    return p1
.end method

.method static synthetic access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V

    return-void
.end method

.method static synthetic access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return v0
.end method

.method static synthetic access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    return p1
.end method

.method static synthetic access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V

    return-void
.end method

.method static synthetic access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return v0
.end method

.method static synthetic access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    return-void
.end method

.method static synthetic access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$2902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return p1
.end method

.method static synthetic access$2908(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V

    return-void
.end method

.method static synthetic access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V

    return-void
.end method

.method static synthetic access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    return-void
.end method

.method static synthetic access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    return p1
.end method

.method static synthetic access$4300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    return-void
.end method

.method static synthetic access$4800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    return p1
.end method

.method static synthetic access$602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onIccSwap(Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastPwrMgrControl(II)V
    .locals 7
    .parameter "iCloseOrOpen"
    .parameter "operId"

    .prologue
    const/4 v6, 0x1

    .line 3990
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

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3991
    const/4 v0, 0x0

    .line 3992
    .local v0, iLeftSlotModemType:I
    const/4 v2, 0x0

    .line 3993
    .local v2, iRightSlotModemType:I
    const/4 v1, -0x1

    .line 3995
    .local v1, iPreferredSlotId:I
    if-nez p1, :cond_5

    .line 3997
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-nez v4, :cond_0

    .line 3999
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    .line 4000
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput-boolean v6, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4002
    :cond_0
    if-ne p2, v6, :cond_4

    .line 4004
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-nez v4, :cond_3

    .line 4005
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4006
    const/4 v2, 0x0

    .line 4007
    const/4 v1, 0x0

    .line 4032
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v0, v4, :cond_7

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v1, v4, :cond_7

    .line 4035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPwrMgrControl without any change!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4038
    const-string v4, "iLeftSlotModemType and iRightSlotModemType is the same as the preview"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4072
    :cond_2
    :goto_1
    return-void

    .line 4008
    :cond_3
    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v4, v6, :cond_1

    .line 4009
    const/4 v0, 0x0

    .line 4010
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4011
    const/4 v1, 0x1

    goto :goto_0

    .line 4013
    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 4016
    const/4 v0, 0x0

    .line 4017
    const/4 v2, 0x0

    .line 4018
    const/4 v1, -0x1

    goto :goto_0

    .line 4022
    :cond_5
    if-ne p1, v6, :cond_6

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-boolean v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    if-eqz v4, :cond_6

    .line 4023
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 4024
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4025
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4026
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_0

    .line 4028
    :cond_6
    const-string v4, "broadcastPwrMgrControl without any oper"

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 4054
    :cond_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v0, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 4055
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v2, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 4056
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v4

    iput v1, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 4059
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "yulong.intent.action.POWER_MANAGER_OPERATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4062
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "closeOrOpenNet"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4064
    const-string/jumbo v4, "leftSlotModemType"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4066
    const-string/jumbo v4, "rightSlotModemTyp"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4068
    const-string/jumbo v4, "preferredSlotId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4071
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

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

    .line 1574
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

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", g = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", preSlotId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1579
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "selectNetResult"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const/4 v2, -0x1

    .line 1586
    .local v2, mSlotConnectMode:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1587
    const/4 v2, 0x1

    .line 1591
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

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1592
    const-string/jumbo v3, "slotConnectMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    const-string v3, "Success"

    if-ne p1, v3, :cond_6

    .line 1596
    const-string/jumbo v6, "selectCdmaStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v5, :cond_4

    :cond_0
    move v3, v5

    :goto_1
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1599
    const-string/jumbo v6, "selectGsmStatus"

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v8, :cond_5

    :cond_1
    move v3, v5

    :goto_2
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1602
    const-string/jumbo v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1604
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    :cond_2
    :goto_3
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1620
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserWishSelectedInfo.mLeftSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserWishSelectedInfo.mRightSlotModemType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mUserWishSelectedInfo.mPreferredSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v7, v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v3, "DualPhoneModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nextselect[2] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v8

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-ne v3, v6, :cond_8

    .line 1629
    const-string v3, "DualPhoneModeService"

    const-string v5, "broadcastSelectNetFinishIntent--->All the three parameter are same"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1643
    :goto_4
    return-void

    .line 1589
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    move v3, v4

    .line 1596
    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 1599
    goto/16 :goto_2

    .line 1605
    :cond_6
    const-string v3, "TimeOut"

    if-eq p1, v3, :cond_7

    const-string v3, "RILError"

    if-ne p1, v3, :cond_2

    .line 1610
    :cond_7
    const-string/jumbo v3, "selectCdmaStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1612
    const-string/jumbo v3, "selectGsmStatus"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1614
    const-string/jumbo v3, "preferredSlotId"

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v6, v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    const-string v3, "errorType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1632
    :cond_8
    const-string v3, "DualPhoneModeService"

    const-string v6, "broadcastSelectNetFinishIntent--->selectModemAndPreferedSlot"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    :goto_5
    iput-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1641
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aget v5, v5, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto :goto_4

    .line 1636
    :catch_0
    move-exception v0

    .line 1638
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method private broadcastSyncMessageToRenew(I)V
    .locals 4
    .parameter "batteryStatus"

    .prologue
    const/4 v3, 0x0

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastSyncMessageToRenew "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1654
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "yulong.intent.action.PHONE_EXCEPTION_RENEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1657
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "selectCdmaStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1658
    const-string/jumbo v1, "selectGsmStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1659
    const-string v1, "batteryInOrOut"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1661
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1662
    return-void
.end method

.method private canStartNet(I)Z
    .locals 3
    .parameter "curPwrState"

    .prologue
    const/4 v0, 0x1

    .line 3892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: canStartNet curPwrState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3894
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-lt v1, v2, :cond_0

    .line 3896
    const-string v1, "CP_COMM: close net operation, canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3911
    :goto_0
    return v0

    .line 3901
    :cond_0
    if-ne p1, v0, :cond_1

    .line 3902
    const-string v1, "CP_COMM: canStartNet:true"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3907
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    .line 3908
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput-boolean v0, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mLowBatterClosedNet:Z

    .line 3909
    const-string v0, "CP_COMM: canStartNet:false"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3911
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4562
    const-string v0, "HOTSWAP: cancle timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4563
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4565
    :cond_0
    return-void
.end method

.method private checkUserSelectValid(III)Z
    .locals 4
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2847
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-le p2, v2, :cond_1

    .line 2872
    :cond_0
    :goto_0
    return v0

    .line 2854
    :cond_1
    if-lt p3, v3, :cond_0

    if-gt p3, v1, :cond_0

    .line 2857
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 2867
    :cond_2
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    if-eq v2, v3, :cond_5

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: checkUserSelectValid PinPukType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2862
    :cond_3
    if-nez p3, :cond_4

    if-eqz p1, :cond_0

    :cond_4
    if-ne p3, v1, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2872
    goto :goto_0
.end method

.method private checkWhetherNeedSwitchBindMode(II)Z
    .locals 5
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2888
    const/4 v0, -0x1

    .line 2890
    .local v0, connectMode:I
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2910
    :cond_0
    :goto_0
    return v1

    .line 2894
    :cond_1
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    .line 2898
    if-nez v0, :cond_3

    .line 2899
    if-eq p1, v4, :cond_2

    if-ne p2, v2, :cond_0

    :cond_2
    move v1, v2

    .line 2901
    goto :goto_0

    .line 2903
    :cond_3
    if-ne v0, v2, :cond_0

    .line 2904
    if-eq p1, v2, :cond_4

    if-ne p2, v4, :cond_0

    :cond_4
    move v1, v2

    .line 2906
    goto :goto_0
.end method

.method private convertCardState(I)I
    .locals 1
    .parameter "src"

    .prologue
    .line 1254
    const/4 v0, -0x1

    .line 1256
    .local v0, ret:I
    packed-switch p1, :pswitch_data_0

    .line 1286
    :goto_0
    :pswitch_0
    return v0

    .line 1258
    :pswitch_1
    const/4 v0, -0x1

    .line 1259
    goto :goto_0

    .line 1262
    :pswitch_2
    const/4 v0, 0x0

    .line 1263
    goto :goto_0

    .line 1266
    :pswitch_3
    const/4 v0, 0x1

    .line 1267
    goto :goto_0

    .line 1270
    :pswitch_4
    const/4 v0, 0x2

    .line 1271
    goto :goto_0

    .line 1274
    :pswitch_5
    const/4 v0, 0x3

    .line 1275
    goto :goto_0

    .line 1278
    :pswitch_6
    const/16 v0, 0xa

    .line 1279
    goto :goto_0

    .line 1256
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private convertPhoneIdToSlotId(I)I
    .locals 4
    .parameter "phoneId"

    .prologue
    const/4 v3, 0x2

    .line 3035
    const/4 v0, 0x0

    .line 3037
    .local v0, slotId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3038
    if-ne p1, v3, :cond_0

    .line 3039
    const/4 v0, 0x0

    .line 3054
    :goto_0
    return v0

    .line 3041
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3047
    :cond_1
    if-ne p1, v3, :cond_2

    .line 3048
    const/4 v0, 0x1

    goto :goto_0

    .line 3050
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertSlotIdToPhoneId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 3004
    const/4 v0, 0x0

    .line 3006
    .local v0, phoneId:I
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3007
    if-nez p1, :cond_0

    .line 3008
    const/4 v0, 0x2

    .line 3023
    :goto_0
    return v0

    .line 3010
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3016
    :cond_1
    if-nez p1, :cond_2

    .line 3017
    const/4 v0, 0x1

    goto :goto_0

    .line 3019
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private enforcePhoneModemOper(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 3733
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    return-void
.end method

.method private finishGetPinOrPukLeftNum(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: enter broadcastGetPinOrPukLeftNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1673
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 1674
    .local v0, slotId:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1680
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    const-string/jumbo v2, "ok"

    invoke-direct {p0, v1, v0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPukQueryResult(IILjava/lang/String;)V

    .line 1686
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 1687
    return-void

    .line 1683
    :cond_0
    const-string/jumbo v1, "ok"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinQueryResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private getCardStatusByPhoneId(I)I
    .locals 3
    .parameter "phoneId"

    .prologue
    const/4 v1, -0x1

    .line 3137
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3139
    .local v0, slotId:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3146
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 3147
    invoke-virtual {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3148
    const-string v2, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3154
    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_0
.end method

.method private getCardTypeBySendAt()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 2719
    const-string v0, "CP_COMM: getCardTypeBySendAt."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2722
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2723
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2726
    const-wide/16 v0, 0xfa0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2731
    :goto_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2742
    :goto_1
    return-void

    .line 2733
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_1

    .line 2736
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 2737
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    goto :goto_1

    .line 2739
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCardType(Landroid/os/Message;)V

    goto :goto_1

    .line 2728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;
    .locals 1

    .prologue
    .line 1436
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    if-nez v0, :cond_0

    .line 1437
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;-><init>()V

    sput-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 1440
    :cond_0
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sInstance:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 2987
    const-string v2, "CP_COMM: getITelephony."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2989
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2990
    .local v0, myBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2992
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

    .line 3408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter into getModemPowerStatus(), init state, mCdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3411
    if-ne v7, p1, :cond_2

    .line 3412
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_1

    .line 3413
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 3449
    :cond_0
    :goto_0
    return v1

    .line 3416
    :cond_1
    const-string v2, "GET_CDMA_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3417
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    .line 3431
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3433
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3437
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3439
    if-ne v7, p1, :cond_4

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    if-eq v2, v6, :cond_4

    .line 3441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3442
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    goto :goto_0

    .line 3419
    :cond_2
    if-ne v8, p1, :cond_0

    .line 3420
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_3

    .line 3421
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto :goto_0

    .line 3424
    :cond_3
    const-string v2, "GET_GSM_MODEM_STATUS"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3425
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getModemStatus(Landroid/os/Message;)V

    goto :goto_1

    .line 3434
    :catch_0
    move-exception v0

    .line 3435
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CP_COMM: interrupted while getModemPowerStatus."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 3437
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3443
    :cond_4
    if-ne v8, p1, :cond_0

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    if-eq v2, v6, :cond_0

    .line 3445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm modem, power status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3446
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    goto/16 :goto_0
.end method

.method private getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .locals 5

    .prologue
    .line 2969
    const/4 v0, 0x0

    .line 2970
    .local v0, i:I
    const/4 v2, 0x0

    .line 2971
    .local v2, myBinder:Landroid/os/IBinder;
    const/4 v3, 0x0

    .local v3, myNS:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    move v1, v0

    .line 2973
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 2974
    const-string/jumbo v4, "nativePhoneSlot"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2975
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v3

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 2978
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    return-object v3
.end method

.method private getPinPukNumByCdmaOrGsm()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 2009
    const-string v0, "CP_COMM: enter getPinPukNumByCdmaOrGsm."

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2011
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2012
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V

    .line 2023
    :goto_0
    return-void

    .line 2016
    :cond_0
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2017
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0

    .line 2020
    :cond_1
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPINPUKValidCount(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(I)I
    .locals 4
    .parameter "nBatPwr"

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x7

    const/4 v1, 0x3

    .line 3751
    const/4 v0, 0x0

    .line 3753
    .local v0, tempPwrState:I
    if-lt p1, v3, :cond_1

    .line 3754
    const/4 v0, 0x1

    .line 3765
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: BatteryVolt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",PwrState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3767
    return v0

    .line 3755
    :cond_1
    if-ge p1, v3, :cond_2

    if-le p1, v2, :cond_2

    .line 3757
    const/4 v0, 0x2

    goto :goto_0

    .line 3758
    :cond_2
    if-gt p1, v2, :cond_3

    if-le p1, v1, :cond_3

    .line 3760
    const/4 v0, 0x3

    goto :goto_0

    .line 3761
    :cond_3
    if-gt p1, v1, :cond_0

    .line 3762
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getPwrStateByBatPwr(II)I
    .locals 6
    .parameter "iLevel"
    .parameter "volt"

    .prologue
    .line 3771
    const/4 v0, 0x0

    .line 3773
    .local v0, tempPwrState:I
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    if-nez v4, :cond_0

    .line 3774
    const/4 v4, 0x0

    .line 3880
    :goto_0
    return v4

    .line 3838
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v3

    .line 3839
    .local v3, voltLevelNormal:I
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v2

    .line 3840
    .local v2, voltLevelCloseG:I
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getVoltLevelType(I)I

    move-result v1

    .line 3841
    .local v1, voltLevelCloseC:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: voltLevelNormal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",voltLevelCloseG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",voltLevelCloseC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3843
    const/16 v4, 0xb

    if-ge p1, v4, :cond_1

    if-lt p2, v3, :cond_3

    .line 3844
    :cond_1
    const/4 v0, 0x1

    .line 3877
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    invoke-virtual {v4, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->setLevel(I)V

    .line 3879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PwrState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    move v4, v0

    .line 3880
    goto :goto_0

    .line 3845
    :cond_3
    const/4 v4, 0x4

    if-gt p1, v4, :cond_4

    .line 3846
    const/4 v0, 0x4

    goto :goto_1

    .line 3848
    :cond_4
    const/4 v0, 0x2

    .line 3849
    if-ge p2, v1, :cond_5

    .line 3850
    const/4 v0, 0x4

    goto :goto_1

    .line 3851
    :cond_5
    if-ge p2, v2, :cond_2

    .line 3852
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private getSlotConnectMode()I
    .locals 3

    .prologue
    .line 3230
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3231
    const/4 v1, 0x0

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 3232
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 3249
    :goto_0
    return v1

    .line 3235
    :cond_0
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3237
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3239
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    .line 3240
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getSlotConnectMode()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3247
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotConnectMode, mSlotConnectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3249
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_0

    .line 3242
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getSynPinPukValidCount(III)I
    .locals 6
    .parameter "reqType"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 2550
    const/4 v1, -0x1

    .line 2553
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getPinPukValidCount(II)I

    move-result v1

    .line 2555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualPhoneModeService::getSynPinPukValidCount(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2558
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 2559
    if-nez p1, :cond_1

    .line 2560
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2590
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2592
    return v1

    .line 2561
    :cond_1
    if-ne p1, v4, :cond_0

    .line 2562
    :try_start_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget-byte v1, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    goto :goto_0

    .line 2565
    :cond_2
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 2568
    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_4

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2571
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    .line 2573
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/4 v3, 0x3

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2576
    :cond_4
    if-nez v1, :cond_0

    if-ne p1, v4, :cond_0

    .line 2579
    const/16 v2, 0xa

    invoke-virtual {p0, v2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateCardStateToNativeService(II)I

    .line 2582
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    const/16 v3, 0xa

    iput v3, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2586
    :catch_0
    move-exception v0

    .line 2587
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

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getValidCardNum()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3110
    const/4 v0, 0x0

    .line 3112
    .local v0, iCardNum:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3113
    const-string v1, "CP_COMM: getValidCardNum, mSlotCardInfoArray[0] == null."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3114
    const/4 v1, -0x1

    .line 3125
    :goto_0
    return v1

    .line 3117
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_1

    .line 3118
    add-int/lit8 v0, v0, 0x1

    .line 3121
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v1, :cond_2

    .line 3122
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v0

    .line 3125
    goto :goto_0
.end method

.method private isActivePhoneByPhoneId(I)I
    .locals 7
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 3166
    const/4 v1, 0x0

    .line 3167
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 3170
    .local v0, radioState:Z
    if-ne p1, v3, :cond_2

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 3172
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3177
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 3180
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    .line 3188
    :cond_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3190
    const-string v3, "CP_COMM: mSlotCardInfoArray[slotId] = null."

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    .line 3206
    :goto_1
    return v2

    .line 3173
    :cond_2
    if-ne p1, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 3175
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_0

    .line 3184
    :cond_3
    const-string v3, "CP_COMM: invalid phone ID"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3195
    :cond_4
    const-string v2, "DualPhoneModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radioState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getCardInfoBySlotId == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    if-eqz v0, :cond_6

    .line 3199
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-gtz v2, :cond_5

    move v2, v3

    .line 3200
    goto :goto_1

    :cond_5
    move v2, v4

    .line 3202
    goto :goto_1

    .line 3206
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNeedSwitchToUnlockPin(I)I
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 3365
    const/4 v3, 0x0

    .line 3367
    .local v3, result:I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_0
    move v4, v3

    .line 3396
    :cond_1
    :goto_0
    return v4

    .line 3372
    :cond_2
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 3374
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedSwitchToUnlockPin(), slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3377
    if-ne v2, v4, :cond_3

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-ne v5, v7, :cond_1

    :cond_3
    if-ne v2, v7, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v7, :cond_1

    .line 3382
    :cond_4
    if-ne v2, v4, :cond_6

    .line 3383
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 3385
    .local v1, gsmModemStatus:I
    if-nez v1, :cond_5

    .line 3386
    const/4 v3, 0x1

    .end local v1           #gsmModemStatus:I
    :cond_5
    :goto_1
    move v4, v3

    .line 3396
    goto :goto_0

    .line 3389
    :cond_6
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 3391
    .local v0, cdmaModemStatus:I
    if-nez v0, :cond_5

    .line 3392
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4121
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4141
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4131
    const-string v0, "DualPhoneModeService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    return-void
.end method

.method private notifyPinPukCheckResult(III)V
    .locals 8
    .parameter "checkType"
    .parameter "result"
    .parameter "slotId"

    .prologue
    .line 3647
    const/4 v0, -0x1

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 3652
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3653
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3655
    :try_start_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3656
    const-string v0, "COMM:notifyPinPukCheckResult,mGsmImsiResponse is not null"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3657
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 3660
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 3662
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyPinPukCheckResult(), mSlotCardInfoArray["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].mGsmImsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMCCMNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3665
    const-string/jumbo v0, "saveInfoToNativeService(mCardType,mMCCMNC,mGsmOperId,SlotId)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3666
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v2, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v3, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v4, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p3

    iget-object v5, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 3671
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3675
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3677
    :try_start_1
    const-string/jumbo v0, "notifyPinPukCheckResult(), test"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3678
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3680
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3681
    return-void

    .line 3671
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3680
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private notifyPinQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 3540
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3541
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 3543
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3544
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 3540
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3547
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifyPukQueryResult(IILjava/lang/String;)V
    .locals 3
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 3583
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3584
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 3586
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3587
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 3583
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3590
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private notifySelectNetResult(IILjava/lang/String;)V
    .locals 3
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 3627
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3628
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    .line 3630
    .local v1, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    iget v2, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 3631
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->sendSelectNetResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V

    .line 3627
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3634
    .end local v1           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_1
    return-void
.end method

.method private onBatteryInfoReceiver(I)V
    .locals 3
    .parameter "iLevel"

    .prologue
    .line 4081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver -- iLevel =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4083
    if-nez p1, :cond_0

    .line 4084
    const-string v1, "CP_COMM: iLevel value is invalid!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4094
    :goto_0
    return-void

    .line 4088
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(I)I

    move-result v0

    .line 4089
    .local v0, newPwrState:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v0, v1, :cond_1

    .line 4090
    const-string v1, "CP_COMM: onBatteryInfoReceiver without any oper"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4093
    :cond_1
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->powerChangeOper(I)V

    goto :goto_0
.end method

.method private onBatteryInfoReceiver(II)V
    .locals 3
    .parameter "iLevel"
    .parameter "volt"

    .prologue
    .line 4097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: onBatteryInfoReceiver iLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4101
    :cond_0
    const-string v1, "CP_COMM: iLevel value is invalid!"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4112
    :goto_0
    return-void

    .line 4105
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPwrStateByBatPwr(II)I

    move-result v0

    .line 4107
    .local v0, newPwrState:I
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v0, v1, :cond_2

    .line 4108
    const-string v1, "CP_COMM: onBatteryInfoReceiver without any oper"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4111
    :cond_2
    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->powerChangeOper(I)V

    goto :goto_0
.end method

.method private onIccSwap(Ljava/lang/String;I)V
    .locals 14
    .parameter "simName"
    .parameter "simState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4364
    const/4 v6, 0x0

    .line 4367
    .local v6, mSlotId:I
    if-eqz p2, :cond_0

    .line 4368
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4372
    :cond_0
    const-string/jumbo v0, "persist.sys.sim1.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4373
    .local v12, simCard1Property:Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.sim2.switch"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4374
    .local v13, simCard2Property:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP:simCard1Property ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",simCard2Property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCheckingCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4377
    if-nez p2, :cond_b

    .line 4382
    const-string/jumbo v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4383
    const/4 v6, 0x0

    .line 4391
    :goto_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    iget v10, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 4392
    .local v10, mCardType:I
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v11

    .line 4393
    .local v11, phoneId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: mCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4395
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    .line 4396
    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4397
    const-string v0, "cdma.ruim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 4399
    const-string v0, "HOTSWAP:remove card,clear ruim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4400
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->handlepullcard()V

    .line 4415
    :cond_1
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4417
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v0, "msgFlag"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4418
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4420
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-eqz v0, :cond_6

    .line 4422
    monitor-enter p0

    .line 4423
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 4424
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4507
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mCardType:I
    .end local v11           #phoneId:I
    :goto_2
    return-void

    .line 4384
    :cond_2
    const-string/jumbo v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4385
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 4387
    :cond_3
    const-string v0, "HOTSWAP: fake simState = 0, return! "

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4401
    .restart local v10       #mCardType:I
    .restart local v11       #phoneId:I
    :cond_4
    const/4 v0, 0x2

    if-ne v11, v0, :cond_1

    .line 4402
    const/4 v0, 0x4

    if-ne v10, v0, :cond_5

    .line 4403
    const-string v0, "cdma.ruim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 4409
    :goto_3
    const-string v0, "gsm.sim.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4410
    const-string v0, "HOTSWAP:remove card,clear sim contacts by DualPhoenModeService"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4411
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlepullcard(III)V

    goto :goto_1

    .line 4406
    :cond_5
    const-string v0, "gsm.sim.insert.state"

    const-string v1, "ABSENT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_3

    .line 4424
    .restart local v8       #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4427
    :cond_6
    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 4428
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 4429
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 4430
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v6

    const-string v1, ""

    iput-object v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 4431
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_7

    .line 4432
    const-string v0, ""

    invoke-direct {p0, v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 4433
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    .line 4437
    :cond_7
    const-string v0, "ABSENT"

    const-string v1, "cdma.ruim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ABSENT"

    const-string v1, "gsm.sim.insert.state"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4439
    const/4 v0, 0x1

    if-ne v11, v0, :cond_a

    .line 4440
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 4444
    :cond_8
    :goto_4
    const-string v0, "HOTSWAP:no card,close network firstly!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4445
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4446
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 4447
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 4451
    :cond_9
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4453
    .local v9, intent1:Landroid/content/Intent;
    const-string/jumbo v0, "msgFlag"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4454
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 4441
    .end local v9           #intent1:Landroid/content/Intent;
    :cond_a
    const/4 v0, 0x2

    if-ne v11, v0, :cond_8

    .line 4442
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    goto :goto_4

    .line 4460
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mCardType:I
    .end local v11           #phoneId:I
    :cond_b
    const-string/jumbo v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string/jumbo v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4462
    :cond_d
    const-string v0, "HOTSWAP: fake SimState > 0, return!"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4465
    :cond_e
    const-string/jumbo v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4466
    const/4 v6, 0x0

    .line 4472
    :cond_f
    :goto_5
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4474
    .restart local v8       #intent:Landroid/content/Intent;
    const-string/jumbo v0, "msgFlag"

    const/4 v1, 0x2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4475
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4478
    const-string v0, "HOTSWAP: sim insert,setDesiredRadioPower(false)"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4479
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 4480
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 4482
    iget-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    if-nez v0, :cond_11

    .line 4485
    monitor-enter p0

    .line 4486
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    .line 4487
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4488
    const-string/jumbo v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4489
    const-string/jumbo v0, "yulong.hotswap.checkcard.finish"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4490
    .local v7, checkCardTag:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: before hotSwapCheckCard(),set checkCardTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4492
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-virtual {v0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->setSlotId(I)V

    .line 4493
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    const-string/jumbo v2, "mCheckCardService"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    .line 4494
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4496
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V

    .line 4497
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->startTimer()V

    .line 4498
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_2

    .line 4467
    .end local v7           #checkCardTag:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_10
    const-string/jumbo v0, "sim2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4468
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 4487
    .restart local v8       #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 4500
    :cond_11
    monitor-enter p0

    .line 4501
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    .line 4502
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOTSWAP: isCheckingCard ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reCheckCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4502
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private onWaitRefreshTimedOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1239
    const-string v0, "enter into onWaitRefreshTimedOut()"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_1

    .line 1243
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifyBindSlots()V

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mScanned:I

    if-ne v0, v1, :cond_0

    .line 1247
    :cond_2
    sget-object v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->notifySwitchSlots()V

    goto :goto_0
.end method

.method private operateRadioCdmaAndGsm()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2029
    const/4 v1, -0x1

    .line 2030
    .local v1, connectMode:I
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 2031
    .local v0, cdmaRadioPower:Z
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 2033
    .local v2, gsmRadioPower:Z
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v1

    .line 2035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter operateRadioCdmaAndGsm, mSlotConnectMode= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", cdma = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", gsm = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2039
    if-nez v1, :cond_b

    .line 2040
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v4, :cond_1

    :cond_0
    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v3, :cond_7

    .line 2044
    :cond_1
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 2045
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2048
    :cond_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v3, v7

    .line 2054
    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v3, v9, :cond_4

    :cond_3
    if-nez v2, :cond_9

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v3, :cond_9

    .line 2058
    :cond_4
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 2059
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2062
    :cond_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v3, v8

    .line 2100
    :goto_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v7

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v3, v3, v8

    if-ne v3, v4, :cond_6

    .line 2102
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V

    .line 2104
    :cond_6
    return-void

    .line 2050
    :cond_7
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v0, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2051
    const-string v3, "SLOT_PARALLEL_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move v3, v5

    .line 2050
    goto :goto_2

    .line 2064
    :cond_9
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v2, :cond_a

    move v5, v4

    :cond_a
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2065
    const-string v3, "SLOT_PARALLEL_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2071
    :cond_b
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-eq v3, v4, :cond_d

    :cond_c
    if-nez v0, :cond_12

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v3, :cond_12

    .line 2075
    :cond_d
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_e

    .line 2076
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2079
    :cond_e
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v3, v7

    .line 2085
    :goto_3
    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-eq v3, v9, :cond_10

    :cond_f
    if-nez v2, :cond_14

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v3, :cond_14

    .line 2089
    :cond_10
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v2, :cond_11

    .line 2090
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 2093
    :cond_11
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v3, v8

    goto :goto_1

    .line 2081
    :cond_12
    sget-object v6, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v0, :cond_13

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2082
    const-string v3, "SLOT_CROSS_MODE setRadioPowerEx, cdma!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    move v3, v5

    .line 2081
    goto :goto_4

    .line 2095
    :cond_14
    sget-object v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v2, :cond_15

    move v5, v4

    :cond_15
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setRadioPowerEx(Z)V

    .line 2096
    const-string v3, "SLOT_CROSS_MODE setRadioPowerEx, gsm!"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private powerChangeOper(I)V
    .locals 8
    .parameter "newPwrState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3922
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

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3927
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v2, :cond_1

    .line 3928
    const-string v2, "CP_COMM: select network processing, return!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3979
    :cond_0
    :goto_0
    return-void

    .line 3934
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isDualIdle(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isDualIdle(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3936
    :cond_2
    const-string v2, "CP_COMM: phone is not idle, without any oper"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3939
    :catch_0
    move-exception v0

    .line 3940
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: RemoteException from isDualIdle()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    .line 3942
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v1, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 3943
    .local v1, oldPowerState:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iput p1, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    .line 3944
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3947
    :pswitch_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 3949
    invoke-direct {p0, v5, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3950
    :cond_4
    if-ne p1, v7, :cond_5

    .line 3952
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3953
    :cond_5
    if-ne p1, v4, :cond_0

    .line 3955
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3960
    :pswitch_1
    if-ne p1, v7, :cond_6

    .line 3962
    invoke-direct {p0, v5, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3963
    :cond_6
    if-ne p1, v4, :cond_0

    .line 3964
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3969
    :pswitch_2
    if-ne p1, v4, :cond_0

    .line 3970
    invoke-direct {p0, v4, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastPwrMgrControl(II)V

    goto :goto_0

    .line 3944
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
    .line 1401
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 1403
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 1404
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->registerClient()I

    move-result v1

    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 3713
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3714
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3716
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3717
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 3718
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3720
    monitor-exit v3

    .line 3724
    :goto_1
    return-void

    .line 3716
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3723
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

.method private resetTouchScreen()I
    .locals 3

    .prologue
    .line 3476
    const/4 v1, 0x0

    .line 3479
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3481
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3482
    invoke-interface {v0}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->resetTouchScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3488
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 3484
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "cardType"
    .parameter "cdmaImsi"
    .parameter "mncMcc"
    .parameter "gsmImsi"
    .parameter "gsmOperId"
    .parameter "slotId"

    .prologue
    .line 3295
    const/4 v7, 0x0

    .line 3297
    .local v7, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveInfoToNativeService(), cardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cdmaImsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsmImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mncMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,gsmOperId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3302
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3304
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3305
    const-string/jumbo v1, "myNativeSlotService != null"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 3307
    invoke-interface/range {v0 .. v6}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3314
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v7

    .line 3310
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private savePinToNativeService(Ljava/lang/String;I)I
    .locals 3
    .parameter "pin"
    .parameter "slotId"

    .prologue
    .line 3263
    const/4 v1, 0x0

    .line 3266
    .local v1, result:I
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 3268
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 3269
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->savePinToNativeService(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3276
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    return v1

    .line 3272
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private selectCloseModemCdmaOrGsm()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2110
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2111
    .local v0, cdmaModemStatus:I
    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2112
    .local v1, gsmModemStatus:I
    const-string v2, "enter selectCloseModemCdmaOrGsm."

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2116
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v2, :cond_6

    if-ne v0, v4, :cond_6

    .line 2118
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v2

    if-ne v4, v2, :cond_2

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v2, v6, :cond_2

    .line 2121
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2140
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v2, :cond_b

    if-ne v1, v4, :cond_b

    .line 2142
    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v2

    if-ne v4, v2, :cond_7

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 2146
    :cond_0
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2166
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-ne v2, v4, :cond_1

    .line 2168
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2171
    :cond_1
    return-void

    .line 2124
    :cond_2
    invoke-static {v4}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-eq v2, v6, :cond_4

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v4, v2, :cond_5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v2, :cond_5

    .line 2131
    :cond_4
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto :goto_0

    .line 2134
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v7

    goto :goto_0

    .line 2137
    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v7

    goto :goto_0

    .line 2149
    :cond_7
    invoke-static {v5}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCloseModemType(I)I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-eq v2, v6, :cond_9

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v4, v2, :cond_a

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-nez v2, :cond_a

    .line 2157
    :cond_9
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    goto/16 :goto_1

    .line 2160
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v8

    goto/16 :goto_1

    .line 2163
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v8

    goto/16 :goto_1
.end method

.method private selectOpenModemCdmaOrGsm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1897
    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 1898
    .local v0, cdmaModemStatus:I
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 1900
    .local v1, gsmModemStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter selectOpenModemCdmaOrGsm(), cdmaModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,gsmModemStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1903
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1904
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1905
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1907
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v7

    .line 1935
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-ne v2, v4, :cond_1

    .line 1938
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V

    .line 1940
    :cond_1
    return-void

    .line 1909
    :cond_2
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1911
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v5

    goto :goto_0

    .line 1913
    :cond_3
    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v2, :cond_0

    .line 1914
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 1916
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1918
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v2, v6

    .line 1924
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 1926
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 1928
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aput v8, v2, v3

    goto :goto_0

    .line 1920
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v7

    .line 1921
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v6

    goto :goto_1

    .line 1930
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v5

    .line 1931
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v3, 0x6

    aput v4, v2, v3

    goto :goto_0
.end method

.method private sendPinQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pinLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 3564
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3565
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    :cond_0
    :goto_0
    return-void

    .line 3567
    :catch_0
    move-exception v0

    .line 3568
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendPukQueryResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "pukLeft"
    .parameter "slotId"
    .parameter "errType"

    .prologue
    .line 3607
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3608
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onQueryPinResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 3610
    :catch_0
    move-exception v0

    .line 3611
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private sendSelectNetResult(Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;IILjava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "cdmaRadio"
    .parameter "gsmRadio"
    .parameter "errType"

    .prologue
    .line 3698
    :try_start_0
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    if-eqz v1, :cond_0

    .line 3699
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    invoke-interface {v1, p2, p3, p4}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->onSelectNetResult(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3704
    :cond_0
    :goto_0
    return-void

    .line 3701
    :catch_0
    move-exception v0

    .line 3702
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private set8KCardInsertState(I)V
    .locals 7
    .parameter "iSlotId"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/16 v5, 0x3d

    const/4 v4, 0x1

    .line 2174
    const/4 v0, 0x0

    .line 2175
    .local v0, newInsertedState:Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2176
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v1, :sswitch_data_0

    .line 2187
    :goto_0
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v0, v1, :cond_2

    .line 2188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newInsertedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2190
    if-eqz v0, :cond_1

    .line 2191
    const-string v1, "cdma.ruim.insert.state"

    const-string v2, "PRESENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2207
    :goto_1
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    .line 2292
    :cond_0
    :goto_2
    return-void

    .line 2181
    :sswitch_0
    const/4 v0, 0x1

    .line 2182
    goto :goto_0

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2208
    :cond_2
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v0, v1, :cond_0

    .line 2209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newInsertedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2211
    if-eqz v0, :cond_3

    .line 2212
    const-string v1, "gsm.sim.insert.state"

    const-string v2, "PRESENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2227
    :goto_3
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto :goto_2

    .line 2224
    :cond_3
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 2230
    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    sparse-switch v1, :sswitch_data_1

    .line 2240
    :goto_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 2243
    :cond_5
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    if-eq v0, v1, :cond_0

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newInsertedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2246
    if-eqz v0, :cond_6

    .line 2247
    const-string v1, "cdma.ruim.insert.state"

    const-string v2, "PRESENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2263
    :goto_5
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z

    goto/16 :goto_2

    .line 2235
    :sswitch_1
    const/4 v0, 0x1

    .line 2236
    goto :goto_4

    .line 2260
    :cond_6
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 2265
    :cond_7
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v1, v4, :cond_8

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 2268
    :cond_8
    iget-boolean v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    if-eq v0, v1, :cond_0

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newInsertedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2271
    if-eqz v0, :cond_9

    .line 2272
    const-string v1, "gsm.sim.insert.state"

    const-string v2, "PRESENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2288
    :goto_6
    iput-boolean v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z

    goto/16 :goto_2

    .line 2285
    :cond_9
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 2176
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 2230
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V
    .locals 0
    .parameter "cdmaPhone"
    .parameter "gsmPhone"
    .parameter "context"

    .prologue
    .line 1425
    sput-object p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1426
    sput-object p1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1427
    sput-object p2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    .line 1428
    return-void
.end method

.method private setPreferredModemType(I)Z
    .locals 4
    .parameter "iPreferredModemType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_COMM: setPreferredModemType iPreferredModemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2793
    const-string v0, "gsm.current.modem-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    if-ne v3, p1, :cond_0

    .line 2800
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    :goto_0
    return v2

    .line 2806
    :cond_0
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 1

    .prologue
    .line 4513
    const-string v0, "HOTSWAP: start timer"

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4514
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimer:Ljava/util/Timer;

    .line 4515
    new-instance v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;

    invoke-direct {v0, p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    iput-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mTimerTask:Ljava/util/TimerTask;

    .line 4557
    return-void
.end method

.method private switchSlotBindMode()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 2919
    const/4 v1, 0x0

    .line 2921
    .local v1, success:Z
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2960
    :goto_0
    return v2

    .line 2926
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 2928
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_1

    .line 2929
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-ne v3, v2, :cond_3

    .line 2930
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2943
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2944
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    if-nez v3, :cond_4

    .line 2945
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    .line 2950
    :goto_2
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v2, v3, v5

    .line 2953
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2959
    :cond_2
    const-string/jumbo v2, "yulong.is.switching.slot"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 2960
    goto :goto_0

    .line 2934
    .restart local v0       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v0, v3, v4}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->switchSlotBindMode(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 2947
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I

    goto :goto_2

    .line 2939
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private unLockPinAfterModemReset()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 1946
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 1947
    .local v1, slotId:I
    const/4 v0, 0x0

    .line 1948
    .local v0, sleepSeconds:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: enter unLockPinAfterModemReset.,hotSwapUnlockPin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1964
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    if-eqz v2, :cond_4

    .line 1968
    :cond_0
    const/4 v0, 0x1

    .line 1969
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: unLockPinAfterModemReset,mCdmaPhone.mCM.supplyIccPin,mPinValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1975
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v2, v7

    .line 1976
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1982
    :goto_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v1

    .line 1984
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z

    if-eqz v2, :cond_5

    .line 1987
    :cond_1
    if-nez v0, :cond_2

    .line 1988
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V

    .line 1991
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP_COMM: unLockPinAfterModemReset,mGsmPhone.mCM.supplyIccPin,mPinValues["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1992
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v2, v8

    .line 1993
    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1999
    :goto_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v8

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v7

    if-ne v2, v6, :cond_3

    .line 2001
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V

    .line 2003
    :cond_3
    return-void

    .line 1979
    :cond_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v2, v7

    goto :goto_1

    .line 1996
    :cond_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v2, v8

    goto :goto_2

    .line 1970
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, errNo:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1471
    const-string v2, "Success"

    if-ne p1, v2, :cond_4

    .line 1472
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-eq v2, v3, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    .line 1476
    :cond_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    invoke-virtual {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->copyData(Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;)V

    .line 1478
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-nez v2, :cond_2

    .line 1479
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1484
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-nez v2, :cond_3

    .line 1485
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1560
    :cond_1
    :goto_1
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 1561
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 1562
    invoke-direct {p0, p1, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSelectNetFinishIntent(Ljava/lang/String;I)V

    .line 1563
    return-void

    .line 1481
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_0

    .line 1487
    :cond_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_1

    .line 1489
    :cond_4
    const-string v2, "RILError"

    if-eq p1, v2, :cond_5

    const-string v2, "TimeOut"

    if-ne p1, v2, :cond_1

    .line 1491
    :cond_5
    const/4 v1, 0x0

    .line 1493
    .local v1, i:I
    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xb

    if-gt v1, v2, :cond_7

    .line 1494
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v2, v2, v1

    if-nez v2, :cond_6

    .line 1495
    add-int/lit8 v0, v1, 0x1

    .line 1500
    :cond_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v4, v2, v1

    .line 1493
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1503
    :cond_7
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateSelectedPreferredModemType()V

    .line 1504
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPreferredModemType(I)Z

    .line 1506
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 1507
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_8

    .line 1508
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1509
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1515
    :goto_3
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_9

    .line 1516
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1517
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1523
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_a

    .line 1524
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto :goto_1

    .line 1511
    :cond_8
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1512
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_3

    .line 1519
    :cond_9
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1520
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_4

    .line 1525
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_b

    .line 1526
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1528
    :cond_b
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1534
    :cond_c
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v2, :cond_d

    .line 1535
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1536
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1542
    :goto_5
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v2, :cond_e

    .line 1543
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v6, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1544
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v4, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    .line 1550
    :goto_6
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v4, :cond_f

    .line 1551
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1538
    :cond_d
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1539
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v5

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_5

    .line 1546
    :cond_e
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1547
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, v4

    iput v5, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mActive:I

    goto :goto_6

    .line 1552
    :cond_f
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    if-ne v2, v6, :cond_10

    .line 1553
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v4, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1

    .line 1555
    :cond_10
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v7, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    goto/16 :goto_1
.end method

.method private updateInfoWhenPullOutBattery(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 3462
    if-nez p1, :cond_0

    .line 3463
    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I

    .line 3464
    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I

    .line 3466
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 3467
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 3470
    :cond_0
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V

    .line 3472
    return v1
.end method

.method private updateSelectedPreferredModemType()V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1458
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0

    .line 1455
    :cond_2
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v1, v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    iput v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_0
.end method

.method private waitAfterOpenGsmModem()V
    .locals 5

    .prologue
    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1222
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "radio_stae = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1228
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 1236
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1231
    .restart local v0       #i:I
    :cond_1
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitAfterUnlockPin(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 1202
    const/16 v0, 0x3e8

    .line 1204
    .local v0, sleep_millis:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1205
    const/16 v0, 0xbb8

    .line 1213
    :cond_0
    :goto_0
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :goto_1
    return-void

    .line 1206
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1207
    const/16 v0, 0x3e8

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private waitParseCardAfterUnlockPin(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 2753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP_COMM: waitParseCardAfterUnlockPin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2755
    iget v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    .line 2760
    :cond_1
    const-string v1, "CP_COMM: sleep 1 second and return."

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2763
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2778
    :goto_0
    return v5

    .line 2770
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2772
    :try_start_1
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2776
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

    .line 2773
    :catch_0
    move-exception v0

    .line 2774
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CP_COMM: interrupted while waitParseCardAfterUnlockPin"

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2765
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;
    .locals 6
    .parameter "iSlotId"

    .prologue
    .line 2307
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 2308
    .local v1, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    const/4 v2, 0x0

    .line 2309
    .local v2, tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    if-eqz v1, :cond_0

    .line 2310
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2311
    :try_start_1
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->getCardInfoBySlotId(I)Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v2

    .line 2313
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    if-nez v2, :cond_2

    .line 2316
    :try_start_2
    const-string v3, "CP_COMM: myNativeSlotService.getCardInfoBySlotId == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2318
    const/4 v3, 0x0

    .line 2364
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :goto_0
    return-object v3

    .line 2313
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2       #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2347
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .end local v2           #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :catch_0
    move-exception v0

    .line 2349
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "CP_COMM: myNativeSlotService == null"

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    .line 2353
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    iget v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I

    if-nez v3, :cond_1

    .line 2354
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V

    .line 2364
    :cond_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    goto :goto_0

    .line 2321
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    .restart local v2       #tempSlotCardInfo:Lcom/yulong/android/internal/telephony/SlotCardInfo;
    :cond_2
    :try_start_5
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

    invoke-virtual {v2}, Lcom/yulong/android/internal/telephony/SlotCardInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2324
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aput-object v2, v3, p1

    .line 2326
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->set8KCardInsertState(I)V

    .line 2335
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2337
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2339
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    aput-object v4, v3, p1

    .line 2340
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p1

    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPin1:Ljava/lang/String;

    .line 2343
    :cond_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getCarrierNameBySlotInfo(Lcom/yulong/android/internal/telephony/SlotCardInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public getCardTypeBySlotId(I)I
    .locals 2
    .parameter "iSlotId"

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    const-string v1, "1234567890"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  1234567890 iSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2382
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    iput v1, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 2387
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardTypeBySlotId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

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

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    return v0
.end method

.method public getDataFirewall(I)I
    .locals 1
    .parameter "phoneid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4332
    const/4 v0, 0x0

    return v0
.end method

.method public getImsi(I)Ljava/lang/String;
    .locals 4
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4302
    const/4 v0, -0x1

    .line 4304
    .local v0, slotId:I
    invoke-direct {p0, p1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 4305
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    .line 4307
    const-string v2, "Wrong slot id!"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4324
    :cond_0
    :goto_0
    return-object v1

    .line 4311
    :cond_1
    if-ne p1, v3, :cond_3

    .line 4312
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 4313
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4315
    :cond_2
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0

    .line 4317
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 4318
    sget-object v1, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v3, v1, :cond_4

    .line 4319
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 4321
    :cond_4
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCdmaImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPinPukValidCount(II)I
    .locals 12
    .parameter "pinType"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x33

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 2403
    const/4 v4, -0x5

    .line 2405
    .local v4, result:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: getPinPukValidCount, pinType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2408
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    if-ne v5, v11, :cond_0

    .line 2409
    const/4 v5, -0x4

    .line 2534
    :goto_0
    return v5

    .line 2412
    :cond_0
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_2

    :cond_1
    move v5, v4

    .line 2414
    goto :goto_0

    .line 2417
    :cond_2
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v3

    .line 2418
    .local v3, phoneId:I
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v5, v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    if-ne v3, v7, :cond_3

    .line 2420
    const/4 v5, -0x3

    goto :goto_0

    .line 2422
    :cond_3
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2423
    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPinPukValidCount:phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mSlotCardInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].mCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2427
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    if-ne v3, v7, :cond_4

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v7, :cond_5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v11, :cond_5

    :cond_4
    if-ne v3, v8, :cond_d

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 2438
    :cond_5
    const-string v5, "getPinPukValidCount: need swtich slot to get pin/puk valid count"

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2439
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2440
    .local v0, cdmaModemStatus:I
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2442
    .local v1, gsmModemStatus:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v5, 0x7

    if-gt v2, v5, :cond_6

    .line 2443
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v5, v2

    .line 2442
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2446
    :cond_6
    const/16 v2, 0x8

    :goto_2
    const/16 v5, 0xb

    if-gt v2, v5, :cond_7

    .line 2447
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2446
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2450
    :cond_7
    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 2451
    if-ne v3, v7, :cond_a

    .line 2452
    iput v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2457
    :cond_8
    :goto_3
    if-ne v0, v8, :cond_b

    .line 2460
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2466
    :goto_4
    if-ne v1, v8, :cond_c

    .line 2470
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2476
    :goto_5
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v5, v9

    if-ne v5, v8, :cond_9

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v5, v8

    if-ne v5, v8, :cond_9

    .line 2478
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    .line 2481
    :cond_9
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2482
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0xc350

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v2           #i:I
    :goto_6
    move v5, v4

    .line 2534
    goto/16 :goto_0

    .line 2453
    .restart local v0       #cdmaModemStatus:I
    .restart local v1       #gsmModemStatus:I
    .restart local v2       #i:I
    :cond_a
    if-ne v3, v8, :cond_8

    .line 2454
    iput v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    goto :goto_3

    .line 2463
    :cond_b
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v9

    goto :goto_4

    .line 2473
    :cond_c
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v8

    goto :goto_5

    .line 2487
    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v2           #i:I
    :cond_d
    if-ne v3, v7, :cond_10

    .line 2489
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 2490
    .restart local v1       #gsmModemStatus:I
    if-nez v1, :cond_f

    .line 2491
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    const/16 v5, 0xb

    if-gt v2, v5, :cond_e

    .line 2492
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2491
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2495
    :cond_e
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v9, v5, v11

    .line 2496
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x7

    aput v9, v5, v6

    .line 2498
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2501
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2502
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x9c40

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 2507
    .end local v2           #i:I
    :cond_f
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto :goto_6

    .line 2510
    .end local v1           #gsmModemStatus:I
    :cond_10
    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 2512
    .restart local v0       #cdmaModemStatus:I
    if-nez v0, :cond_12

    .line 2513
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    const/16 v5, 0xb

    if-gt v2, v5, :cond_11

    .line 2514
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v8, v5, v2

    .line 2513
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2517
    :cond_11
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x3

    aput v9, v5, v6

    .line 2518
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v6, 0x7

    aput v9, v5, v6

    .line 2520
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 2523
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2524
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x9c40

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    .line 2529
    .end local v2           #i:I
    :cond_12
    invoke-direct {p0, p1, v3, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSynPinPukValidCount(III)I

    move-result v4

    goto/16 :goto_6
.end method

.method notifyCradStateChangedIntent()V
    .locals 3

    .prologue
    .line 4614
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4615
    .local v0, intentDual:Landroid/content/Intent;
    const-string/jumbo v1, "ss"

    const-string v2, "PERSENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4616
    const-string/jumbo v1, "reason"

    const-string v2, "NO REASON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4617
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4618
    return-void
.end method

.method public operateUniversalInterface(III)I
    .locals 3
    .parameter "actionId"
    .parameter "phoneId"
    .parameter "slotId"

    .prologue
    .line 3070
    const/4 v0, 0x0

    .line 3072
    .local v0, result:I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3073
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getValidCardNum()I

    move-result v0

    .line 3101
    :cond_0
    :goto_0
    return v0

    .line 3074
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3075
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isActivePhoneByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3076
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3077
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isNeedSwitchToUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3078
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 3079
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardStatusByPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 3080
    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    .line 3081
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitParseCardAfterUnlockPin(I)I

    move-result v0

    goto :goto_0

    .line 3082
    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 3083
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    goto :goto_0

    .line 3084
    :cond_6
    const/4 v2, 0x7

    if-ne p1, v2, :cond_7

    .line 3085
    move v1, p2

    .line 3086
    .local v1, status:I
    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoWhenPullOutBattery(I)I

    move-result v0

    .line 3087
    goto :goto_0

    .end local v1           #status:I
    :cond_7
    const/16 v2, 0x8

    if-ne p1, v2, :cond_8

    .line 3088
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->resetTouchScreen()I

    move-result v0

    goto :goto_0

    .line 3089
    :cond_8
    const/16 v2, 0xc

    if-ne p1, v2, :cond_9

    .line 3090
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I

    move-result v0

    goto :goto_0

    .line 3093
    :cond_9
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    .line 3094
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    if-nez v2, :cond_a

    .line 3095
    const/4 v0, 0x0

    goto :goto_0

    .line 3097
    :cond_a
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v2, v2, p3

    iget v0, v2, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto :goto_0
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
    .line 4277
    const/4 v0, 0x0

    return v0
.end method

.method public selectCloseModemCdmaOrGsmInternal(IZ)V
    .locals 0
    .parameter "modetype"
    .parameter "powersate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4340
    return-void
.end method

.method public selectModemAndPreferredSlot(III)I
    .locals 12
    .parameter "iLeftSlotModemType"
    .parameter "iRightSlotModemType"
    .parameter "iPreferredSlotId"

    .prologue
    const/16 v11, 0x33

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1704
    const/4 v2, 0x0

    .line 1705
    .local v2, i:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: DualPhoneModeService selectModemAndPreferredSlot, left = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", right = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preSID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, p1, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkUserSelectValid(III)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1890
    :goto_0
    return v5

    .line 1719
    :cond_0
    if-ne p1, v7, :cond_1

    invoke-static {v6}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 1722
    const/4 p1, 0x1

    .line 1726
    :cond_1
    if-ne p1, v6, :cond_2

    invoke-static {v7}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v8

    if-ne v6, v8, :cond_2

    .line 1729
    const/4 p2, 0x2

    .line 1732
    :cond_2
    iget v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    if-nez v8, :cond_3

    .line 1733
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p1, v8, v5

    .line 1734
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p2, v8, v6

    .line 1735
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->nextselect:[I

    aput p3, v8, v7

    .line 1737
    :cond_3
    const-string v8, "DualPhoneModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsUserSelectNet = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-ne v8, v6, :cond_4

    iget v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I

    if-nez v8, :cond_4

    move v5, v6

    .line 1740
    goto :goto_0

    .line 1745
    :cond_4
    iput-boolean v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    .line 1746
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1747
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1748
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p3, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1750
    if-nez p3, :cond_7

    .line 1751
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p1, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    .line 1758
    :goto_1
    if-eq p1, v6, :cond_5

    if-ne v6, p2, :cond_9

    .line 1760
    :cond_5
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v6, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 1765
    :goto_2
    if-eq p1, v7, :cond_6

    if-ne v7, p2, :cond_a

    .line 1767
    :cond_6
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v6, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 1772
    :goto_3
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mCurPowerState:I

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->canStartNet(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1773
    iput-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    move v5, v7

    .line 1774
    goto :goto_0

    .line 1752
    :cond_7
    if-ne p3, v6, :cond_8

    .line 1753
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput p2, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    .line 1755
    :cond_8
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredModemType:I

    goto :goto_1

    .line 1762
    :cond_9
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    goto :goto_2

    .line 1769
    :cond_a
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput-boolean v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    goto :goto_3

    .line 1777
    :cond_b
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v8

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v8

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mPwrControlSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->access$4400(Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v8

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    if-eq v8, v9, :cond_d

    .line 1780
    :cond_c
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 1781
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1782
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPowerStateInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;

    iget-object v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$PowerStateInfo;->mRecordSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iput v5, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    .line 1785
    :cond_d
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    if-ne v8, p1, :cond_e

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    if-ne v8, p2, :cond_e

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v8, v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v8, v9, :cond_e

    .line 1792
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v8, 0x32

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v6

    .line 1795
    goto/16 :goto_0

    .line 1799
    :cond_e
    const/4 v8, -0x1

    if-eq p3, v8, :cond_11

    const/4 v8, 0x4

    invoke-virtual {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySlotId(I)I

    move-result v9

    if-ne v8, v9, :cond_11

    .line 1800
    if-nez p3, :cond_f

    if-eq p1, v7, :cond_10

    :cond_f
    if-ne p3, v6, :cond_11

    if-ne p2, v7, :cond_11

    .line 1803
    :cond_10
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1804
    .local v3, mCM:Landroid/net/ConnectivityManager;
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1805
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "data_roaming"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1806
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "data_roaming_2"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1807
    const-string v8, "DualPhoneModeService"

    const-string/jumbo v9, "prefer card is dualmode card and it is gsm modem set MOBILE_DATA and DATA_ROAMING to disable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    .end local v3           #mCM:Landroid/net/ConnectivityManager;
    :cond_11
    const/4 v2, 0x0

    :goto_4
    const/16 v8, 0xb

    if-gt v2, v8, :cond_12

    .line 1812
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v5, v8, v2

    .line 1811
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1815
    :cond_12
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    const/4 v9, 0x7

    aput v6, v8, v9

    .line 1817
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkWhetherNeedSwitchBindMode(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 1820
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CP_COMM: DualPhoneModeService mNeedSwitchBindMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 1823
    iget-boolean v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v8, :cond_16

    .line 1824
    const/4 v4, 0x0

    .line 1825
    .local v4, ret:Z
    const/4 v0, -0x1

    .line 1826
    .local v0, cdmaModemStatus:I
    const/4 v1, -0x1

    .line 1831
    .local v1, gsmModemStatus:I
    invoke-direct {p0, v6}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v0

    .line 1832
    invoke-direct {p0, v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getModemPowerStatus(I)I

    move-result v1

    .line 1835
    if-ne v0, v6, :cond_14

    .line 1839
    const-string/jumbo v8, "yulong.is.switching.slot"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v4

    .line 1844
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 1849
    :goto_5
    if-ne v1, v6, :cond_15

    .line 1853
    sget-object v8, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    move-result v4

    .line 1858
    sget-object v7, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 1863
    :goto_6
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v7, v5

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aget v5, v5, v6

    if-ne v5, v6, :cond_13

    .line 1865
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z

    .line 1878
    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v4           #ret:Z
    :cond_13
    :goto_7
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1879
    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v5, :cond_18

    .line 1880
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_8
    move v5, v6

    .line 1890
    goto/16 :goto_0

    .line 1846
    .restart local v0       #cdmaModemStatus:I
    .restart local v1       #gsmModemStatus:I
    .restart local v4       #ret:Z
    :cond_14
    iget-object v8, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v8, v5

    goto :goto_5

    .line 1860
    :cond_15
    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v7, v6

    goto :goto_6

    .line 1871
    .end local v0           #cdmaModemStatus:I
    .end local v1           #gsmModemStatus:I
    .end local v4           #ret:Z
    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-gt v2, v7, :cond_17

    .line 1872
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I

    aput v6, v5, v2

    .line 1871
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1875
    :cond_17
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V

    goto :goto_7

    .line 1885
    :cond_18
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method

.method public setCallBack(Lcom/yulong/android/internal/telephony/IPhoneModeListener;I)V
    .locals 7
    .parameter "callback"
    .parameter "events"

    .prologue
    .line 3500
    if-eqz p2, :cond_2

    .line 3501
    iget-object v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3503
    const/4 v3, 0x0

    .line 3505
    .local v3, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3506
    .local v1, b:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3508
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .local v4, r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3509
    :try_start_1
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3511
    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_2
    iget-object v5, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 3522
    :goto_1
    iput p2, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->events:I

    .line 3523
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3527
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #i:I
    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :goto_2
    return-void

    .line 3508
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_0

    .line 3516
    :cond_1
    :try_start_3
    new-instance v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;-><init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3517
    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :try_start_4
    iput-object v1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->binder:Landroid/os/IBinder;

    .line 3518
    iput-object p1, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;->callback:Lcom/yulong/android/internal/telephony/IPhoneModeListener;

    .line 3519
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3523
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

    .line 3525
    .end local v3           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :cond_2
    invoke-interface {p1}, Lcom/yulong/android/internal/telephony/IPhoneModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 3523
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v2       #i:I
    .restart local v4       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    .restart local v3       #r:Lcom/yulong/android/internal/telephony/DualPhoneModeService$Record;
    goto :goto_3
.end method

.method public setCurConnectMode(I)V
    .locals 0
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4346
    return-void
.end method

.method public setDataFirewall(II)V
    .locals 0
    .parameter "phoneid"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4353
    return-void
.end method

.method public setNetSelectMode(Ljava/lang/String;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4359
    return-void
.end method

.method public setPinByIccLockSettings(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "phoneId"

    .prologue
    .line 3331
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I

    move-result v0

    .line 3332
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

    invoke-direct {p0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 3347
    iget-object v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3348
    invoke-direct {p0, p2, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 3350
    const/4 v1, 0x1

    return v1
.end method

.method public supplyDualPin(Ljava/lang/String;I)Z
    .locals 8
    .parameter "pin"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 2606
    const/4 v3, 0x0

    .line 2607
    .local v3, result:Z
    invoke-direct {p0, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v2

    .line 2608
    .local v2, phoneId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CP_COMM: enter supplyDualPin, sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSelectNet="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2610
    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v5, :cond_0

    .line 2654
    :goto_0
    return v4

    .line 2613
    :cond_0
    iput v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2614
    iput v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2617
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v3

    .line 2619
    if-eqz v3, :cond_3

    .line 2620
    iget-object v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v6, 0x1

    iput v6, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2622
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v6, ""

    iput-object v6, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2623
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const-string v6, ""

    iput-object v6, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2624
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p1, v4, p2

    .line 2626
    invoke-direct {p0, p1, p2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2627
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2631
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2642
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 2643
    const/4 v4, -0x1

    iput v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2646
    :cond_2
    sget-object v5, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    monitor-enter v5

    .line 2648
    :try_start_3
    sget-object v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock1:Ljava/lang/Object;

    const-wide/16 v6, 0x1194

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2653
    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v3

    .line 2654
    goto :goto_0

    .line 2627
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2638
    :catch_0
    move-exception v1

    .line 2639
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: RemoteException from supplyDualPin()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 2633
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_7
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    .line 2634
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    iget-byte v4, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B

    if-gez v4, :cond_1

    .line 2635
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-byte v5, v4, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPinNumLeft:B
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 2649
    :catch_1
    move-exception v0

    .line 2651
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2653
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4
.end method

.method public supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "puk"
    .parameter "newPin"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 2670
    const/4 v2, 0x0

    .line 2671
    .local v2, result:Z
    invoke-direct {p0, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertSlotIdToPhoneId(I)I

    move-result v1

    .line 2672
    .local v1, phoneId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP_COMM: enter supplyDualPuk, sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSelectNet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 2674
    iget-boolean v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z

    if-eqz v4, :cond_0

    .line 2712
    :goto_0
    return v3

    .line 2677
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    .line 2678
    iput v1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    .line 2681
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, v1}, Lcom/android/internal/telephony/ITelephony;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2683
    if-eqz v2, :cond_3

    .line 2684
    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2685
    :try_start_1
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v5, 0x1

    iput v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 2686
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/16 v5, 0xa

    iput-byte v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2687
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mMCCMNC:Ljava/lang/String;

    .line 2688
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const-string v5, ""

    iput-object v5, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    .line 2689
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;

    aput-object p2, v3, p3

    .line 2691
    invoke-direct {p0, p2, p3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->savePinToNativeService(Ljava/lang/String;I)I

    .line 2692
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2696
    :try_start_2
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getCardTypeBySendAt()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2708
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 2709
    const/4 v3, -0x1

    iput v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I

    :cond_2
    move v3, v2

    .line 2712
    goto :goto_0

    .line 2692
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2704
    :catch_0
    move-exception v0

    .line 2705
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CP_COMM: RemoteException from supplyDualPuk()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 2698
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    .line 2700
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    iget-byte v3, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B

    if-gez v3, :cond_1

    .line 2701
    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    aget-object v3, v3, p3

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mPukNumLeft:B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public updateCardStateToNativeService(II)I
    .locals 4
    .parameter "cardState"
    .parameter "slotId"

    .prologue
    .line 4282
    const/4 v1, 0x0

    .line 4284
    .local v1, result:I
    const-string v2, "enter into updateCardStateToNativeService()"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4286
    :try_start_0
    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v0

    .line 4288
    .local v0, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v0, :cond_0

    .line 4289
    const-string/jumbo v2, "myNativeSlotService != null"

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4290
    invoke-interface {v0, p1, p2}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->updateCardStateToNativeService(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4296
    .end local v0           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCardStateToNativeService(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V

    .line 4298
    return v1

    .line 4292
    :catch_0
    move-exception v2

    goto :goto_0
.end method
