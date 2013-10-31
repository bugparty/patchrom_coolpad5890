.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static mPhoneResetCount:I

.field static final preferredCdmaSubscription:I

.field static final preferredNetworkMode:I

.field private static sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private static sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;

.field private static sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 57
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 59
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 60
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 65
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 66
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 67
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 402
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 404
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCdmaPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 409
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 410
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 411
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getGsmPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 5
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 356
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType,networkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 384
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 368
    goto :goto_0

    .line 377
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 380
    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isNotShowPIM()Z
    .locals 6

    .prologue
    .line 455
    const-string/jumbo v4, "ro.yulong.boot.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, bootReason:Ljava/lang/String;
    const/4 v0, 0x0

    .line 457
    .local v0, bExceptPowerOn:Z
    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "excep_press_poweron"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 461
    :cond_0
    const-string/jumbo v4, "persist.sys.yllastshut.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, shutReason:Ljava/lang/String;
    const/4 v1, 0x0

    .line 464
    .local v1, bShutLowmem:Z
    if-eqz v3, :cond_1

    .line 465
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "lowmem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 469
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 470
    const/4 v4, 0x1

    .line 472
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 28
    .parameter "context"

    .prologue
    .line 95
    const-class v25, Lcom/android/internal/telephony/Phone;

    monitor-enter v25

    .line 96
    :try_start_0
    sget-boolean v24, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v24, :cond_5

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v24

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 98
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 100
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v24, :cond_0

    .line 101
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v26, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 325
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 105
    :cond_0
    const/16 v22, 0x0

    .line 107
    .local v22, retryCount:I
    :goto_0
    const/4 v9, 0x0

    .line 108
    .local v9, hasException:Z
    add-int/lit8 v22, v22, 0x1

    .line 113
    :try_start_1
    new-instance v24, Landroid/net/LocalServerSocket;

    const-string v26, "com.android.internal.telephony"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_1
    if-nez v9, :cond_6

    .line 130
    :try_start_2
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->init()V

    .line 132
    invoke-static {}, Lcom/yulong/android/internal/telephony/InternationalAddressUtil;->init()V

    .line 134
    const-string/jumbo v24, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 137
    .local v18, powerManager:Landroid/os/PowerManager;
    new-instance v24, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 139
    const/16 v20, 0x0

    .line 141
    .local v20, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 142
    const/16 v20, 0x7

    .line 145
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v26, "preferred_network_mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 150
    .local v15, networkMode:I
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CP_COMM: Network Mode set to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v16

    .line 155
    .local v16, phoneOneType:I
    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v17

    .line 158
    .local v17, phoneTwoType:I
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x4

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 161
    :cond_2
    const-string v24, "gsm.current.phone-type"

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_2
    const/4 v4, 0x0

    .line 172
    .local v4, cdmaSubscription:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v14

    .line 173
    .local v14, lteOnCdma:I
    packed-switch v14, :pswitch_data_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v26, "preferred_cdma_subscription"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 186
    const-string v24, "PHONE"

    const-string/jumbo v26, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_3
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cdma Subscription set to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v24, v0

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 192
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v24, v0

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 194
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CP_COMM: phoneOneType:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";phoneTwoType"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-static {v0, v4, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 198
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v4, v1, v2}, Lcom/android/internal/telephony/PhoneFactory;->makePhone(Landroid/content/Context;III)V

    .line 200
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v27, v24, v26

    .line 201
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v26, 0x1

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v27, v24, v26

    .line 202
    new-instance v24, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 203
    new-instance v24, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 204
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v27, v24, v26

    .line 205
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v26, 0x1

    sget-object v27, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    aput-object v27, v24, v26

    .line 207
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCheckCardType()I

    move-result v24

    if-nez v24, :cond_c

    .line 208
    const-string v24, "PHONE"

    const-string v26, "CP_COMM: PhoneModeService getCheckCardType = COMM_CHECK_CARD_FRAMEWORK"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 210
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 214
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isFastPowerOnEnabled()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 215
    const-string/jumbo v24, "persist.sys.fastbootup.mode"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 217
    :try_start_3
    const-string v24, "com.yulong.android.poweroff.PowerOffManager"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 218
    .local v19, powerOffManager:Ljava/lang/Class;
    const-string v24, "getInstance"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 219
    .local v10, instance:Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 220
    .local v21, retObj:Ljava/lang/Object;
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "powerOffManager:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " instance:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string/jumbo v24, "isSilenceRebootMode"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 223
    .local v13, isSilenceRebootMode:Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 225
    .local v11, isInSRM:Z
    const-string v24, "getSystemState"

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 226
    .local v8, getSystemState:Ljava/lang/reflect/Method;
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 228
    .local v23, systemState:I
    const-string v24, "SYSTEM_STATE_SHUTDOWN"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 229
    .local v7, fld:Ljava/lang/reflect/Field;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 231
    .local v3, SYSTEM_STATE_SHUTDOWN:I
    move/from16 v0, v23

    if-ne v0, v3, :cond_9

    const/4 v12, 0x1

    .line 232
    .local v12, isOnSRM:Z
    :goto_4
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "isSilenceRebootMode isInSRM:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " isOnSRM :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v11, :cond_3

    .line 234
    if-eqz v12, :cond_3

    .line 235
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeService;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/yulong/android/internal/telephony/PhoneModeService;->setSilenceRebootFlag()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 247
    .end local v3           #SYSTEM_STATE_SHUTDOWN:I
    .end local v7           #fld:Ljava/lang/reflect/Field;
    .end local v8           #getSystemState:Ljava/lang/reflect/Method;
    .end local v10           #instance:Ljava/lang/reflect/Method;
    .end local v11           #isInSRM:Z
    .end local v12           #isOnSRM:Z
    .end local v13           #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .end local v19           #powerOffManager:Ljava/lang/Class;
    .end local v21           #retObj:Ljava/lang/Object;
    .end local v23           #systemState:I
    :cond_3
    :goto_5
    :try_start_4
    const-string/jumbo v24, "yulong.radio.reset.count"

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    sput v24, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 249
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mPhoneResetCount = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v24, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 253
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->setRilresetFlag(I)V

    .line 254
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->setRilresetFlag(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    const-wide/16 v26, 0x1388

    :try_start_5
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 299
    :cond_4
    :goto_6
    :try_start_6
    sget v24, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    add-int/lit8 v24, v24, 0x1

    sput v24, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    .line 300
    const-string v24, "PHONE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mPhoneResetCount = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string/jumbo v24, "yulong.radio.reset.count"

    sget v26, Lcom/android/internal/telephony/PhoneFactory;->mPhoneResetCount:I

    const v27, 0xffff

    rem-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_7
    if-nez v16, :cond_d

    .line 310
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 311
    const-string v24, "PHONE"

    const-string v26, "CP_COMM: GSMPhone is the preferred phone."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_8
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 321
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v24

    const/16 v26, 0x64

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->registerEventForCdmaAndLte()V

    .line 325
    .end local v4           #cdmaSubscription:I
    .end local v9           #hasException:Z
    .end local v14           #lteOnCdma:I
    .end local v15           #networkMode:I
    .end local v16           #phoneOneType:I
    .end local v17           #phoneTwoType:I
    .end local v18           #powerManager:Landroid/os/PowerManager;
    .end local v20           #preferredNetworkMode:I
    .end local v22           #retryCount:I
    :cond_5
    monitor-exit v25

    .line 326
    return-void

    .line 114
    .restart local v9       #hasException:Z
    .restart local v22       #retryCount:I
    :catch_0
    move-exception v6

    .line 115
    .local v6, ex:Ljava/io/IOException;
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 120
    .end local v6           #ex:Ljava/io/IOException;
    :cond_6
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 121
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v26, "PhoneFactory probably already running"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :cond_7
    const-wide/16 v26, 0x7d0

    :try_start_7
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v24

    goto/16 :goto_0

    .line 166
    .restart local v15       #networkMode:I
    .restart local v16       #phoneOneType:I
    .restart local v17       #phoneTwoType:I
    .restart local v18       #powerManager:Landroid/os/PowerManager;
    .restart local v20       #preferredNetworkMode:I
    :cond_8
    :try_start_8
    const-string v24, "gsm.current.phone-type"

    new-instance v26, Ljava/lang/Integer;

    const/16 v27, 0x2

    invoke-direct/range {v26 .. v27}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    .restart local v4       #cdmaSubscription:I
    .restart local v14       #lteOnCdma:I
    :pswitch_0
    const/4 v4, 0x1

    .line 176
    const-string v24, "PHONE"

    const-string/jumbo v26, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 179
    :pswitch_1
    const/4 v4, 0x0

    const-string v24, "PHONE"

    const-string/jumbo v26, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 231
    .restart local v3       #SYSTEM_STATE_SHUTDOWN:I
    .restart local v7       #fld:Ljava/lang/reflect/Field;
    .restart local v8       #getSystemState:Ljava/lang/reflect/Method;
    .restart local v10       #instance:Ljava/lang/reflect/Method;
    .restart local v11       #isInSRM:Z
    .restart local v13       #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .restart local v19       #powerOffManager:Ljava/lang/Class;
    .restart local v21       #retObj:Ljava/lang/Object;
    .restart local v23       #systemState:I
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 239
    .end local v3           #SYSTEM_STATE_SHUTDOWN:I
    .end local v7           #fld:Ljava/lang/reflect/Field;
    .end local v8           #getSystemState:Ljava/lang/reflect/Method;
    .end local v10           #instance:Ljava/lang/reflect/Method;
    .end local v11           #isInSRM:Z
    .end local v13           #isSilenceRebootMode:Ljava/lang/reflect/Method;
    .end local v19           #powerOffManager:Ljava/lang/Class;
    .end local v21           #retObj:Ljava/lang/Object;
    .end local v23           #systemState:I
    :catch_2
    move-exception v5

    .line 240
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 259
    .end local v5           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 261
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 283
    .end local v5           #e:Ljava/lang/InterruptedException;
    :cond_a
    const/16 v24, 0x64

    const-string/jumbo v26, "persist.yulong.network2"

    const/16 v27, 0x64

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 286
    const-string/jumbo v24, "persist.yulong.network2"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_b
    const/16 v24, 0x64

    const-string/jumbo v26, "persist.yulong.network1"

    const/16 v27, 0x64

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 293
    const-string/jumbo v24, "persist.yulong.network1"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 305
    :cond_c
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->setPhoneValue(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;)V

    .line 306
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getDefault()Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    goto/16 :goto_7

    .line 313
    :cond_d
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneProxy:Lcom/android/internal/telephony/Phone;

    sput-object v24, Lcom/android/internal/telephony/PhoneFactory;->sProxyPreferredPhone:Lcom/android/internal/telephony/Phone;

    .line 314
    const-string v24, "PHONE"

    const-string v26, "CP_COMM: CDMAPhone is the preferred phone."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "current_data_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    return-void
.end method

.method private static makePhone(Landroid/content/Context;III)V
    .locals 5
    .parameter "context"
    .parameter "cdmaSubscription"
    .parameter "commType"
    .parameter "phoneId"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, tempRil:Lcom/android/internal/telephony/CommandsInterface;
    const/4 v0, 0x0

    .line 480
    .local v0, tempPhone:Lcom/android/internal/telephony/PhoneBase;
    packed-switch p2, :pswitch_data_0

    .line 530
    :goto_0
    if-ne v4, p3, :cond_1

    .line 531
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 532
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 537
    :goto_1
    return-void

    .line 482
    :pswitch_0
    new-instance v1, Lcom/android/internal/telephony/RIL;

    .end local v1           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v1, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 484
    .restart local v1       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 492
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 493
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 486
    :pswitch_1
    const-string v2, "PHONE"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 488
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 500
    :pswitch_2
    new-instance v1, Lcom/android/internal/telephony/RIL;

    .end local v1           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v1, p0, v4, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 502
    .restart local v1       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 503
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 506
    :pswitch_3
    if-ne v4, p3, :cond_0

    .line 507
    new-instance v1, Lcom/android/internal/telephony/RIL;

    .end local v1           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v1, p0, v2, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 509
    .restart local v1       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 517
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 518
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 511
    :pswitch_4
    const-string v2, "PHONE"

    const-string v3, "Creating CDMALTEPhone"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 513
    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/RIL;

    .end local v1           #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    invoke-direct {v1, p0, v4, p1, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    .line 523
    .restart local v1       #tempRil:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v0           #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .restart local v0       #tempPhone:Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0

    .line 534
    :cond_1
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmRIL:Lcom/android/internal/telephony/CommandsInterface;

    .line 535
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 484
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 509
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 424
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method private static registerEventForCdmaAndLte()V
    .locals 6

    .prologue
    const v5, 0x42074

    const v4, 0x42070

    const/4 v3, 0x0

    .line 331
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v2, 0x4206e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForSetupDataCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForCdmaNotifyMeid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v2, 0x4206f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForDataCallRst(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForDSDisconnectDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v2, 0x42073

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForCdmaDSDormant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-interface {v0, v1, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVIAStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    return-void
.end method
