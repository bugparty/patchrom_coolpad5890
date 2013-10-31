.class final Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ylWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseBackupStartReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    iget-object v1, v1, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;->this$0:Lcom/android/server/ylWatchdog;

    #calls: Lcom/android/server/ylWatchdog;->backupKeyDatabases()V
    invoke-static {v0}, Lcom/android/server/ylWatchdog;->access$600(Lcom/android/server/ylWatchdog;)V

    .line 1174
    return-void
.end method
