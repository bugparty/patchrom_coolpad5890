.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerDualRingingCall:I = 0xc

.field static final TRANSACTION_answerRingingCall:I = 0xb

.field static final TRANSACTION_call:I = 0x3

.field static final TRANSACTION_callDual:I = 0x4

.field static final TRANSACTION_cancelDualMissedCallsNotification:I = 0x1b

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1a

.field static final TRANSACTION_cwControl:I = 0x60

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialDual:I = 0x2

.field static final TRANSACTION_disableApnType:I = 0x30

.field static final TRANSACTION_disableDataConnectivity:I = 0x3a

.field static final TRANSACTION_disableDualApnType:I = 0x31

.field static final TRANSACTION_disableDualDataConnectivity:I = 0x3b

.field static final TRANSACTION_disableDualLocationUpdates:I = 0x2d

.field static final TRANSACTION_disableLocationUpdates:I = 0x2c

.field static final TRANSACTION_disableQos:I = 0x33

.field static final TRANSACTION_enableApnType:I = 0x2e

.field static final TRANSACTION_enableDataConnectivity:I = 0x38

.field static final TRANSACTION_enableDualApnType:I = 0x2f

.field static final TRANSACTION_enableDualDataConnectivity:I = 0x39

.field static final TRANSACTION_enableDualLocationUpdates:I = 0x2b

.field static final TRANSACTION_enableLocationUpdates:I = 0x2a

.field static final TRANSACTION_enableQos:I = 0x32

.field static final TRANSACTION_endCall:I = 0x9

.field static final TRANSACTION_endDualCall:I = 0xa

.field static final TRANSACTION_execRuimEsnOp:I = 0x5d

.field static final TRANSACTION_getActivePhoneType:I = 0x48

.field static final TRANSACTION_getAllCellInfo:I = 0x56

.field static final TRANSACTION_getCallState:I = 0x42

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x4b

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x4c

.field static final TRANSACTION_getCdmaEriText:I = 0x4d

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x4f

.field static final TRANSACTION_getCellLocation:I = 0x3e

.field static final TRANSACTION_getDataActivity:I = 0x44

.field static final TRANSACTION_getDataState:I = 0x46

.field static final TRANSACTION_getDualActivePhoneType:I = 0x49

.field static final TRANSACTION_getDualCallState:I = 0x43

.field static final TRANSACTION_getDualCellLocation:I = 0x3f

.field static final TRANSACTION_getDualDataActivity:I = 0x45

.field static final TRANSACTION_getDualDataState:I = 0x47

.field static final TRANSACTION_getDualNeighboringCellInfo:I = 0x41

.field static final TRANSACTION_getDualNetworkType:I = 0x53

.field static final TRANSACTION_getDualPbTotalParamOnIcc:I = 0x5b

.field static final TRANSACTION_getDualSmsTotalParamOnIcc:I = 0x59

.field static final TRANSACTION_getDualVoiceMessageCount:I = 0x51

.field static final TRANSACTION_getIccFdnEnabled:I = 0x66

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x55

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x40

.field static final TRANSACTION_getNetworkType:I = 0x52

.field static final TRANSACTION_getPbTotalParamOnIcc:I = 0x5a

.field static final TRANSACTION_getPinPukValidCount:I = 0x1e

.field static final TRANSACTION_getQosStatus:I = 0x37

.field static final TRANSACTION_getSmsTotalParamOnIcc:I = 0x58

.field static final TRANSACTION_getVoiceMessageCount:I = 0x50

.field static final TRANSACTION_handleDualPinMmi:I = 0x22

.field static final TRANSACTION_handlePinMmi:I = 0x21

.field static final TRANSACTION_hasDualIccCard:I = 0x57

.field static final TRANSACTION_hasIccCard:I = 0x54

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x3c

.field static final TRANSACTION_isDualDataConnectivityPossible:I = 0x3d

.field static final TRANSACTION_isDualIdle:I = 0x14

.field static final TRANSACTION_isDualOffhook:I = 0x10

.field static final TRANSACTION_isDualRadioOn:I = 0x16

.field static final TRANSACTION_isDualRinging:I = 0x12

