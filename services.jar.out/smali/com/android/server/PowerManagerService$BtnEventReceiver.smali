.class final Lcom/android/server/PowerManagerService$BtnEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BtnEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4580
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4580
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BtnEventReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v4, 0x0

    .line 4583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4586
    .local v0, action:Ljava/lang/String;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtnEventReceiver/action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4594
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4665
    :goto_0
    return-void

    .line 4595
    :cond_0
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4599
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4600
    :cond_1
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4604
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4605
    :cond_2
    const-string v1, "yulong.intent.action.BUTTON_LED_CHG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4612
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOnChanged:Z
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$2702(Lcom/android/server/PowerManagerService;Z)Z

    .line 4614
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4617
    :cond_3
    const-string v1, "yulong.intent.action.POWEROFF_SHUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4618
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mForceButtonOn:Z
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$7302(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_0

    .line 4619
    :cond_4
    const-string v1, "yulong.intent.action.POWEROFF_BOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4620
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLightTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4622
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;-><init>(Lcom/android/server/PowerManagerService$BtnEventReceiver;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4633
    :cond_5
    const-string v1, "PowerManagerService"

    const-string v2, "unknow intent received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
