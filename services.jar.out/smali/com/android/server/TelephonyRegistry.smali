.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$Record;,
        Lcom/android/server/TelephonyRegistry$Injector;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final SUBSCRIPTION:Ljava/lang/String;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCallForwarding:Z

.field private mCallForwarding2:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallIncomingNumber2:Ljava/lang/String;

.field private mCallState:I

.field private mCallState2:I

.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mCellInfo2:Landroid/telephony/CellInfo;

.field private mCellLocation:Landroid/os/Bundle;

.field private mCellLocation2:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedApns2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_ACCESS:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
.end field

.field private mDataActivity:I

.field private mDataActivity2:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionApn2:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkCapabilities2:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionLinkProperties2:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionNetworkType2:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionPossible2:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionReason2:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDataConnectionState2:I

.field private mDefaultSubscription:I

.field private mMessageWaiting:Z

.field private mMessageWaiting2:Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mServiceState2:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrength2:Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 82
    const-string v1, "SUBSCRIPTION"

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->SUBSCRIPTION:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 92
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 93
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    .line 95
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    .line 96
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    .line 98
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    .line 99
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    .line 101
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 102
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 104
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    .line 105
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    .line 110
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    .line 111
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    .line 113
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 114
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 116
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    .line 119
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    .line 122
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn2:Ljava/lang/String;

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    .line 139
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    .line 141
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 143
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    .line 144
    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Landroid/telephony/CellInfo;

    .line 161
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 165
    .local v0, location:Landroid/telephony/CellLocation;
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubscription:I

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1473
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualCallStateChanged(ILjava/lang/String;I)V

    .line 1474
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1479
    .local v0, ident:J
    if-nez p1, :cond_1

    .line 1480
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1490
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1492
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1494
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1496
    :cond_0
    const-string v3, "SUBSCRIPTION"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1497
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1498
    return-void

    .line 1482
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1484
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1487
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1610
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1611
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .locals 10
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"

    .prologue
    .line 1541
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    .line 1544
    return-void
.end method

.method private broadcastDualCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneId"

    .prologue
    const/high16 v7, 0x2000

    .line 1500
    const-string v4, "TelephonyRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcastCallStateChanged: state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",incomingNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 1504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1506
    .local v0, ident:J
    if-nez p1, :cond_3

    .line 1507
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1517
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1519
    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1521
    const-string v4, "incoming_number"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1526
    .end local v0           #ident:J
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_PHONE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v3, intentDual:Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1528
    const-string v4, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1530
    const-string v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    :cond_2
    const-string v4, "phoneIdKey"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1534
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1535
    return-void

    .line 1509
    .end local v3           #intentDual:Landroid/content/Intent;
    .restart local v0       #ident:J
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1511
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1514
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneId"

    .prologue
    .line 1614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneIdKey"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1619
    return-void
.end method

.method private broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V
    .locals 5
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "roaming"
    .parameter "phoneId"

    .prologue
    const/4 v4, 0x1

    .line 1556
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "phoneIdKey"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    if-nez p2, :cond_0

    .line 1562
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1564
    :cond_0
    if-eqz p3, :cond_1

    .line 1565
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1567
    :cond_1
    if-eqz p6, :cond_2

    .line 1568
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1569
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1571
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    .end local v0           #iface:Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1575
    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1577
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1579
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1607
    return-void
.end method