.field static final TRANSACTION_isDualSimPinEnabled:I = 0x19

.field static final TRANSACTION_isIdle:I = 0x13

.field static final TRANSACTION_isOffhook:I = 0xf

.field static final TRANSACTION_isRadioOn:I = 0x15

.field static final TRANSACTION_isRadioOnOnSubscription:I = 0x17

.field static final TRANSACTION_isRinging:I = 0x11

.field static final TRANSACTION_isSimPinEnabled:I = 0x18

.field static final TRANSACTION_modifyQos:I = 0x34

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x4e

.field static final TRANSACTION_resumeQos:I = 0x36

.field static final TRANSACTION_sendCommandToRil:I = 0x62

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x4a

.field static final TRANSACTION_setDualRadio:I = 0x26

.field static final TRANSACTION_setGpsOne:I = 0x61

.field static final TRANSACTION_setRadio:I = 0x25

.field static final TRANSACTION_setRadioOnSubscription:I = 0x27

.field static final TRANSACTION_setRasConnectFunction:I = 0x5c

.field static final TRANSACTION_showCallScreen:I = 0x5

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x7

.field static final TRANSACTION_showDualCallScreen:I = 0x6

.field static final TRANSACTION_showDualCallScreenWithDialpad:I = 0x8

.field static final TRANSACTION_silenceDualRinger:I = 0xe

.field static final TRANSACTION_silenceRinger:I = 0xd

.field static final TRANSACTION_spcpaReboot:I = 0x65

.field static final TRANSACTION_spcpaSendCmd:I = 0x63

.field static final TRANSACTION_supplyDualPin:I = 0x1d

.field static final TRANSACTION_supplyDualPuk:I = 0x20

.field static final TRANSACTION_supplyPin:I = 0x1c

.field static final TRANSACTION_supplyPuk:I = 0x1f

.field static final TRANSACTION_suspendQos:I = 0x35

.field static final TRANSACTION_swapCall:I = 0x67

.field static final TRANSACTION_switchNetModeFromEngmode:I = 0x64

.field static final TRANSACTION_telephonyDualIoControl:I = 0x5f

.field static final TRANSACTION_telephonyIoControl:I = 0x5e

.field static final TRANSACTION_toggleDualRadioOnOff:I = 0x24

.field static final TRANSACTION_toggleRadioOnOff:I = 0x23

.field static final TRANSACTION_updateDualServiceLocation:I = 0x29

