.class Lcom/android/server/PowerManagerService$15;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final BASEYEAR:I = 0x76c

.field private static final DAY:I = 0x5265c00


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4436
    iput-object p1, p0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 4447
    const-wide/16 v6, 0x0

    .line 4448
    .local v6, nextTime:J
    const/16 v16, 0x2

    .line 4452
    .local v16, resason:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mDoneBooting:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 4574
    :cond_0
    :goto_0
    return-void

    .line 4455
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmMgr:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v18

    if-nez v18, :cond_2

    .line 4456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v18

    const-string v20, "alarm"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AlarmManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/android/server/PowerManagerService;->mAlarmMgr:Landroid/app/AlarmManager;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmMgr:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v18

    if-nez v18, :cond_2

    .line 4458
    const-string v18, "PowerManagerService"

    const-string v19, "mAlarmMgr is null!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmMgr:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOnOffIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)I

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 4466
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)I

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4468
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mButtonLightTask/mForceButtonOn = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v19

    monitor-enter v19

    .line 4473
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 4474
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4478
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOnChanged:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$2702(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_0

    .line 4466
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 4474
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 4484
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 4489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 4490
    .local v10, now:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 4492
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4493
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    .line 4501
    .local v17, today:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightOnTime:J
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4502
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x76c

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getMonth()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getDate()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 4503
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 4511
    .local v14, onTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightOffTime:J
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4512
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x76c

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getMonth()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getDate()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 4513
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 4528
    .local v12, offTime:J
    cmp-long v18, v12, v14

    if-nez v18, :cond_8

    .line 4530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4531
    const-wide/16 v6, 0x0

    .line 4550
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->isScreenBright()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 4552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v19

    monitor-enter v19

    .line 4553
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;II)V

    .line 4554
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4557
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOnChanged:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$2702(Lcom/android/server/PowerManagerService;Z)Z

    .line 4559
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "button-light: nextTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_0

    .line 4565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4566
    .local v3, bootTime:J
    add-long v18, v3, v6

    sub-long v8, v18, v10

    .line 4567
    .local v8, next_elapse:J
    const-string v18, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "button-light: boottime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",next_elapse:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",nexttime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PowerManagerService;->mAlarmMgr:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/PowerManagerService;->mButtonOnOffIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 4532
    .end local v3           #bootTime:J
    .end local v8           #next_elapse:J
    :cond_8
    cmp-long v18, v12, v14

    if-gez v18, :cond_b

    .line 4533
    cmp-long v18, v10, v12

    if-ltz v18, :cond_9

    cmp-long v18, v10, v14

    if-gez v18, :cond_9

    .line 4534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4535
    move-wide v6, v14

    goto/16 :goto_2

    .line 4537
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4538
    cmp-long v18, v10, v12

    if-gez v18, :cond_a

    move-wide v6, v12

    :goto_3
    goto/16 :goto_2

    :cond_a
    const-wide/32 v18, 0x5265c00

    add-long v6, v12, v18

    goto :goto_3

    .line 4541
    :cond_b
    cmp-long v18, v10, v14

    if-ltz v18, :cond_c

    cmp-long v18, v10, v12

    if-gez v18, :cond_c

    .line 4542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4543
    move-wide v6, v12

    goto/16 :goto_2

    .line 4545
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService$15;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    .line 4546
    cmp-long v18, v10, v14

    if-gez v18, :cond_d

    move-wide v6, v14

    :goto_4
    goto/16 :goto_2

    :cond_d
    const-wide/32 v18, 0x5265c00

    add-long v6, v14, v18

    goto :goto_4

    .line 4554
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .line 4571
    .end local v5           #c:Ljava/util/Calendar;
    .end local v10           #now:J
    .end local v12           #offTime:J
    .end local v14           #onTime:J
    .end local v17           #today:Ljava/util/Date;
    :cond_e
    const-string v18, "PowerManagerService"

    const-string v19, "Button light was controled  ERROR!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
