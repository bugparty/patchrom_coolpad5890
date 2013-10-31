.class Lcom/android/server/AlarmManagerService$FastBootupReceiver$1;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService$FastBootupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$FastBootupReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$FastBootupReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FastBootupReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$FastBootupReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$FastBootupReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$FastBootupReceiver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$FastBootupReceiver$1;->this$1:Lcom/android/server/AlarmManagerService$FastBootupReceiver;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$FastBootupReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRestoreAlarmList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/android/server/AlarmManagerService$FastBootupReceiver;->restoreLateAlarmList(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService$FastBootupReceiver;->access$2500(Lcom/android/server/AlarmManagerService$FastBootupReceiver;Ljava/util/ArrayList;)V

    .line 1395
    return-void
.end method