.method private broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 9
    .parameter "state"
    .parameter "phoneId"

    .prologue
    const/high16 v8, 0x2000

    .line 1391
    const-string v5, "TelephonyRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastServiceStateChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1394
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1395
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 1396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1398
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1407
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1408
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1411
    .end local v1           #ident:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SERVICE_STATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1412
    .local v4, intentDual:Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1413
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1414
    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1417
    return-void

    .line 1402
    .end local v4           #intentDual:Landroid/content/Intent;
    .restart local v1       #ident:J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1399
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .parameter "signalStrength"
    .parameter "phoneId"

    .prologue
    const/high16 v6, 0x2000

    .line 1443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1444
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1446
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1449
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1456
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SIG_STR"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1460
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1461
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1464
    .end local v1           #ident:J
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "yulong.intent.action.DUAL_SIG_STR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v4, intentDual:Landroid/content/Intent;
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1466
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1467
    const-string v5, "phoneIdKey"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1468
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1469
    return-void

    .line 1453
    .end local v4           #intentDual:Landroid/content/Intent;
    .restart local v1       #ident:J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1450
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1368
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 1369
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 1372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1374
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1381
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1384
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1385
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1387
    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1389
    return-void

    .line 1378
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1375
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1420
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    .line 1421
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 5
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 1424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1426
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1433
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1436
    .local v0, data:Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1437
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1438
    const-string v4, "SUBSCRIPTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1439
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1440
    return-void

    .line 1430
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1427
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private checkListenerPermission(I)V
    .locals 3
    .parameter "events"

    .prologue
    const/4 v2, 0x0

    .line 1633
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_1
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_2

    .line 1646
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_2
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1624
    const/4 v1, 0x1

    .line 1629
    :goto_0
    return v1

    .line 1626
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .prologue
    .line 1652
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1653
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1654
    .local v0, b:Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1656
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1658
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .parameter "binder"

    .prologue
    .line 563
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 564
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 565
    .local v1, recordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    monitor-exit v3

    .line 572
    :goto_1
    return-void

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
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

.method private sendCellInfo(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/CellInfo;)V
    .locals 1
    .parameter "r"
    .parameter "cellInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/CellInfo;I)V

    .line 1299
    return-void
.end method

.method private sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V
    .locals 1
    .parameter "r"
    .parameter "cellLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 1265
    return-void
.end method

.method private sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/CellInfo;I)V
    .locals 2
    .parameter "r"
    .parameter "cellInfo"
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/telephony/CellInfo;

    invoke-direct {v1, p2}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V

    .line 1306
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/telephony/CellInfo;

    invoke-direct {v1, p2}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Landroid/telephony/CellInfo;I)V

    .line 1309
    :cond_1
    return-void
.end method

.method private sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "r"
    .parameter "cellLocation"
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V

    .line 1272
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellLocationChanged(Landroid/os/Bundle;I)V

    .line 1275
    :cond_1
    return-void
.end method

