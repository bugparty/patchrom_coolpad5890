.class Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;
.super Landroid/os/Handler;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/PowerOffManagerService$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1249
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v3, v3, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1250
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v6, v6, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemSleepSender:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$600(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1252
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v3, v3, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$700(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1255
    .local v1, nCurrentMills:J
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v3, v3, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockAcquireTime:J
    invoke-static {v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$800(Lcom/yulong/android/poweroff/PowerOffManagerService;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v5, v5, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSleepLockTimeout:J
    invoke-static {v5}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$900(Lcom/yulong/android/poweroff/PowerOffManagerService;)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 1256
    const-string v3, "PowerOffManager"

    const-string v4, "acquirePowerOffWakeLock NOT ACTION_GOTO_SLEEP!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$400()I

    move-result v3

    sget v4, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    if-ne v3, v4, :cond_0

    .line 1260
    iget-object v3, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$1;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v3, v3, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->gotoSleepWithBackLight()V
    invoke-static {v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1000(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto :goto_0
.end method
