.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;
.super Ljava/util/TimerTask;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 1
    .parameter

    .prologue
    .line 4515
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4516
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x3f

    .line 4522
    const-string/jumbo v2, "yulong.hotswap.checkcard.finish"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4523
    .local v0, checkCardTag:Ljava/lang/String;
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSWAP:timer run times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", checkCardTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reCheckCard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v4}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4524
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4526
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4527
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "HOTSWAP: recheckcard"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4528
    monitor-enter p0

    .line 4529
    :try_start_0
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4102(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 4530
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 4531
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4533
    const/4 v1, -0x1

    .line 4535
    .local v1, mSlotId:I
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    invoke-virtual {v2, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->setSlotId(I)V

    .line 4536
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v4, v4, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCheckCardService:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;

    const-string/jumbo v5, "mCheckCardService"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4537
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->checkCardThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4554
    .end local v1           #mSlotId:I
    :cond_0
    :goto_0
    return-void

    .line 4531
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4542
    :cond_1
    monitor-enter p0

    .line 4543
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v3, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 4544
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4545
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4546
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v2, v2, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v3, v3, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4549
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto :goto_0

    .line 4544
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 4551
    :cond_2
    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->i:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 4552
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$2;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->cancelTimer()V
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto :goto_0
.end method