.method private sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V
    .locals 4
    .parameter "r"
    .parameter "signalStrength"
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1282
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    if-ne p3, v1, :cond_0

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_0

    .line 1285
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, sState:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength SimCard state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 1290
    .end local v0           #sState:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_1

    .line 1291
    const-string v1, "cdma.ruim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .restart local v0       #sState:Ljava/lang/String;
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDualSignalStrength RuimCard state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 1295
    .end local v0           #sState:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private sendSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "r"
    .parameter "signalStrength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1278
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 1279
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1332
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    :goto_0
    return-void

    .line 1338
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1339
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1340
    .local v2, recordCount:I
    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1358
    .local v1, r:Lcom/android/server/TelephonyRegistry$Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v2           #recordCount:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #recordCount:I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 12
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 307
    if-eqz p3, :cond_18

    .line 309
    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    invoke-static {p3, p0}, Lcom/android/server/TelephonyRegistry$Injector;->checkPermission(ILcom/android/server/TelephonyRegistry;)Z

    move-result v8

    if-eqz v8, :cond_lewa_0

    .line 311
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 313
    const/4 v5, 0x0

    .line 315
    .local v5, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 316
    .local v1, b:Landroid/os/IBinder;
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 317
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v3, v0, :cond_d

    .line 318
    :try_start_1
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 319
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v8, :cond_c

    .line 329
    :goto_1
    iget v8, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int/2addr v8, p3

    and-int v7, p3, v8

    .line 330
    .local v7, send:I
    iput p3, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz p4, :cond_b

    .line 333
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_0

    .line 334
    :try_start_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_e

    .line 335
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    .line 340
    :cond_0
    :goto_2
    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_2

    .line 341
    const/4 v4, -0x1

    .line 342
    .local v4, iSignalStrength:I
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_f

    .line 343
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 349
    :goto_3
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v10, 0x63

    if-ne v4, v10, :cond_1

    const/4 v4, -0x1

    .end local v4           #iSignalStrength:I
    :cond_1
    invoke-interface {v8, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    .line 353
    :cond_2
    and-int/lit8 v8, p3, 0x4

    if-eqz v8, :cond_3

    .line 354
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10

    .line 355
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 362
    :cond_3
    :goto_4
    and-int/lit8 v8, p3, 0x8

    if-eqz v8, :cond_4

    .line 363
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_11

    .line 364
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 371
    :cond_4
    :goto_5
    and-int/lit8 v8, p3, 0x10

    if-eqz v8, :cond_5

    .line 372
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_12

    .line 373
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    invoke-direct {p0, v5, v8}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    .line 378
    :cond_5
    :goto_6
    and-int/lit8 v8, p3, 0x20

    if-eqz v8, :cond_6

    .line 379
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_13

    .line 380
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 387
    :cond_6
    :goto_7
    and-int/lit8 v8, p3, 0x40

    if-eqz v8, :cond_7

    .line 388
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_14

    .line 389
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    invoke-interface {v8, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 398
    :cond_7
    :goto_8
    and-int/lit16 v8, p3, 0x80

    if-eqz v8, :cond_8

    .line 399
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_15

    .line 400
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 405
    :cond_8
    :goto_9
    and-int/lit16 v8, p3, 0x100

    if-eqz v8, :cond_9

    .line 406
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_16

    .line 407
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 414
    :cond_9
    :goto_a
    and-int/lit16 v8, p3, 0x200

    if-eqz v8, :cond_a

    .line 415
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V

    .line 417
    :cond_a
    and-int/lit16 v8, p3, 0x400

    if-eqz v8, :cond_b

    .line 418
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_17

    .line 419
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Landroid/telephony/CellInfo;

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 428
    :cond_b
    :goto_b
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :cond_lewa_0
    :goto_c
    return-void

    .line 317
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    move-object v6, v5

    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 323
    :cond_d
    :try_start_5
    new-instance v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v1, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 325
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 326
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 327
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 428
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #i:I
    :catchall_0
    move-exception v8

    :goto_d
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 337
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v7       #send:I
    :cond_e
    :try_start_7
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v5, v8}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_8
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    .line 346
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v4       #iSignalStrength:I
    :cond_f
    :try_start_9
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v4

    goto/16 :goto_3

    .line 358
    .end local v4           #iSignalStrength:I
    :cond_10
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_4

    .line 367
    :cond_11
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v10, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_5

    .line 375
    :cond_12
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v5, v8}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 383
    :cond_13
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 393
    :cond_14
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v8, v10, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_8

    .line 402
    :cond_15
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v10, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_9

    .line 410
    :cond_16
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_a

    .line 421
    :cond_17
    iget-object v8, v5, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_b

    .line 430
    .end local v0           #N:I
    .end local v1           #b:Landroid/os/IBinder;
    .end local v3           #i:I
    .end local v5           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v7           #send:I
    :cond_18
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_c

    .line 428
    .restart local v0       #N:I
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v3       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v5       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_d
.end method

