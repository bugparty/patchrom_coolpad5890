.class final Landroid/os/storage/StorageVolume$1;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageVolume;
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
        "Landroid/os/storage/StorageVolume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/StorageVolume;
    .locals 15
    .parameter "in"

    .prologue
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .local v2, descriptionId:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 225
    .local v14, removable:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 226
    .local v13, emulated:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .local v6, storageId:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    .local v5, mtpReserveSpace:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 229
    .local v12, allowMassStorage:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 231
    .local v8, maxFileSize:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 233
    .local v10, asecAllowAble:Z
    :goto_0
    new-instance v0, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x1

    if-ne v14, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x1

    if-ne v13, v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    const/4 v7, 0x1

    if-ne v12, v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;IZZIIZJZLandroid/os/storage/StorageVolume$1;)V

    return-object v0

    .line 231
    .end local v10           #asecAllowAble:Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 233
    .restart local v10       #asecAllowAble:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "size"

    .prologue
    .line 239
    new-array v0, p1, [Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume$1;->newArray(I)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method