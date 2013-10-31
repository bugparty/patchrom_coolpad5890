.class final Lcom/android/server/pm/YlShutdown$2;
.super Ljava/lang/Thread;
.source "YlShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/YlShutdown;->shutRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(J[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/android/server/pm/YlShutdown$2;->val$endTime:J

    iput-object p3, p0, Lcom/android/server/pm/YlShutdown$2;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, gsm_radioOff:Z
    const/4 v3, 0x0

    .line 178
    .local v3, cdma_radioOff:Z
    const-string v13, "nfc"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    .line 180
    .local v8, nfc:Landroid/nfc/INfcAdapter;
    const-string v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 182
    .local v11, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v13, "bluetooth"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 187
    .local v1, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    :cond_0
    const/4 v9, 0x1

    .line 189
    .local v9, nfcOff:Z
    :goto_0
    if-nez v9, :cond_1

    .line 190
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off NFC..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_6

    :cond_2
    const/4 v2, 0x1

    .line 201
    .local v2, bluetoothOff:Z
    :goto_2
    if-nez v2, :cond_3

    .line 202
    const-string v13, "ShutdownThread"

    const-string v14, "Disabling Bluetooth..."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_3
    :goto_3
    const/4 v12, 0x1

    .line 213
    .local v12, radioOff:Z
    if-eqz v11, :cond_8

    .line 215
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    if-ge v6, v13, :cond_8

    .line 216
    if-eqz v12, :cond_7

    invoke-interface {v11, v6}, Lcom/android/internal/telephony/ITelephony;->isRadioOnOnSubscription(I)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v12, 0x1

    .line 217
    :goto_5
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/ITelephony;->isRadioOnOnSubscription(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 218
    const-string v13, "ShutdownThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Turning off radio on Subscription :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v13, 0x0

    invoke-interface {v11, v13, v6}, Lcom/android/internal/telephony/ITelephony;->setRadioOnSubscription(ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 187
    .end local v2           #bluetoothOff:Z
    .end local v6           #i:I
    .end local v9           #nfcOff:Z
    .end local v12           #radioOff:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    .line 194
    .local v4, ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v9, 0x1

    .restart local v9       #nfcOff:Z
    goto :goto_1

    .line 199
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 205
    :catch_1
    move-exception v4

    .line 206
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v2, 0x1

    .restart local v2       #bluetoothOff:Z
    goto :goto_3

    .line 216
    .end local v4           #ex:Landroid/os/RemoteException;
    .restart local v6       #i:I
    .restart local v12       #radioOff:Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 223
    :catch_2
    move-exception v4

    .line 224
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v12, 0x1

    .line 230
    .end local v4           #ex:Landroid/os/RemoteException;
    .end local v6           #i:I
    :cond_8
    :try_start_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v7, inData:Landroid/os/Bundle;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v10, outData:Landroid/os/Bundle;
    if-eqz v11, :cond_c

    .line 233
    const-string v13, "power-state"

    const/4 v14, 0x2

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    if-nez v3, :cond_9

    .line 235
    const/16 v13, 0x9

    const/4 v14, 0x1

    invoke-interface {v11, v13, v7, v10, v14}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v3

    .line 237
    :cond_9
    if-eqz v3, :cond_a

    .line 238
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off cdma modem successful!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_a
    if-nez v5, :cond_b

    .line 242
    const/16 v13, 0x9

    const/4 v14, 0x2

    invoke-interface {v11, v13, v7, v10, v14}, Lcom/android/internal/telephony/ITelephony;->telephonyDualIoControl(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v5

    .line 244
    :cond_b
    if-eqz v5, :cond_c

    .line 245
    const-string v13, "ShutdownThread"

    const-string v14, "Turning off gsm modem successful!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    .end local v7           #inData:Landroid/os/Bundle;
    .end local v10           #outData:Landroid/os/Bundle;
    :cond_c
    :goto_6
    const-string v13, "sys.radio.shutdown"

    const-string v14, "true"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v13, "ShutdownThread"

    const-string v14, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/pm/YlShutdown$2;->val$endTime:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_10

    .line 262
    if-nez v2, :cond_d

    .line 264
    :try_start_4
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_11

    const/4 v2, 0x1

    .line 270
    :goto_8
    if-eqz v2, :cond_d

    .line 271
    const-string v13, "ShutdownThread"

    const-string v14, "Bluetooth turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_d
    if-nez v12, :cond_e

    .line 276
    :try_start_5
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v13

    if-nez v13, :cond_12

    const/4 v12, 0x1

    .line 281
    :goto_9
    if-eqz v12, :cond_e

    .line 282
    const-string v13, "ShutdownThread"

    const-string v14, "Radio turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_e
    if-nez v9, :cond_f

    .line 287
    :try_start_6
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    const/4 v9, 0x1

    .line 292
    :goto_a
    if-eqz v12, :cond_f

    .line 293
    const-string v13, "ShutdownThread"

    const-string v14, "NFC turned off."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_f
    if-eqz v12, :cond_14

    if-eqz v2, :cond_14

    if-eqz v9, :cond_14

    .line 298
    const-string v13, "ShutdownThread"

    const-string v14, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/YlShutdown$2;->val$done:[Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 304
    :cond_10
    return-void

    .line 248
    :catch_3
    move-exception v4

    .line 249
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during modempower shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 264
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    .line 266
    :catch_4
    move-exception v4

    .line 267
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during bluetooth shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v2, 0x1

    goto :goto_8

    .line 276
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_12
    const/4 v12, 0x0

    goto :goto_9

    .line 277
    :catch_5
    move-exception v4

    .line 278
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during radio shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/4 v12, 0x1

    goto :goto_9

    .line 287
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_13
    const/4 v9, 0x0

    goto :goto_a

    .line 288
    :catch_6
    move-exception v4

    .line 289
    .restart local v4       #ex:Landroid/os/RemoteException;
    const-string v13, "ShutdownThread"

    const-string v14, "RemoteException during NFC shutdown"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v9, 0x1

    goto :goto_a

    .line 302
    .end local v4           #ex:Landroid/os/RemoteException;
    :cond_14
    const-wide/16 v13, 0x1f4

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_7
.end method