.method public listenDual(Ljava/lang/String;Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;IZ)V
    .locals 14
    .parameter "pkgForDebug"
    .parameter "dualCallback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 438
    if-eqz p3, :cond_e

    .line 440
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 442
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 444
    const/4 v6, 0x0

    .line 446
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 447
    .local v2, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 448
    .local v1, N:I
    const/4 v4, 0x0

    .local v4, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v4, v1, :cond_d

    .line 449
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v9, :cond_c

    .line 460
    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 461
    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    if-eqz p4, :cond_b

    .line 464
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 465
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x1

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 467
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    const/4 v11, 0x2

    invoke-virtual {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 470
    :cond_0
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_3

    .line 471
    const/4 v5, -0x1

    .line 472
    .local v5, iSignalStrength:I
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    .line 473
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_1

    const/4 v5, -0x1

    .end local v5           #iSignalStrength:I
    :cond_1
    const/4 v11, 0x1

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    .line 478
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 480
    .restart local v5       #iSignalStrength:I
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/16 v11, 0x63

    if-ne v5, v11, :cond_2

    const/4 v5, -0x1

    .end local v5           #iSignalStrength:I
    :cond_2
    const/4 v11, 0x2

    invoke-interface {v9, v5, v11}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V

    .line 485
    :cond_3
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_4

    .line 486
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    .line 490
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V

    .line 495
    :cond_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_5

    .line 496
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    .line 500
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V

    .line 505
    :cond_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_6

    .line 506
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 508
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    const/4 v11, 0x2

    invoke-direct {p0, v6, v9, v11}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V

    .line 511
    :cond_6
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_7

    .line 512
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    .line 515
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    .line 519
    :cond_7
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_8

    .line 520
    const-string v9, "TelephonyRegistry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDataConnectionState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",mDataConnectionState2:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v13, 0x1

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    .line 528
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    const/4 v13, 0x2

    invoke-interface {v9, v11, v12, v13}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V

    .line 533
    :cond_8
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_9

    .line 534
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    .line 536
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V

    .line 539
    :cond_9
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_a

    .line 540
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 543
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V

    .line 547
    :cond_a
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_b

    .line 548
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Landroid/telephony/CellInfo;I)V

    .line 550
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Landroid/telephony/CellInfo;

    const/4 v12, 0x2

    invoke-interface {v9, v11, v12}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCellInfoChanged(Landroid/telephony/CellInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 557
    :cond_b
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 561
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_3
    return-void

    .line 448
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 454
    :cond_d
    :try_start_5
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v2, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 456
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    .line 457
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 458
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 557
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v4           #i:I
    :catchall_0
    move-exception v9

    :goto_4
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 553
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v8       #send:I
    :catch_0
    move-exception v3

    .line 554
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_7
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 559
    .end local v1           #N:I
    .end local v2           #b:Landroid/os/IBinder;
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v4           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_e
    invoke-interface/range {p2 .. p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_3

    .line 557
    .restart local v1       #N:I
    .restart local v2       #b:Landroid/os/IBinder;
    .restart local v4       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_4
.end method

.method public listenOnSubscription(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 13
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"
    .parameter "subscription"

    .prologue
    .line 180
    if-eqz p3, :cond_17

    .line 182
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 184
    iget-object v10, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 186
    const/4 v6, 0x0

    .line 188
    .local v6, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 189
    .local v3, b:Landroid/os/IBinder;
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 190
    .local v1, N:I
    const/4 v5, 0x0

    .local v5, i:I
    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .local v7, r:Lcom/android/server/TelephonyRegistry$Record;
    :goto_0
    if-ge v5, v1, :cond_c

    .line 191
    :try_start_1
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_2
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, v9, :cond_b

    .line 203
    :goto_1
    iget v9, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v9, v9, p3

    and-int v8, p3, v9

    .line 204
    .local v8, send:I
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    if-eqz p4, :cond_a

    .line 207
    and-int/lit8 v9, p3, 0x1

    if-eqz v9, :cond_0

    .line 208
    if-nez p5, :cond_d

    .line 209
    :try_start_3
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6, v9}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V

    .line 214
    :cond_0
    :goto_2
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_2

    .line 216
    if-nez p5, :cond_e

    .line 217
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 222
    .local v2, SignalStrength:I
    :goto_3
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v11, 0x63

    if-ne v2, v11, :cond_1

    const/4 v2, -0x1

    .end local v2           #SignalStrength:I
    :cond_1
    invoke-interface {v9, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    .line 226
    :cond_2
    and-int/lit8 v9, p3, 0x4

    if-eqz v9, :cond_3

    .line 227
    if-nez p5, :cond_f

    .line 228
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 235
    :cond_3
    :goto_4
    and-int/lit8 v9, p3, 0x8

    if-eqz v9, :cond_4

    .line 236
    if-nez p5, :cond_10

    .line 237
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 244
    :cond_4
    :goto_5
    and-int/lit8 v9, p3, 0x10

    if-eqz v9, :cond_5

    .line 245
    if-nez p5, :cond_11

    .line 246
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {p0, v6, v9}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    .line 251
    :cond_5
    :goto_6
    and-int/lit8 v9, p3, 0x20

    if-eqz v9, :cond_6

    .line 252
    if-nez p5, :cond_12

    .line 253
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 260
    :cond_6
    :goto_7
    and-int/lit8 v9, p3, 0x40

    if-eqz v9, :cond_7

    .line 261
    if-nez p5, :cond_13

    .line 262
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 271
    :cond_7
    :goto_8
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_8

    .line 272
    if-nez p5, :cond_14

    .line 273
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 278
    :cond_8
    :goto_9
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_9

    .line 279
    if-nez p5, :cond_15

    .line 280
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 287
    :cond_9
    :goto_a
    move/from16 v0, p3

    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_a

    .line 288
    if-nez p5, :cond_16

    .line 289
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    :cond_a
    :goto_b
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    .end local v1           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :goto_c
    return-void

    .line 190
    .restart local v1       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto/16 :goto_0

    .line 196
    :cond_c
    :try_start_5
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 197
    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_6
    iput-object v3, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 198
    iput-object p2, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 199
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    .line 200
    move/from16 v0, p5

    iput v0, v6, Lcom/android/server/TelephonyRegistry$Record;->subscription:I

    .line 201
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 298
    .end local v1           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    :catchall_0
    move-exception v9

    :goto_d
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 211
    .restart local v1       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v8       #send:I
    :cond_d
    :try_start_7
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6, v9}, Lcom/android/server/TelephonyRegistry;->sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 294
    :catch_0
    move-exception v4

    .line 295
    .local v4, ex:Landroid/os/RemoteException;
    :try_start_8
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_b

    .line 219
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_e
    :try_start_9
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v9}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .restart local v2       #SignalStrength:I
    goto/16 :goto_3

    .line 231
    .end local v2           #SignalStrength:I
    :cond_f
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto/16 :goto_4

    .line 240
    :cond_10
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v11, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto/16 :goto_5

    .line 248
    :cond_11
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    invoke-direct {p0, v6, v9}, Lcom/android/server/TelephonyRegistry;->sendCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 256
    :cond_12
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 266
    :cond_13
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    iget v12, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    invoke-interface {v9, v11, v12}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    goto/16 :goto_8

    .line 275
    :cond_14
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v11, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    goto/16 :goto_9

    .line 283
    :cond_15
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_a

    .line 291
    :cond_16
    iget-object v9, v6, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Landroid/telephony/CellInfo;

    invoke-interface {v9, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Landroid/telephony/CellInfo;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_b

    .line 300
    .end local v1           #N:I
    .end local v3           #b:Landroid/os/IBinder;
    .end local v5           #i:I
    .end local v6           #r:Lcom/android/server/TelephonyRegistry$Record;
    .end local v8           #send:I
    :cond_17
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_c

    .line 298
    .restart local v1       #N:I
    .restart local v3       #b:Landroid/os/IBinder;
    .restart local v5       #i:I
    .restart local v7       #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #r:Lcom/android/server/TelephonyRegistry$Record;
    .restart local v6       #r:Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_d
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 882
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallForwardingChanged(ZI)V

    .line 883
    return-void
.end method

.method public notifyCallForwardingChangedOnSubscription(ZI)V
    .locals 1
    .parameter "cfi"
    .parameter "subscription"

    .prologue
    .line 903
    if-nez p2, :cond_0

    .line 904
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallForwardingChanged(ZI)V

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallForwardingChanged(ZI)V

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 578
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallState(ILjava/lang/String;I)V

    .line 579
    return-void
.end method

.method public notifyCallStateOnSubscription(ILjava/lang/String;I)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "subscription"

    .prologue
    .line 601
    if-nez p3, :cond_0

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallState(ILjava/lang/String;I)V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCallState(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCellInfo(Landroid/telephony/CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    .line 783
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellInfo(Landroid/telephony/CellInfo;I)V

    .line 784
    return-void
.end method

.method public notifyCellInfoOnSubscription(Landroid/telephony/CellInfo;I)V
    .locals 1
    .parameter "cellInfo"
    .parameter "subscription"

    .prologue
    .line 787
    if-nez p2, :cond_0

    .line 788
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellInfo(Landroid/telephony/CellInfo;I)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellInfo(Landroid/telephony/CellInfo;I)V

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .parameter "cellLocation"

    .prologue
    .line 1196
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    .line 1197
    return-void
.end method

.method public notifyCellLocationOnSubscription(Landroid/os/Bundle;I)V
    .locals 1
    .parameter "cellLocation"
    .parameter "subscription"

    .prologue
    .line 1213
    if-nez p2, :cond_0

    .line 1214
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    .line 1218
    :goto_0
    return-void

    .line 1216
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualCellLocation(Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 942
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualDataActivity(II)V

    .line 943
    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 12
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"

    .prologue
    .line 1023
    :try_start_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v10

    .line 1024
    .local v10, iphoneId:I
    const-string v0, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDualDataConnection phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1025
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v10           #iphoneId:I
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v11

    .line 1031
    .local v11, e:Landroid/os/RemoteException;
    const-string v0, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDualDataConnection throw Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 1169
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualCallForwardingChanged(ZI)V
    .locals 6
    .parameter "cfi"
    .parameter "phoneId"

    .prologue
    .line 910
    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 940
    :goto_0
    return-void

    .line 913
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallForwardingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 916
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 917
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding2:Z

    .line 922
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 923
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 925
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 926
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 929
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 930
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallForwardingIndicatorChanged(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 939
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 919
    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    goto :goto_1

    .line 938
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 939
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualCallState(ILjava/lang/String;I)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneId"

    .prologue
    .line 608
    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCallState, state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",incomingNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 613
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    .line 614
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState2:I

    .line 615
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber2:Ljava/lang/String;

    .line 620
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 621
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    .line 624
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 625
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 627
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 628
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 637
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 617
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    .line 618
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    goto :goto_1

    .line 636
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 637
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDualCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualCellInfo(Landroid/telephony/CellInfo;I)V
    .locals 6
    .parameter "cellInfo"
    .parameter "phoneId"

    .prologue
    .line 794
    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    :goto_0
    return-void

    .line 798
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyDualCellInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 800
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 801
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo2:Landroid/telephony/CellInfo;

    .line 805
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 806
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    .line 809
    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellInfo(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/CellInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 816
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 803
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Landroid/telephony/CellInfo;

    goto :goto_1

    .line 815
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 816
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualCellLocation(Landroid/os/Bundle;I)V
    .locals 6
    .parameter "cellLocation"
    .parameter "phoneId"

    .prologue
    .line 1220
    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1225
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1226
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation2:Landroid/os/Bundle;

    .line 1231
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1232
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 1235
    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualCellLocation(Lcom/android/server/TelephonyRegistry$Record;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1242
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1228
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    goto :goto_1

    .line 1241
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1242
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualDataActivity(II)V
    .locals 6
    .parameter "state"
    .parameter "phoneId"

    .prologue
    .line 946
    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 976
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 951
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 952
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity2:I

    .line 957
    :goto_1
    const-string v3, "yulong.data.inorout"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 960
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 962
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 963
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V

    .line 966
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 967
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataActivity(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 975
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 954
    :cond_3
    :try_start_3
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    goto :goto_1

    .line 974
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 975
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .locals 15
    .parameter "state"
    .parameter "isDataConnectivityPossible"
    .parameter "reason"
    .parameter "apn"
    .parameter "apnType"
    .parameter "linkProperties"
    .parameter "linkCapabilities"
    .parameter "networkType"
    .parameter "roaming"
    .parameter "mPhoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1042
    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1046
    :cond_0
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 1053
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1054
    const-string v1, "TelephonyRegistry"

    const-string v2, "LTE is connected and ignore the DSState change of CDMA. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    goto :goto_0

    .line 1058
    :cond_1
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    .line 1061
    const-string v1, "TelephonyRegistry"

    const-string v2, "cdma is connected and ignore the DSState not connect of LTE. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    goto/16 :goto_0

    .line 1066
    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1067
    const/4 v13, 0x0

    .line 1068
    .local v13, modified:Z
    const/4 v1, 0x2

    move/from16 v0, p10

    if-ne v0, v1, :cond_8

    .line 1069
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1071
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_3

    .line 1073
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 1074
    const/4 v13, 0x1

    .line 1088
    :cond_3
    :goto_1
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible2:Z

    .line 1089
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason2:Ljava/lang/String;

    .line 1090
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties2:Landroid/net/LinkProperties;

    .line 1091
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities2:Landroid/net/LinkCapabilities;

    .line 1092
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    .line 1093
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I

    .line 1095
    const/4 v13, 0x1

    .line 1141
    :cond_4
    :goto_2
    if-eqz v13, :cond_f

    .line 1143
    const-string v1, "TelephonyRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataConnectionStateChanged("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TelephonyRegistry$Record;

    .line 1147
    .local v14, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v1, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 1149
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v1

    move/from16 v0, p10

    if-ne v0, v1, :cond_6

    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_6

    .line 1150
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1152
    :cond_6
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v1, :cond_5

    .line 1153
    iget-object v4, v14, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_c

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move v2, v1

    :goto_4
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ne v0, v1, :cond_d

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    :goto_5
    move/from16 v0, p10

    invoke-interface {v4, v2, v1, v0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualDataConnectionStateChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1156
    :catch_0
    move-exception v11

    .line 1157
    .local v11, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1163
    .end local v11           #ex:Landroid/os/RemoteException;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1078
    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1079
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1080
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    .line 1081
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1099
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_a

    .line 1100
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1101
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_9

    .line 1103
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1104
    const/4 v13, 0x1

    .line 1118
    :cond_9
    :goto_6
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    .line 1119
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    .line 1120
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    .line 1121
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 1123
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_b

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getLteSchemeSign()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1125
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1127
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    .line 1128
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1108
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1109
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1110
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    .line 1111
    const/4 v13, 0x1

    goto :goto_6

    .line 1132
    :cond_b
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_4

    .line 1133
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1136
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1153
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_c
    :try_start_4
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState2:I

    move v2, v1

    goto/16 :goto_4

    :cond_d
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType2:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 1161
    .end local v14           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_e
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1163
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_f
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    .line 1164
    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_0
.end method

.method public notifyDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "reason"
    .parameter "apnType"
    .parameter "phoneId"

    .prologue
    .line 1189
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1192
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDualDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyDualMessageWaitingChanged(ZI)V
    .locals 6
    .parameter "mwi"
    .parameter "phoneId"

    .prologue
    .line 851
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 880
    :goto_0
    return-void

    .line 854
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageWaitingChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 857
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 858
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting2:Z

    .line 863
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 864
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 866
    :try_start_1
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v3

    if-ne p2, v3, :cond_2

    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v3, :cond_2

    .line 867
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 870
    :cond_2
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v3, :cond_1

    .line 871
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualMessageWaitingIndicatorChanged(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 879
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 860
    :cond_3
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    goto :goto_1

    .line 878
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 879
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDualServiceState(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "state"
    .parameter "phoneId"

    .prologue
    .line 674
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: checkNotifyPermission fail! return! phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 680
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 681
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState2:Landroid/telephony/ServiceState;

    .line 685
    :goto_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 686
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 688
    :try_start_1
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 695
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 683
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 694
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 695
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 697
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V
    .locals 11
    .parameter "signalStrength"
    .parameter "phoneId"

    .prologue
    const/16 v10, 0x63

    const/4 v9, 0x2

    const/4 v4, -0x1

    .line 735
    const-string v5, "notifySignalStrength()"

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 781
    :goto_0
    return-void

    .line 738
    :cond_0
    const-string v5, "TelephonyRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyDualSignalStrength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 740
    if-ne p2, v9, :cond_6

    .line 741
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 746
    :goto_1
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    .local v3, r:Lcom/android/server/TelephonyRegistry$Record;
    :try_start_1
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_2

    .line 750
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/TelephonyRegistry;->sendDualSignalStrength(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/SignalStrength;I)V

    .line 753
    :cond_2
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 754
    const-string v5, "TelephonyRegistry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyDualSignalStrength LISTEN_SIGNAL_STRENGTH event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v2, -0x1

    .line 756
    .local v2, iSignalStrength:I
    if-ne p2, v9, :cond_7

    .line 758
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 764
    :cond_3
    :goto_3
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v5

    if-ne p2, v5, :cond_4

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v5, :cond_4

    .line 765
    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-ne v2, v10, :cond_8

    move v5, v4

    :goto_4
    invoke-interface {v7, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V

    .line 768
    :cond_4
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v5, :cond_1

    .line 769
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-ne v2, v10, :cond_5

    move v2, v4

    .end local v2           #iSignalStrength:I
    :cond_5
    invoke-interface {v5, v2, p2}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualSignalStrengthChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 778
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 743
    :cond_6
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 759
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #iSignalStrength:I
    .restart local v3       #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_7
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 761
    :try_start_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    goto :goto_3

    :cond_8
    move v5, v2

    .line 765
    goto :goto_4

    .line 777
    .end local v2           #iSignalStrength:I
    .end local v3           #r:Lcom/android/server/TelephonyRegistry$Record;
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 778
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDualSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_0
.end method

.method public notifyMessageWaitingChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 821
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualMessageWaitingChanged(ZI)V

    .line 822
    return-void
.end method

.method public notifyMessageWaitingChangedOnSubscription(ZI)V
    .locals 1
    .parameter "mwi"
    .parameter "subscription"

    .prologue
    .line 844
    if-nez p2, :cond_0

    .line 845
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualMessageWaitingChanged(ZI)V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualMessageWaitingChanged(ZI)V

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .parameter "otaspMode"

    .prologue
    .line 1312
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1316
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1317
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1318
    .local v2, r:Lcom/android/server/TelephonyRegistry$Record;
    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    .line 1320
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1327
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1326
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1327
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 646
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    .line 647
    return-void
.end method

.method public notifyServiceStateOnSubscription(Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "state"
    .parameter "subscription"

    .prologue
    .line 650
    const-string v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 654
    :cond_0
    const-string v0, "TelephonyRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-nez p2, :cond_1

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    goto :goto_0

    .line 670
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualServiceState(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 700
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 701
    return-void
.end method

.method public notifySignalStrengthOnSubscription(Landroid/telephony/SignalStrength;I)V
    .locals 1
    .parameter "signalStrength"
    .parameter "subscription"

    .prologue
    .line 728
    if-nez p2, :cond_0

    .line 729
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->notifyDualSignalStrength(Landroid/telephony/SignalStrength;I)V

    goto :goto_0
.end method

.method public sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V
    .locals 2
    .parameter "r"
    .parameter "state"
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1258
    :cond_0
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->dualCallback:Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v0, v1, p3}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener;->onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V

    .line 1261
    :cond_1
    return-void
.end method

.method public sendServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "r"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/TelephonyRegistry;->sendDualServiceState(Lcom/android/server/TelephonyRegistry$Record;Landroid/telephony/ServiceState;I)V

    .line 1249
    return-void
.end method
