.class public abstract Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;
.super Landroid/os/Binder;
.source "ICloudSecurity.java"

# interfaces
.implements Lcom/yulong/android/cloudsecurity/server/ICloudSecurity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/server/ICloudSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.cloudsecurity.server.ICloudSecurity"

.field static final TRANSACTION_deleteAll:I = 0x5

.field static final TRANSACTION_deleteAppPermissionBean:I = 0x4

.field static final TRANSACTION_insertAppPermissionBean:I = 0x3

.field static final TRANSACTION_startDataProSwitch:I = 0x7

.field static final TRANSACTION_startMoneyProSwitch:I = 0x8

.field static final TRANSACTION_startPermFilter:I = 0x6

.field static final TRANSACTION_startPugProSwitch:I = 0xa

.field static final TRANSACTION_startlistenProSwitch:I = 0x9

.field static final TRANSACTION_updateAll:I = 0x2

.field static final TRANSACTION_updateAppPermissionBean:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/cloudsecurity/server/ICloudSecurity;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    sget-object v5, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    invoke-virtual {p0, v1}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->updateAppPermissionBean(Ljava/util/List;)Z

    move-result v2

    .line 56
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    .end local v2           #_result:Z
    :sswitch_2
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    sget-object v5, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 70
    .local v0, _arg0:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->updateAll(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v2

    .line 71
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v2           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    goto :goto_1

    .line 77
    .end local v0           #_arg0:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :sswitch_3
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    sget-object v5, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    invoke-virtual {p0, v1}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->insertAppPermissionBean(Ljava/util/List;)Z

    move-result v2

    .line 81
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    sget-object v5, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 90
    .local v0, _arg0:[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->deleteAppPermissionBean([Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v0           #_arg0:[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->deleteAll()Z

    move-result v2

    .line 99
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v0, v4

    .line 108
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->startPermFilter(Z)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v3

    .line 107
    goto :goto_2

    .line 114
    :sswitch_7
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 117
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->startDataProSwitch(Z)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v3

    .line 116
    goto :goto_3

    .line 123
    :sswitch_8
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v4

    .line 126
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->startMoneyProSwitch(Z)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v3

    .line 125
    goto :goto_4

    .line 132
    :sswitch_9
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v0, v4

    .line 135
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->startlistenProSwitch(Z)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_9
    move v0, v3

    .line 134
    goto :goto_5

    .line 141
    :sswitch_a
    const-string v5, "com.yulong.android.cloudsecurity.server.ICloudSecurity"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 144
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/yulong/android/cloudsecurity/server/ICloudSecurity$Stub;->startPugProSwitch(Z)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v3

    .line 143
    goto :goto_6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
