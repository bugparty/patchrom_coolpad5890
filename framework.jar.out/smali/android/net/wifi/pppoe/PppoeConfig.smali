.class public Landroid/net/wifi/pppoe/PppoeConfig;
.super Ljava/lang/Object;
.source "PppoeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/pppoe/PppoeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final PPPOE_CONNECT_TRYING_NUM:I = 0x14

.field private static final TAG:Ljava/lang/String; = "PppoeConfig"

.field public static pppoeConnectTryingNum:I


# instance fields
.field public MSS:I

.field public interf:Ljava/lang/String;

.field public lcp_echo_failure:I

.field public lcp_echo_interval:I

.field private mAutoConnect:Z

.field public mru:I

.field public mtu:I

.field public password:Ljava/lang/String;

.field private pppoeSessionId:I

.field public timeout:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/net/wifi/pppoe/PppoeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/pppoe/PppoeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/pppoe/PppoeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->interf:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->lcp_echo_interval:I

    .line 38
    iput v1, p0, Landroid/net/wifi/pppoe/PppoeConfig;->lcp_echo_failure:I

    .line 39
    iput v2, p0, Landroid/net/wifi/pppoe/PppoeConfig;->mtu:I

    .line 40
    iput v2, p0, Landroid/net/wifi/pppoe/PppoeConfig;->mru:I

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->timeout:I

    .line 42
    iput v1, p0, Landroid/net/wifi/pppoe/PppoeConfig;->MSS:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->mAutoConnect:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeSessionId:I

    .line 46
    const/16 v0, 0x14

    sput v0, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeConnectTryingNum:I

    .line 47
    return-void
.end method


# virtual methods
.method public autoConnectEnable()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->mAutoConnect:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeSessionId:I

    return v0
.end method

.method public loadPppoeConfig(Landroid/net/wifi/pppoe/PppoeConfig;)Z
    .locals 1
    .parameter "dataToReload"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public savePppoeConfig(Landroid/net/wifi/pppoe/PppoeConfig;)Z
    .locals 2
    .parameter "dataToSave"

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "PppoeConfig"

    const-string/jumbo v1, "save PPPoE Configure data failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateSessionId(I)Z
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 61
    iput p1, p0, Landroid/net/wifi/pppoe/PppoeConfig;->pppoeSessionId:I

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void
.end method