.field static final TRANSACTION_updateServiceLocation:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1111
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dialDual(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->callDual(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v9

    .line 96
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    .end local v9           #_result:Z
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showDualCallScreen(I)Z

    move-result v9

    .line 106
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 112
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 115
    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v9

    .line 116
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 117
    .restart local v1       #_arg0:Z
    .restart local v9       #_result:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 122
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 126
    .restart local v1       #_arg0:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showDualCallScreenWithDialpad(ZI)Z

    move-result v9

    .line 128
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v9, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 129
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:I
    .restart local v9       #_result:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 134
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v9

    .line 136
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v9, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 142
    .end local v9           #_result:Z
    :sswitch_a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->endDualCall(I)Z

    move-result v9

    .line 146
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v9, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 152
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    :sswitch_c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->answerDualRingingCall(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1           #_arg0:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 175
    :sswitch_e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceDualRinger(I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v1           #_arg0:I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v9

    .line 186
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v9, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 192
    .end local v9           #_result:Z
    :sswitch_10
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualOffhook(I)Z

    move-result v9

    .line 196
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v9, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 202
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v9

    .line 204
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v9, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 210
    .end local v9           #_result:Z
    :sswitch_12
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualRinging(I)Z

    move-result v9

    .line 214
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v9, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 215
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 220
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v9

    .line 222
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v9, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 228
    .end local v9           #_result:Z
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualIdle(I)Z

    move-result v9

    .line 232
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v9, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 238
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v9

    .line 240
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v9, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 241
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 246
    .end local v9           #_result:Z
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualRadioOn(I)Z

    move-result v9

    .line 250
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v9, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 251
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 256
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnOnSubscription(I)Z

    move-result v9

    .line 260
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v9, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 266
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_18
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v9

    .line 268
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v9, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 269
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 274
    .end local v9           #_result:Z
    :sswitch_19
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualSimPinEnabled(I)Z

    move-result v9

    .line 278
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v9, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 284
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 291
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelDualMissedCallsNotification(I)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 300
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v9

    .line 304
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v9, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 305
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 310
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyDualPin(Ljava/lang/String;I)Z

    move-result v9

    .line 316
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v9, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 322
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPinPukValidCount(II)I

    move-result v9

    .line 328
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 340
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v9, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 346
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyDualPuk(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 354
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v9, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 360
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v9           #_result:Z
    :sswitch_21
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v9

    .line 364
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v9, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 365
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 370
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 375
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handleDualPinMmi(Ljava/lang/String;I)Z

    move-result v9

    .line 376
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v9, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 377
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 382
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 389
    :sswitch_24
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleDualRadioOnOff(I)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 398
    .end local v1           #_arg0:I
    :sswitch_25
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    .line 401
    .local v1, _arg0:Z
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v9

    .line 402
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v9, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 400
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 403
    .restart local v1       #_arg0:Z
    .restart local v9       #_result:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 408
    .end local v1           #_arg0:Z
    .end local v9           #_result:Z
    :sswitch_26
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 412
    .restart local v1       #_arg0:Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDualRadio(ZI)Z

    move-result v9

    .line 414
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v9, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 410
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 415
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:I
    .restart local v9       #_result:Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 420
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_27
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 424
    .restart local v1       #_arg0:Z
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOnSubscription(ZI)Z

    move-result v9

    .line 426
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v9, :cond_1e

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 422
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 427
    .restart local v1       #_arg0:Z
    .restart local v2       #_arg1:I
    .restart local v9       #_result:Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1f

    .line 432
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_28
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    :sswitch_29
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateDualServiceLocation(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 448
    .end local v1           #_arg0:I
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 455
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualLocationUpdates(I)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 464
    .end local v1           #_arg0:I
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 471
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualLocationUpdates(I)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 480
    .end local v1           #_arg0:I
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v9

    .line 484
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualApnType(Ljava/lang/String;I)I

    move-result v9

    .line 496
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 502
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_30
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v9

    .line 506
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 512
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:I
    :sswitch_31
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualApnType(Ljava/lang/String;I)I

    move-result v9

    .line 518
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 524
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_32
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 527
    sget-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec;

    .line 533
    .local v1, _arg0:Lcom/android/internal/telephony/QosSpec;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v9

    .line 535
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 530
    .end local v1           #_arg0:Lcom/android/internal/telephony/QosSpec;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:I
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/internal/telephony/QosSpec;
    goto :goto_20

    .line 541
    .end local v1           #_arg0:Lcom/android/internal/telephony/QosSpec;
    :sswitch_33
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 544
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableQos(I)I

    move-result v9

    .line 545
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 551
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_34
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 555
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 556
    sget-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QosSpec;

    .line 561
    .local v2, _arg1:Lcom/android/internal/telephony/QosSpec;
    :goto_21
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v9

    .line 562
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 559
    .end local v2           #_arg1:Lcom/android/internal/telephony/QosSpec;
    .end local v9           #_result:I
    :cond_20
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/telephony/QosSpec;
    goto :goto_21

    .line 568
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/internal/telephony/QosSpec;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->suspendQos(I)I

    move-result v9

    .line 572
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 578
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_36
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 581
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->resumeQos(I)I

    move-result v9

    .line 582
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_37
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 591
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getQosStatus(I)I

    move-result v9

    .line 592
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 598
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_38
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v9

    .line 600
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v9, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 601
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 606
    .end local v9           #_result:Z
    :sswitch_39
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDualDataConnectivity(I)Z

    move-result v9

    .line 610
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v9, :cond_22

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 611
    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    .line 616
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_3a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v9

    .line 618
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v9, :cond_23

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 619
    :cond_23
    const/4 v0, 0x0

    goto :goto_24

    .line 624
    .end local v9           #_result:Z
    :sswitch_3b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDualDataConnectivity(I)Z

    move-result v9

    .line 628
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v9, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 634
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_3c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v9

    .line 636
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v9, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 637
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 642
    .end local v9           #_result:Z
    :sswitch_3d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualDataConnectivityPossible(I)Z

    move-result v9

    .line 646
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v9, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 647
    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    .line 652
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_3e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v9

    .line 654
    .local v9, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    if-eqz v9, :cond_27

    .line 656
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    :goto_28
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 660
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 666
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_3f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 669
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCellLocation(I)Landroid/os/Bundle;

    move-result-object v9

    .line 670
    .restart local v9       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v9, :cond_28

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 678
    :goto_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 676
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 682
    .end local v1           #_arg0:I
    .end local v9           #_result:Landroid/os/Bundle;
    :sswitch_40
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v11

    .line 684
    .local v11, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 686
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 690
    .end local v11           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_41
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 693
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNeighboringCellInfo(I)Ljava/util/List;

    move-result-object v11

    .line 694
    .restart local v11       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 696
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 700
    .end local v1           #_arg0:I
    .end local v11           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_42
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v9

    .line 702
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 708
    .end local v9           #_result:I
    :sswitch_43
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 711
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualCallState(I)I

    move-result v9

    .line 712
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 718
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_44
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v9

    .line 720
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 726
    .end local v9           #_result:I
    :sswitch_45
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataActivity(I)I

    move-result v9

    .line 730
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 736
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_46
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v9

    .line 738
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 744
    .end local v9           #_result:I
    :sswitch_47
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 747
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualDataState(I)I

    move-result v9

    .line 748
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 754
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_48
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v9

    .line 756
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 762
    .end local v9           #_result:I
    :sswitch_49
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 765
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualActivePhoneType(I)I

    move-result v9

    .line 766
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 772
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_4a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 776
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 777
    .local v6, _arg1_length:I
    if-gez v6, :cond_29

    .line 778
    const/4 v2, 0x0

    .line 783
    .local v2, _arg1:[B
    :goto_2a
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendOemRilRequestRaw([B[B)I

    move-result v9

    .line 784
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 787
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 781
    .end local v2           #_arg1:[B
    .end local v9           #_result:I
    :cond_29
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_2a

    .line 791
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_arg1_length:I
    :sswitch_4b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v9

    .line 793
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 799
    .end local v9           #_result:I
    :sswitch_4c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v9

    .line 801
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 807
    .end local v9           #_result:I
    :sswitch_4d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v9

    .line 809
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 815
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_4e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v9

    .line 817
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v9, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 818
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 823
    .end local v9           #_result:Z
    :sswitch_4f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v9

    .line 825
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v9, :cond_2b

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 826
    :cond_2b
    const/4 v0, 0x0

    goto :goto_2c

    .line 831
    .end local v9           #_result:Z
    :sswitch_50
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v9

    .line 833
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 839
    .end local v9           #_result:I
    :sswitch_51
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 842
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualVoiceMessageCount(I)I

    move-result v9

    .line 843
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 849
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_52
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v9

    .line 851
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 857
    .end local v9           #_result:I
    :sswitch_53
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualNetworkType(I)I

    move-result v9

    .line 861
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 867
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_54
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v9

    .line 869
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v9, :cond_2c

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 870
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    .line 875
    .end local v9           #_result:Z
    :sswitch_55
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v9

    .line 877
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 883
    .end local v9           #_result:I
    :sswitch_56
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v10

    .line 885
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 891
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_57
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->hasDualIccCard(I)Z

    move-result v9

    .line 895
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v9, :cond_2d

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 896
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2e

    .line 901
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_58
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsTotalParamOnIcc()I

    move-result v9

    .line 903
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 909
    .end local v9           #_result:I
    :sswitch_59
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 912
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualSmsTotalParamOnIcc(I)I

    move-result v9

    .line 913
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 919
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPbTotalParamOnIcc()I

    move-result v9

    .line 921
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 927
    .end local v9           #_result:I
    :sswitch_5b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 930
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDualPbTotalParamOnIcc(I)I

    move-result v9

    .line 931
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 937
    .end local v1           #_arg0:I
    .end local v9           #_result:I
    :sswitch_5c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 941
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 942
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRasConnectFunction(II)Z

    move-result v9

    .line 943
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v9, :cond_2e

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 944
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2f

    .line 949
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_5d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    .line 952
    .local v1, _arg0:Z
    :goto_30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->execRuimEsnOp(Z)Ljava/lang/String;

    move-result-object v9

    .line 953
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 951
    .end local v1           #_arg0:Z
    .end local v9           #_result:Ljava/lang/String;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_30

    .line 959
    :sswitch_5e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    .line 964
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 970
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_31
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 971
    .local v3, _arg2:Landroid/os/Bundle;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->telephonyIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v9

    .line 972
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v9, :cond_31

    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    if-eqz v3, :cond_32

    .line 975
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 981
    :goto_33
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 967
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v9           #_result:Z
    :cond_30
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_31

    .line 973
    .restart local v3       #_arg2:Landroid/os/Bundle;
    .restart local v9       #_result:Z
    :cond_31
    const/4 v0, 0x0

    goto :goto_32

    .line 979
    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 985
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v9           #_result:Z
    :sswitch_5f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 989
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 990
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 996
    .restart local v2       #_arg1:Landroid/os/Bundle;
    :goto_34
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 998
    .restart local v3       #_arg2:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 999
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v9

    .line 1000
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    if-eqz v9, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    if-eqz v3, :cond_35

    .line 1003
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    const/4 v0, 0x1

    invoke-virtual {v3, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1009
    :goto_36
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 993
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:I
    .end local v9           #_result:Z
    :cond_33
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_34

    .line 1001
    .restart local v3       #_arg2:Landroid/os/Bundle;
    .restart local v4       #_arg3:I
    .restart local v9       #_result:Z
    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    .line 1007
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 1013
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:I
    .end local v9           #_result:Z
    :sswitch_60
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1017
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1022
    .local v7, _arg3_length:I
    if-gez v7, :cond_36

    .line 1023
    const/4 v4, 0x0

    .line 1029
    .local v4, _arg3:[Ljava/lang/String;
    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1030
    .local v8, _arg4_length:I
    if-gez v8, :cond_37

    .line 1031
    const/4 v5, 0x0

    .local v5, _arg4:[Ljava/lang/String;
    :goto_38
    move-object v0, p0

    .line 1036
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->cwControl(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    .line 1037
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v9, :cond_38

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1026
    .end local v4           #_arg3:[Ljava/lang/String;
    .end local v5           #_arg4:[Ljava/lang/String;
    .end local v8           #_arg4_length:I
    .end local v9           #_result:Z
    :cond_36
    new-array v4, v7, [Ljava/lang/String;

    .restart local v4       #_arg3:[Ljava/lang/String;
    goto :goto_37

    .line 1034
    .restart local v8       #_arg4_length:I
    :cond_37
    new-array v5, v8, [Ljava/lang/String;

    .restart local v5       #_arg4:[Ljava/lang/String;
    goto :goto_38

    .line 1038
    .restart local v9       #_result:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_39

    .line 1045
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[Ljava/lang/String;
    .end local v5           #_arg4:[Ljava/lang/String;
    .end local v7           #_arg3_length:I
    .end local v8           #_arg4_length:I
    .end local v9           #_result:Z
    :sswitch_61
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1048
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGpsOne(I)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v1           #_arg0:I
    :sswitch_62
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1059
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendCommandToRil(ILjava/lang/String;)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_63
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1069
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->spcpaSendCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1071
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1077
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_64
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1082
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchNetModeFromEngmode(Ljava/lang/String;I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_65
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->spcpaReboot()V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1095
    :sswitch_66
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1098
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccFdnEnabled(I)Z

    move-result v9

    .line 1099
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    if-eqz v9, :cond_39

    const/4 v0, 0x1

    :goto_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1100
    :cond_39
    const/4 v0, 0x0

    goto :goto_3a

    .line 1105
    .end local v1           #_arg0:I
    .end local v9           #_result:Z
    :sswitch_67
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->swapCall()V

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 45
    nop

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
