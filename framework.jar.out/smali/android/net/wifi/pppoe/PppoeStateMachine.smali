.class public Landroid/net/wifi/pppoe/PppoeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectedState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectingState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$NotSupportedState;,
        Landroid/net/wifi/pppoe/PppoeStateMachine$DefaultState;
    }
.end annotation


# static fields
.field static final BASE:I = 0x26000

.field static final CMD_CONNECT_TO_PPPOE_FAIL:I = 0x2601b

.field static final CMD_CONNECT_TO_PPPOE_SUCCESS:I = 0x2601a

.field static final CMD_LOAD_PPPOE:I = 0x26002

.field static final CMD_PPPOE_SERVICE_STARTED:I = 0x2601c

.field static final CMD_PPPOE_SUPPORTED:I = 0x26001

.field static final CMD_START_PPPOE:I = 0x26004

.field static final CMD_START_PPPOE_FAIL:I = 0x2601e

.field static final CMD_START_PPPOE_SUCCESS:I = 0x2601d

.field static final CMD_STOP_PPPOE:I = 0x26005

.field static final CMD_UNLOAD_PPPOE:I = 0x26003

.field static final CMD_WIFI_DISABLED:I = 0x2600a

.field static final CMD_WIFI_RESUMED:I = 0x2600b

.field private static final DBG:Z = true

.field private static final PPPOE_CONFIG_PROP:Ljava/lang/String; = "ro.wlan.pppoe_enable"

.field private static final TAG:Ljava/lang/String; = "PppoeStateMachine"


# instance fields
.field private mConnectState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectingState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectState:Lcom/android/internal/util/State;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mHaveConnectedSuccess:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsWifiEnabled:Z

.field private mNotSupportedState:Lcom/android/internal/util/State;

.field mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

.field mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

.field mPppoeMonitor:Landroid/net/wifi/pppoe/PppoeMonitor;

.field private mPppoeStartedState:Lcom/android/internal/util/State;

.field private mPppoeStoppedState:Lcom/android/internal/util/State;

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v0, "PppoeStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DefaultState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 70
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$NotSupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$NotSupportedState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mNotSupportedState:Lcom/android/internal/util/State;

    .line 71
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;

    .line 72
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStartedState:Lcom/android/internal/util/State;

    .line 73
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectState:Lcom/android/internal/util/State;

    .line 74
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    .line 75
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 76
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectState:Lcom/android/internal/util/State;

    .line 77
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 78
    new-instance v0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 83
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 85
    iput-boolean v2, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z

    .line 86
    iput-boolean v2, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z

    .line 87
    new-instance v0, Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 90
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mNotSupportedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 92
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 93
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStartedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 94
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 97
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 98
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 99
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 102
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mNotSupportedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 103
    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->start()V

    .line 105
    const-string v0, ""

    const-string/jumbo v1, "ro.wlan.pppoe_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "ro.wlan.pppoe_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 107
    :cond_0
    const-string v0, "PppoeStateMachine"

    const-string v1, "PPPoE enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->initPppoeStateMachine()V

    .line 109
    const v0, 0x26001

    invoke-virtual {p0, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(I)V

    .line 110
    const-string v0, ""

    const-string/jumbo v1, "ro.wlan.pppoe_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string/jumbo v0, "ro.wlan.pppoe_enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "PppoeStateMachine"

    const-string/jumbo v1, "set systemp roperty enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v0, "PppoeStateMachine"

    const-string v1, "PPPoE disabled by ro.wlan.pppoe_enable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/pppoe/PppoeStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/wifi/pppoe/PppoeStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStartResultBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/pppoe/PppoeStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/net/wifi/pppoe/PppoeStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/pppoe/PppoeStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/pppoe/PppoeStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/pppoe/PppoeStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private sendPppoeStartResultBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string/jumbo v1, "pppoe_result_status"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 182
    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    const-string/jumbo v1, "pppoe_result_status"

    const-string v2, "ALREADY_ONLINE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 185
    :cond_1
    const-string/jumbo v1, "pppoe_result_status"

    const-string v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendPppoeStateChangeBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-virtual {v1, p1}, Landroid/net/wifi/pppoe/PppoeInfo;->updatePppoeStatus(Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getPppoeInfo()Landroid/net/wifi/pppoe/PppoeInfo;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-virtual {v0}, Landroid/net/wifi/pppoe/PppoeInfo;->updatePppoeOnlineTime()V

    .line 168
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    return-object v0
.end method

.method public initPppoeStateMachine()V
    .locals 3

    .prologue
    .line 121
    new-instance v1, Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-direct {v1}, Landroid/net/wifi/pppoe/PppoeInfo;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    .line 122
    new-instance v1, Landroid/net/wifi/pppoe/PppoeConfig;

    invoke-direct {v1}, Landroid/net/wifi/pppoe/PppoeConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    .line 123
    new-instance v1, Landroid/net/wifi/pppoe/PppoeMonitor;

    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/pppoe/PppoeMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeMonitor:Landroid/net/wifi/pppoe/PppoeMonitor;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/pppoe/PppoeStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$1;-><init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method public startPppoe(Landroid/net/wifi/pppoe/PppoeConfig;)V
    .locals 1
    .parameter "pppoeConfig"

    .prologue
    .line 153
    const v0, 0x26002

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 154
    return-void
.end method

.method public stopPppoe()V
    .locals 1

    .prologue
    .line 160
    const v0, 0x26005

    invoke-virtual {p0, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(I)V

    .line 161
    return-void
.end method
