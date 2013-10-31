.class Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;
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
    .line 1282
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v0, v0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1287
    const-string v0, "PowerOffManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastReceiver SILENCE_REBOOT_NEED_BATLEVEL=30 mBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v2, v2, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1200(Lcom/yulong/android/poweroff/PowerOffManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v0, "PowerOffManager"

    const-string v1, "ACTION_REBOOT_SYSTEM silenceShutdonwSystem!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v0, v0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceShutdownSystem()V
    invoke-static {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1299
    :goto_0
    return-void

    .line 1295
    :cond_0
    const-string v0, "PowerOffManager"

    const-string v1, "ACTION_REBOOT_SYSTEM silenceRebootSystem!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$8$2;->this$1:Lcom/yulong/android/poweroff/PowerOffManagerService$8;

    iget-object v0, v0, Lcom/yulong/android/poweroff/PowerOffManagerService$8;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceRebootSystem()V
    invoke-static {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1400(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto :goto_0
.end method
