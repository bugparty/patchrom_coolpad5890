.class public abstract Lcom/yulong/android/poweroff/IPowerOffManager$Stub;
.super Landroid/os/Binder;
.source "IPowerOffManager.java"

# interfaces
.implements Lcom/yulong/android/poweroff/IPowerOffManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/poweroff/IPowerOffManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/poweroff/IPowerOffManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yulong.android.poweroff.IPowerOffManager"

.field static final TRANSACTION_acquirePowerOffWakeLock:I = 0xf

.field static final TRANSACTION_getSystemState:I = 0x5

.field static final TRANSACTION_goToSleep:I = 0x11

.field static final TRANSACTION_isFastBootupMode:I = 0x6

.field static final TRANSACTION_isNeedFastShut:I = 0x10

.field static final TRANSACTION_isPowerKeyCanWakeup:I = 0x8

.field static final TRANSACTION_isSilenceRebootMode:I = 0xa

.field static final TRANSACTION_rebootSystem:I = 0x3

.field static final TRANSACTION_setPowerCharge:I = 0x4

.field static final TRANSACTION_setSilcenReBootDelay:I = 0xb

.field static final TRANSACTION_shutdownSystem:I = 0x2

.field static final TRANSACTION_shutdownWhenUSBConnected:I = 0xe

.field static final TRANSACTION_startBootSystem:I = 0x1

.field static final TRANSACTION_startRecoverySystem:I = 0xc

.field static final TRANSACTION_startSystemFromShutdown:I = 0xd

.field static final TRANSACTION_userActivityWithForce:I = 0x9

.field static final TRANSACTION_wakeupSystemForRTCAlarm:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p0, p0, v0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yulong/android/poweroff/IPowerOffManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/yulong/android/poweroff/IPowerOffManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/yulong/android/poweroff/IPowerOffManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/yulong/android/poweroff/IPowerOffManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->startBootSystem()I

    move-result v1

    .line 49
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:I
    :sswitch_2
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->shutdownSystem()I

    move-result v1

    .line 57
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1           #_result:I
    :sswitch_3
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->rebootSystem()I

    move-result v1

    .line 65
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1           #_result:I
    :sswitch_4
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 74
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->setPowerCharge(Z)I

    move-result v1

    .line 75
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:Z
    .end local v1           #_result:I
    :sswitch_5
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->getSystemState()I

    move-result v1

    .line 83
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v1           #_result:I
    :sswitch_6
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->isFastBootupMode()Z

    move-result v1

    .line 91
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v1           #_result:Z
    :sswitch_7
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->wakeupSystemForRTCAlarm()I

    move-result v1

    .line 99
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v1           #_result:I
    :sswitch_8
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->isPowerKeyCanWakeup()Z

    move-result v1

    .line 107
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v1           #_result:Z
    :sswitch_9
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->userActivityWithForce()I

    move-result v1

    .line 115
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v1           #_result:I
    :sswitch_a
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->isSilenceRebootMode()Z

    move-result v1

    .line 123
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v1           #_result:Z
    :sswitch_b
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->setSilcenReBootDelay(I)I

    move-result v1

    .line 133
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_c
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->startRecoverySystem()I

    move-result v1

    .line 141
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v1           #_result:I
    :sswitch_d
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->startSystemFromShutdown()I

    move-result v1

    .line 149
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v1           #_result:I
    :sswitch_e
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->shutdownWhenUSBConnected()Z

    move-result v1

    .line 157
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v1, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v1           #_result:Z
    :sswitch_f
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->acquirePowerOffWakeLock(I)I

    move-result v1

    .line 167
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_10
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->isNeedFastShut()Z

    move-result v1

    .line 175
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v1, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v1           #_result:Z
    :sswitch_11
    const-string v3, "com.yulong.android.poweroff.IPowerOffManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/yulong/android/poweroff/IPowerOffManager$Stub;->goToSleep()I

    move-result v1

    .line 183
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
