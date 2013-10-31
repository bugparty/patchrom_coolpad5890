.class Lcom/android/server/pm/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$5;->this$0:Lcom/android/server/pm/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/pm/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/pm/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 663
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 665
    .local v3, nfc:Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 667
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 672
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_a

    :cond_0
    move v4, v7

    .line 674
    .local v4, nfcOff:Z
    :goto_0
    if-nez v4, :cond_1

    .line 675
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v9

    if-ne v9, v13, :cond_b

    :cond_2
    move v1, v7

    .line 686
    .local v1, bluetoothOff:Z
    :goto_2
    if-nez v1, :cond_3

    .line 687
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_4
    move v6, v7

    .line 697
    .local v6, radioOff:Z
    :goto_4
    if-nez v6, :cond_5

    .line 698
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 706
    :cond_5
    :goto_5
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/pm/ShutdownThread$5;->val$endTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 709
    if-nez v1, :cond_6

    .line 711
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-ne v9, v13, :cond_d

    move v1, v7

    .line 717
    :goto_7
    if-eqz v1, :cond_6

    .line 718
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_6
    if-nez v6, :cond_7

    .line 723
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    if-nez v9, :cond_e

    move v6, v7

    .line 728
    :goto_8
    if-eqz v6, :cond_7

    .line 729
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_7
    if-nez v4, :cond_8

    .line 734
    :try_start_5
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    if-ne v9, v7, :cond_f

    move v4, v7

    .line 739
    :goto_9
    if-eqz v6, :cond_8

    .line 740
    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    if-eqz v6, :cond_10

    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    .line 745
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v9, p0, Lcom/android/server/pm/ShutdownThread$5;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 751
    :cond_9
    return-void

    .end local v1           #bluetoothOff:Z
    .end local v4           #nfcOff:Z
    .end local v6           #radioOff:Z
    :cond_a
    move v4, v8

    .line 672
    goto/16 :goto_0

    .line 678
    :catch_0
    move-exception v2

    .line 679
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    const/4 v4, 0x1

    .restart local v4       #nfcOff:Z
    goto/16 :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_b
    move v1, v8

    .line 684
    goto/16 :goto_2

    .line 690
    :catch_1
    move-exception v2

    .line 691
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    const/4 v1, 0x1

    .restart local v1       #bluetoothOff:Z
    goto/16 :goto_3

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_c
    move v6, v8

    .line 696
    goto/16 :goto_4

    .line 701
    :catch_2
    move-exception v2

    .line 702
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    const/4 v6, 0x1

    .restart local v6       #radioOff:Z
    goto/16 :goto_5

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_d
    move v1, v8

    .line 711
    goto :goto_7

    .line 713
    :catch_3
    move-exception v2

    .line 714
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    const/4 v1, 0x1

    goto :goto_7

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_e
    move v6, v8

    .line 723
    goto :goto_8

    .line 724
    :catch_4
    move-exception v2

    .line 725
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    const/4 v6, 0x1

    goto :goto_8

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_f
    move v4, v8

    .line 734
    goto :goto_9

    .line 735
    :catch_5
    move-exception v2

    .line 736
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    const/4 v4, 0x1

    goto :goto_9

    .line 749
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_10
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method