.class Lcom/yulong/android/poweroff/PowerOffManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yulong.intent.action.GOTO_SLEEP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1234
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v2

    sget v4, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-eq v2, v4, :cond_1

    .line 1235
    const-string v2, "PowerOffManager"

    const-string v3, "BroadcastReceiver ACTION_GOTO_SLEEP NOT IN SHUTDOWN MODE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    const-string v2, "PowerOffManager"

    const-string v4, "BroadcastReceiver ACTION_GOTO_SLEEP!!"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemGoToShutdown:Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$500(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    const-string v2, "PowerOffManager"

    const-string v3, "BroadcastReceiver ACTION_GOTO_SLEEP Ignore System Going to Shutdown!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    :cond_2
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;

    invoke-direct {v1, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService$8;)V

    .line 1265
    .local v1, handler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$700(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1266
    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1268
    .end local v1           #handler:Landroid/os/Handler;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yulong.intent.action.REBOOT_SYSTEM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1270
    const-string v4, "PowerOffManager"

    const-string v5, "BroadcastReceiver ACTION_REBOOT_SYSTEM!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v4

    sget v5, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-eq v4, v5, :cond_4

    .line 1273
    const-string v2, "PowerOffManager"

    const-string v3, "BroadcastReceiver ACTION_REBOOT_SYSTEM NOT IN SHUTDOWN MODE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1277
    :cond_4
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->isNeedSlienceReboot()Z
    invoke-static {v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1100(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1278
    const-string v2, "PowerOffManager"

    const-string v3, "BroadcastReceiver ACTION_REBOOT_SYSTEM NOTNeedSlienceReboot!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_5
    new-instance v1, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;

    invoke-direct {v1, p0}, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;-><init>(Lcom/yulong/android/poweroff/PowerOffManagerService$8;)V

    .line 1303
    .restart local v1       #handler:Landroid/os/Handler;
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mAlarmManager:Lcom/android/server/AlarmManagerService;
    invoke-static {v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1500(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/android/server/AlarmManagerService;

    move-result-object v4

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/AlarmManagerService;->isRtcAlarmWakeupWhenReboot(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1304
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1305
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    add-long/2addr v4, v6

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1307
    const-string v2, "PowerOffManager"

    const-string v3, "RTCALARM_WAIT_DELAY Reboot alarmManager.set()!! RTCALARM_WAIT_DELAY=600000"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1311
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_6
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #setter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mIsSystemGoToShutdown:Z
    invoke-static {v4, v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$502(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z

    .line 1312
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mReBootWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1700(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1313
    const-wide/16 v4, 0x32

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1316
    .end local v1           #handler:Landroid/os/Handler;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yulong.intent.action.ACTION_LOST_CARD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1317
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1808()I

    .line 1318
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODEM mLostCardReceiver ACTION_LOST_CARD, card_lost_times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1800()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto/16 :goto_0

    .line 1320
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YULONG.INTENT.ACTION.CHECK_CARD_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1322
    const-string v3, "PowerOffManager"

    const-string v4, "MODEM mModemBootReceiver ACTION_FINISH_CHECK_CARD_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #setter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mModemInitFinished:Z
    invoke-static {v3, v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1902(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z

    goto/16 :goto_0

    .line 1325
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1326
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v4, v5}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1202(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I

    .line 1328
    const-string v4, "PowerOffManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver SYSTEM_SHUTDOWN_BATLEVEL=25 mBatteryLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v6}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v4, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v4}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_a

    :goto_1
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2002(Z)Z

    .line 1333
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerCharge mChargingFull = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1337
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v2

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 1340
    const-string v2, "PowerOffManager"

    const-string v3, "ACTION_BATTERY_CHANGED silenceShutdonwSystem!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto/16 :goto_0

    :cond_a
    move v2, v3

    .line 1331
    goto :goto_1

    .line 1344
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1346
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v2

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v2, v3, :cond_c

    .line 1347
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1348
    .restart local v0       #alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1350
    const-string v2, "PowerOffManager"

    const-string v3, "ACTION_SCREEN_ON Reboot alarmManager.cancel()!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1351
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_c
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v2

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    if-ne v2, v3, :cond_0

    .line 1353
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemBooting:Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1354
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto/16 :goto_0

    .line 1358
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1360
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->isNeedSlienceReboot()Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1100(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1362
    .restart local v0       #alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSilenceRebootDelay:J
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2300(Lcom/yulong/android/poweroff/PowerOffManagerService;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemRebootSender:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1364
    const-string v2, "PowerOffManager"

    const-string v3, "SYSTEM_STATE_SHUTDOWN Reboot alarmManager.set()!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1366
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yulong.intent.action.LONGIDLE_SHUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    const-string v2, "PowerOffManager"

    const-string v3, "ACTION_SHUTDOWN_SYSTEM silenceShutdonwSystem!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto/16 :goto_0
.end method
