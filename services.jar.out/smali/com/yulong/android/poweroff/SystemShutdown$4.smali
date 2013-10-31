.class Lcom/yulong/android/poweroff/SystemShutdown$4;
.super Ljava/lang/Thread;
.source "SystemShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/poweroff/SystemShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/poweroff/SystemShutdown;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/SystemShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/yulong/android/poweroff/SystemShutdown$4;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 509
    const-string v2, "PowerOffManager"

    const-string v3, "Performing low-level shutdown...mShutTimeoutThread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/yulong/android/poweroff/SystemShutdown$4;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    iget-boolean v2, v2, Lcom/yulong/android/poweroff/SystemShutdown;->mIsShutTimeout:Z

    if-nez v2, :cond_0

    .line 539
    :goto_1
    return-void

    .line 513
    :catch_0
    move-exception v1

    .line 515
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "PowerOffManager"

    const-string v3, "Shutdown timeout!! Force Low-level Shutdown!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/yulong/android/poweroff/SystemShutdown$4;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    #getter for: Lcom/yulong/android/poweroff/SystemShutdown;->mReboot:Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/SystemShutdown;->access$000(Lcom/yulong/android/poweroff/SystemShutdown;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    const-string v2, "PowerOffManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/poweroff/SystemShutdown$4;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    #getter for: Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;
    invoke-static {v4}, Lcom/yulong/android/poweroff/SystemShutdown;->access$100(Lcom/yulong/android/poweroff/SystemShutdown;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :try_start_1
    iget-object v2, p0, Lcom/yulong/android/poweroff/SystemShutdown$4;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    #getter for: Lcom/yulong/android/poweroff/SystemShutdown;->mRebootReason:Ljava/lang/String;
    invoke-static {v2}, Lcom/yulong/android/poweroff/SystemShutdown;->access$100(Lcom/yulong/android/poweroff/SystemShutdown;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 531
    :catch_1
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerOffManager"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 537
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    goto :goto_1
.end method
