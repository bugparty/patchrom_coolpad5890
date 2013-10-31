.class final Landroid/net/wifi/pppoe/PppoeConfig$1;
.super Ljava/lang/Object;
.source "PppoeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/pppoe/PppoeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/pppoe/PppoeConfig;
    .locals 2
    .parameter "in"

    .prologue
    .line 103
    new-instance v0, Landroid/net/wifi/pppoe/PppoeConfig;

    invoke-direct {v0}, Landroid/net/wifi/pppoe/PppoeConfig;-><init>()V

    .line 105
    .local v0, info:Landroid/net/wifi/pppoe/PppoeConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/pppoe/PppoeConfig;->interf:Ljava/lang/String;

    .line 108
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/pppoe/PppoeConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/pppoe/PppoeConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 112
    new-array v0, p1, [Landroid/net/wifi/pppoe/PppoeConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeConfig$1;->newArray(I)[Landroid/net/wifi/pppoe/PppoeConfig;

    move-result-object v0

    return-object v0
.end method
