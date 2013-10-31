.class final Landroid/net/wifi/pppoe/PppoeInfo$1;
.super Ljava/lang/Object;
.source "PppoeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeInfo;
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
        "Landroid/net/wifi/pppoe/PppoeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/pppoe/PppoeInfo;
    .locals 3
    .parameter "in"

    .prologue
    .line 86
    new-instance v0, Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-direct {v0}, Landroid/net/wifi/pppoe/PppoeInfo;-><init>()V

    .line 88
    .local v0, info:Landroid/net/wifi/pppoe/PppoeInfo;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/pppoe/PppoeInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/pppoe/PppoeInfo;->status:Landroid/net/wifi/pppoe/PppoeInfo$Status;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/net/wifi/pppoe/PppoeInfo;->online_time:J

    .line 90
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/pppoe/PppoeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/pppoe/PppoeInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    new-array v0, p1, [Landroid/net/wifi/pppoe/PppoeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/net/wifi/pppoe/PppoeInfo$1;->newArray(I)[Landroid/net/wifi/pppoe/PppoeInfo;

    move-result-object v0

    return-object v0
.end method
