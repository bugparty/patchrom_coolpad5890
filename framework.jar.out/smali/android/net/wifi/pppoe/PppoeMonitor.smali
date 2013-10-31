.class public Landroid/net/wifi/pppoe/PppoeMonitor;
.super Ljava/lang/Object;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final PPPOE_STATE_DISCOVERY_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PppoeMonitor"


# instance fields
.field mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 0
    .parameter "pppoeStateMachine"
    .parameter "mWn"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 22
    iput-object p2, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 23
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/pppoe/PppoeMonitor;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method private static nap(I)V
    .locals 2
    .parameter "msecs"

    .prologue
    .line 106
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method connectToPppoeService()Z
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, connectTries:I
    :goto_0
    sget v1, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeConnectTryingNum:I

    if-ge v0, v1, :cond_1

    .line 87
    add-int/lit8 v0, v0, 0x1

    .line 88
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->connectToPppoeService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "PppoeMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect to PppoeService in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times trying"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x1

    .line 97
    :goto_1
    return v1

    .line 92
    :cond_0
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeMonitor;->nap(I)V

    goto :goto_0

    .line 95
    :cond_1
    const-string v1, "PppoeMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect to PppoeService in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeConnectTryingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times trying"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_1
.end method

.method loadPppoeService()Z
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v2, v2, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->launchPppoeService(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeMonitor;->connectToPppoeService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPppoeMonitor(Landroid/net/wifi/pppoe/PppoeConfig;)V
    .locals 1
    .parameter "pppoeConfig"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeMonitor;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    .line 27
    new-instance v0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;-><init>(Landroid/net/wifi/pppoe/PppoeMonitor;)V

    invoke-virtual {v0}, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->start()V

    .line 28
    return-void
.end method
