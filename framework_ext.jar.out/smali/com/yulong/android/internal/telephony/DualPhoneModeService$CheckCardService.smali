.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;
.super Ljava/lang/Object;
.source "DualPhoneModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckCardService"
.end annotation


# instance fields
.field slotId:I

.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V
    .locals 1
    .parameter
    .parameter "slotId"

    .prologue
    .line 4570
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4569
    const/4 v0, 0x0

    iput v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->slotId:I

    .line 4571
    iput p2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->slotId:I

    .line 4572
    return-void
.end method

.method private hotSwapCheckCard(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    .line 4587
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4588
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "HOTSWAP:now mIsUserSelectNet,sleep 5s before check card"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4590
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4598
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getMyNativeService()Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    invoke-static {v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/IPhoneSlotService;

    move-result-object v1

    .line 4600
    .local v1, myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    if-eqz v1, :cond_1

    .line 4601
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSWAP: myNativeSlotService.hotSwapCheckCard(),slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4602
    invoke-interface {v1, p1}, Lcom/yulong/android/internal/telephony/IPhoneSlotService;->hotSwapCheckCard(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4609
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :goto_1
    return-void

    .line 4591
    :catch_0
    move-exception v0

    .line 4593
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 4604
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v3, "HOTSWAP: myNativeSlotService is null,hotSwapCheckCard fail"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4606
    .end local v1           #myNativeSlotService:Lcom/yulong/android/internal/telephony/IPhoneSlotService;
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOTSWAP: CheckCardService run,slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4581
    iget v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->slotId:I

    invoke-direct {p0, v0}, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->hotSwapCheckCard(I)V

    .line 4582
    iget-object v0, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v1, "HOTSWAP: CheckCardService after check card"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 4583
    return-void
.end method

.method public declared-synchronized setSlotId(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 4576
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CheckCardService;->slotId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4577
    monitor-exit p0

    return-void

    .line 4576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method