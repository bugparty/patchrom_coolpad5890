.class final Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillProcessTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/ylWatchdog;->access$000()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 323
    .local v0, timescreenoff:J
    iget-object v4, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x33cc

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/ylWatchdog;->getNextWouldBeTime(JJ)J

    move-result-wide v2

    .line 324
    .local v2, triggerTime:J
    iget-object v4, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v4, v4, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v6, v6, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 325
    const-string v4, "ylWatchdog"

    const-string v5, "onReceive/set yulong killprocess timer"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v4, "ylWatchdog"

    const-string v5, "onReceive/send yulong killprocess broadcast"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v4, p0, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v4, v4, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.yulong.android.watchdog.killprocess"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    return-void
.end method
