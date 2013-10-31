.class public Lcom/yulong/android/poweroff/SystemShutdown;
.super Ljava/lang/Object;
.source "SystemShutdown.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0xbb8

.field private static final MAX_MOUNTSERVICE_WAIT_TIME:I = 0x1388

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_DELAY:I = 0x2710

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SYSFS_MDM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/sync_sts"

.field private static final SYSFS_MDM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300100a7.65536/force_sync"

.field private static final SYSFS_MSM_EFS_SYNC_COMPLETE:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/sync_sts"

.field private static final SYSFS_MSM_EFS_SYNC_START:Ljava/lang/String; = "/sys/devices/platform/rs300000a7.65536/force_sync"

.field private static final TAG:Ljava/lang/String; = "PowerOffManager"

.field public static final YULONG_LAST_SHUTDOWN_REASON:Ljava/lang/String; = "persist.sys.yllastshut.reason"

.field private static mShutHandler:Landroid/os/Handler;


# instance fields
.field br:Landroid/content/BroadcastReceiver;

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field mIsShutTimeout:Z

.field private mReboot:Z

.field private mRebootReason:Ljava/lang/String;

.field mShutTimeoutThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/yulong/android/poweroff/SystemShutdown;->mShutHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    .line 81
    iput-boolean v1, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z

    .line 91
    new-instance v0, Lcom/yulong/android/poweroff/SystemShutdown$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/SystemShutdown$1;-><init>(Lcom/yulong/android/poweroff/SystemShutdown;)V

    iput-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->br:Landroid/content/BroadcastReceiver;

    .line 506
    iput-boolean v1, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mIsShutTimeout:Z

    .line 507
    new-instance v0, Lcom/yulong/android/poweroff/SystemShutdown$4;

    invoke-direct {v0, p0}, Lcom/yulong/android/poweroff/SystemShutdown$4;-><init>(Lcom/yulong/android/poweroff/SystemShutdown;)V

    iput-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mShutTimeoutThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/poweroff/SystemShutdown;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/yulong/android/poweroff/SystemShutdown;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method private processFastShutdown(Landroid/content/Context;)V
    .locals 30
    .parameter "context"

    .prologue
    .line 208
    const/16 v22, 0x0

    .line 209
    .local v22, gsm_radioOff:Z
    const/4 v13, 0x0

    .line 210
    .local v13, cdma_radioOff:Z
    const/16 v29, 0x1

    .line 212
    .local v29, shutanimation:Z
    new-instance v5, Lcom/yulong/android/poweroff/SystemShutdown$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/yulong/android/poweroff/SystemShutdown$2;-><init>(Lcom/yulong/android/poweroff/SystemShutdown;)V

    .line 221
    .local v5, br:Landroid/content/BroadcastReceiver;
    const-string v2, "PowerOffManager"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDone:Z

    .line 225
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0xbb8

    add-long v19, v2, v6

    .line 230
    .local v19, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDone:Z

    if-nez v2, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v19, v6

    .line 234
    .local v14, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_c

    .line 235
    const-string v2, "PowerOffManager"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v14           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const-string v2, "PowerOffManager"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 251
    .local v10, am:Landroid/app/IActivityManager;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mIsShutTimeout:Z

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mShutTimeoutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 253
    if-eqz v10, :cond_1

    .line 255
    const/16 v2, 0xbb8

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    .line 264
    :cond_1
    :goto_1
    const-string v2, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/SensorManager;

    .line 266
    .local v24, mSensorManager:Landroid/hardware/SensorManager;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v23

    .line 267
    .local v23, mSensor:Landroid/hardware/Sensor;
    if-eqz v23, :cond_2

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 270
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v23

    .line 271
    if-eqz v23, :cond_3

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 274
    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v23

    .line 275
    if-eqz v23, :cond_4

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->sensorsEnable(Landroid/hardware/Sensor;Z)Z

    .line 280
    :cond_4
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 282
    .local v27, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 285
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v25

    .line 289
    .local v25, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_5

    :try_start_2
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    :cond_5
    const/4 v12, 0x1

    .line 292
    .local v12, bluetoothOff:Z
    :goto_2
    if-nez v12, :cond_6

    .line 293
    const-string v2, "PowerOffManager"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :cond_6
    :goto_3
    if-eqz v27, :cond_7

    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isDualRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_7
    const/16 v28, 0x1

    .line 304
    .local v28, radioOff:Z
    :goto_4
    if-nez v28, :cond_8

    .line 305
    const-string v2, "PowerOffManager"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDualRadio(ZI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 314
    :cond_8
    :goto_5
    if-eqz v27, :cond_9

    const/4 v2, 0x2

    :try_start_4
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isDualRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_9
    const/16 v28, 0x1

    .line 316
    :goto_6
    if-nez v28, :cond_a

    .line 317
    const-string v2, "PowerOffManager"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDualRadio(ZI)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 460
    :cond_a
    :goto_7
    new-instance v26, Lcom/yulong/android/poweroff/SystemShutdown$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yulong/android/poweroff/SystemShutdown$3;-><init>(Lcom/yulong/android/poweroff/SystemShutdown;)V

    .line 470
    .local v26, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "PowerOffManager"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDone:Z

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x1388

    add-long v17, v2, v6

    .line 476
    .local v17, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 478
    if-eqz v25, :cond_10

    .line 479
    :try_start_5
    invoke-interface/range {v25 .. v26}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 487
    :goto_8
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDone:Z

    if-nez v2, :cond_b

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v17, v6

    .line 490
    .restart local v14       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-gtz v2, :cond_11

    .line 491
    const-string v2, "PowerOffManager"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v14           #delay:J
    :cond_b
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 503
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mIsShutTimeout:Z

    .line 504
    return-void

    .line 241
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v17           #endShutTime:J
    .end local v23           #mSensor:Landroid/hardware/Sensor;
    .end local v24           #mSensorManager:Landroid/hardware/SensorManager;
    .end local v25           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v27           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #radioOff:Z
    .restart local v14       #delay:J
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 245
    .end local v14           #delay:J
    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 289
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v23       #mSensor:Landroid/hardware/Sensor;
    .restart local v24       #mSensorManager:Landroid/hardware/SensorManager;
    .restart local v25       #mount:Landroid/os/storage/IMountService;
    .restart local v27       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 296
    :catch_1
    move-exception v21

    .line 297
    .local v21, ex:Landroid/os/RemoteException;
    const-string v2, "PowerOffManager"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_3

    .line 302
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 308
    :catch_2
    move-exception v21

    .line 309
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v2, "PowerOffManager"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/16 v28, 0x1

    .restart local v28       #radioOff:Z
    goto/16 :goto_5

    .line 314
    .end local v21           #ex:Landroid/os/RemoteException;
    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 320
    :catch_3
    move-exception v21

    .line 321
    .restart local v21       #ex:Landroid/os/RemoteException;
    const-string v2, "PowerOffManager"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/16 v28, 0x1

    goto/16 :goto_7

    .line 481
    .end local v21           #ex:Landroid/os/RemoteException;
    .restart local v17       #endShutTime:J
    .restart local v26       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_10
    :try_start_9
    const-string v2, "PowerOffManager"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    .line 483
    :catch_4
    move-exception v16

    .line 484
    .local v16, e:Ljava/lang/Exception;
    :try_start_a
    const-string v2, "PowerOffManager"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 501
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v2

    .line 497
    .restart local v14       #delay:J
    :cond_11
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_8

    .line 498
    :catch_5
    move-exception v2

    goto/16 :goto_8

    .line 256
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v14           #delay:J
    .end local v17           #endShutTime:J
    .end local v23           #mSensor:Landroid/hardware/Sensor;
    .end local v24           #mSensorManager:Landroid/hardware/SensorManager;
    .end local v25           #mount:Landroid/os/storage/IMountService;
    .end local v26           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v27           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v28           #radioOff:Z
    :catch_6
    move-exception v2

    goto/16 :goto_1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDone:Z

    .line 87
    iget-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public silenceRebootSystem(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 133
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z

    .line 134
    const-string v5, "silence"

    iput-object v5, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;

    .line 138
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 140
    .local v1, nPowerManager:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "Shutdown"

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 142
    .local v4, nWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    const-string v5, "sys.shutdown.requested"

    const-string v6, "1silence"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v5, "persist.sys.yllastshut.reason"

    const-string v6, "silence"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 150
    .local v2, nStartTime:J
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/SystemShutdown;->processFastShutdown(Landroid/content/Context;)V

    .line 152
    const-string v5, "PowerOffManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processRebootSystem Total Times="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    const-string v5, "silence"

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PowerOffManager"

    const-string v6, "Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRecoverySystem(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 171
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z

    .line 172
    const-string v5, "recovery"

    iput-object v5, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;

    .line 176
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 178
    .local v1, nPowerManager:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "Shutdown"

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 180
    .local v4, nWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 182
    const-string v5, "sys.shutdown.requested"

    const-string v6, "recovery"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v5, "persist.sys.yllastshut.reason"

    const-string v6, "recovery"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 188
    .local v2, nStartTime:J
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/SystemShutdown;->processFastShutdown(Landroid/content/Context;)V

    .line 190
    const-string v5, "PowerOffManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processRecoverySystem Total Times="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    const-string v5, "recovery"

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PowerOffManager"

    const-string v6, "Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceShutdonwSystem(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 104
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z

    .line 105
    const-string v2, ""

    iput-object v2, p0, Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;

    .line 109
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, nPowerManager:Landroid/os/PowerManager;
    const v2, 0x30000001

    const-string v3, "PowerOffManager-Shutdown"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 114
    .local v1, nWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 116
    const-string v2, "sys.shutdown.requested"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "persist.sys.yllastshut.reason"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/yulong/android/poweroff/SystemShutdown;->processFastShutdown(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 122
    return-void
.end method
