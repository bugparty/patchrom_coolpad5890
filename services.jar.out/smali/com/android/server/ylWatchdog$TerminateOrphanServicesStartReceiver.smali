.class final Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TerminateOrphanServicesStartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 1117
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v11, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mTerminateOrphanServicesIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1120
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v1

    .line 1121
    .local v1, availableMemory:J
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J
    invoke-static {v10}, Lcom/android/server/ylWatchdog;->access$100(Lcom/android/server/ylWatchdog;)J

    move-result-wide v7

    .line 1123
    .local v7, totalPssOfPersistentProcesses:J
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-virtual {v10, v1, v2, v7, v8}, Lcom/android/server/ylWatchdog;->isNecessaryToTerminateOrphanServices(JJ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1124
    const-string v10, "ylWatchdog"

    const-string v11, "TerminateOrphanServicesStartReceiver, The alarm is cancelled for there\'s enough memory available"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z
    invoke-static {v10}, Lcom/android/server/ylWatchdog;->access$200(Lcom/android/server/ylWatchdog;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1129
    const-string v10, "ylWatchdog"

    const-string v11, "TerminateOrphanServicesStartReceiver, The alarm is cancelled for the data service is active"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    :cond_2
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1135
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mRunningServiceState:Lcom/android/server/RunningServiceState;

    if-nez v10, :cond_3

    .line 1136
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/RunningServiceState;->getInstance(Landroid/content/Context;)Lcom/android/server/RunningServiceState;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/ylWatchdog;->mRunningServiceState:Lcom/android/server/RunningServiceState;

    .line 1139
    :cond_3
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mRunningServiceState:Lcom/android/server/RunningServiceState;

    iget-object v11, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v11, v11, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v0}, Lcom/android/server/RunningServiceState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    .line 1140
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mRunningServiceState:Lcom/android/server/RunningServiceState;

    invoke-virtual {v10}, Lcom/android/server/RunningServiceState;->getCurrentUnstoppedDulyMergedItems()Ljava/util/ArrayList;

    move-result-object v9

    .line 1142
    .local v9, unstoppedDulyMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$MergedItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 1143
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/RunningServiceState$MergedItem;

    .line 1144
    .local v4, mi:Lcom/android/server/RunningServiceState$MergedItem;
    iget-object v10, v4, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1145
    .local v6, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/RunningServiceState$ServiceItem;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 1147
    .local v5, si:Lcom/android/server/RunningServiceState$ServiceItem;
    const-string v10, "ylWatchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "To stop forcibly Service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v10, p0, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v10, v10, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v5, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_2

    .line 1142
    .end local v5           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
