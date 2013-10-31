.class final Lcom/android/server/PowerManagerService$PowerSaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSaverReceiver"
.end annotation


# instance fields
.field private interval:I

.field private msg:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$PowerSaverReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0x14

    .line 562
    const-string v0, "android.intent.action.REG_ONLINE_APP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->packageName:Ljava/lang/String;

    .line 564
    const-string v0, "interval"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->interval:I

    .line 565
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->msg:Ljava/lang/String;

    .line 567
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "PowerManagerService"

    const-string v1, "==== New power saver Daemon 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->interval:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->msg:Ljava/lang/String;

    #calls: Lcom/android/server/PowerManagerService;->startPowerDaemon(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v0, "android.intent.action.UNREG_ONLINE_APP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->packageName:Ljava/lang/String;

    .line 573
    const-string v0, "interval"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->interval:I

    .line 574
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->msg:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$PowerSaverReceiver;->msg:Ljava/lang/String;

    #calls: Lcom/android/server/PowerManagerService;->stopPowerDaemon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
