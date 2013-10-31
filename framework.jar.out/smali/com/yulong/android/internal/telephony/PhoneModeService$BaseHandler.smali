.class Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/PhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    .line 415
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 416
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, cdmaRadioPower:Z
    const/4 v4, 0x0

    .line 424
    .local v4, gsmRadioPower:Z
    const/4 v2, 0x0

    .line 425
    .local v2, cdmaSelectModemValue:I
    const/4 v5, 0x0

    .line 426
    .local v5, gsmSelectModemValue:I
    const/4 v6, -0x1

    .line 427
    .local v6, iResult:I
    const/4 v8, -0x1

    .line 428
    .local v8, slotId:I
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: sam enter PhoneModeService handleMessage: what = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", regNo = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 431
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 432
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x15

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x16

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x1f

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x21

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 457
    :cond_0
    :goto_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1208
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 446
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xa

    if-lt v9, v10, :cond_3

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_0

    .line 449
    :cond_3
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x34

    if-eq v9, v10, :cond_0

    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x35

    if-eq v9, v10, :cond_0

    .line 453
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: don\'t deal with this message."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 461
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  EVENT_OPEN_CDMA_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 464
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 465
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Open cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 467
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 473
    :cond_4
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    .line 474
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 475
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_1

    .line 486
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 487
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  EVENT_CLOSE_CDMA_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 490
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 491
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Close cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 492
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "RILError"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_1

    .line 507
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 508
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_OPEN_GSM_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 510
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_5

    .line 511
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Open gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 513
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 519
    :cond_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 520
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mStateRadio:Z
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/PhoneModeService;Z)Z

    .line 521
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x1

    aput v11, v9, v10

    goto/16 :goto_1

    .line 532
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 533
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CLOSE_GSM_MODEM_POWER received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 534
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 535
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: Close gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 536
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "RILError"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 537
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 555
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_FINISH_SWITCH_SLOT_MODE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 556
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedSwitchBindMode:Z

    .line 557
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 562
    :pswitch_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_ON received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 564
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 570
    :pswitch_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_OFF_OR_NOT_AVAILABLE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 571
    if-nez v1, :cond_6

    .line 572
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 577
    :cond_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x8

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 583
    :pswitch_8
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_ON received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 584
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 589
    :pswitch_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_OFF_OR_NOT_AVAILABLE received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 590
    if-nez v4, :cond_7

    .line 591
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 596
    :cond_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x9

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 599
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/PhoneModeService;)Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eq v9, v4, :cond_1

    goto/16 :goto_1

    .line 606
    :pswitch_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_FINISH_SELECT_NET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 608
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "Success"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 613
    :pswitch_b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_PINPUK_LEFT_NUM received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 614
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x7

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 615
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 617
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_8

    .line 618
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 619
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 621
    :cond_8
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v7, v9

    check-cast v7, [I

    .line 622
    .local v7, ints:[I
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    aget v10, v7, v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 628
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v7           #ints:[I
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 629
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_CARD_TYPE_BY_AT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 631
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 633
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_9

    .line 634
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 635
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "error"

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    const/4 v6, -0x1

    .line 650
    :goto_2
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v9, v10, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 638
    :cond_9
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    const/4 v6, 0x0

    .line 641
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 642
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 644
    const/4 v6, 0x1

    .line 647
    :cond_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_2

    .line 655
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 656
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_UNLOCK_PIN_BY_CDMA received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 657
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_d

    .line 658
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 659
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 660
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 662
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800()I

    move-result v10

    const/16 v11, 0x24

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V

    .line 665
    :cond_b
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_c

    .line 666
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 675
    :cond_c
    :goto_3
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    goto/16 :goto_1

    .line 670
    :cond_d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 671
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_3

    .line 683
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 684
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_UNLOCK_PIN_BY_GSM received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 686
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_10

    .line 687
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 688
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 689
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 691
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1800()I

    move-result v10

    const/16 v11, 0x25

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->DeactivateCardAfterUnlockPin(IIIZ)V

    .line 694
    :cond_e
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_f

    .line 695
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 704
    :cond_f
    :goto_4
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x5

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 706
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->isSecdmodem(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 707
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 699
    :cond_10
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 700
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/4 v10, 0x6

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 714
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 715
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_STATE_CHANGED received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    if-nez v9, :cond_11

    .line 718
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_RADIO_STATE_CHANGED mSlotCardInfoArray[slotId] == null"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 722
    :cond_11
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_13

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_13

    .line 726
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: STATE_CHANGED = RUIM_LOCKED_OR_ABSENT, supply pin."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 729
    const-wide/16 v9, 0x2710

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 734
    :goto_5
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v11, v11, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 754
    :cond_12
    :goto_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 757
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mRegisterClientNo:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 758
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 740
    :cond_13
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_14

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v9, :cond_14

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-nez v9, :cond_14

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 745
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: cdma drop card."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x0

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto :goto_6

    .line 747
    :cond_14
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_12

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_12

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_12

    .line 751
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_6

    .line 764
    :pswitch_10
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 765
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_STATE_CHANGED received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    if-nez v9, :cond_15

    .line 768
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_RADIO_STATE_CHANGED mSlotCardInfoArray[slotId] == null"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :cond_15
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_16

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_16

    .line 775
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: GSM_STATE_CHANGED = SIM_LOCKED_OR_ABSENT, supply pin."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 778
    const-wide/16 v9, 0x2710

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 783
    :goto_7
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v11, v11, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 786
    :cond_16
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_17

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    if-lez v9, :cond_17

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-nez v9, :cond_17

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    iget v9, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 791
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: gsm drop card."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x0

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    goto/16 :goto_1

    .line 793
    :cond_17
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 797
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2502(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 803
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 804
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 805
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GET_GSM_IMSI_BY_AT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 807
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_18

    .line 808
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 809
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "error"

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2602(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 810
    const/4 v6, -0x1

    .line 824
    :goto_8
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v9, v10, v6, v8}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/PhoneModeService;III)V

    goto/16 :goto_1

    .line 812
    :cond_18
    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v10, v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2602(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    const/4 v6, 0x0

    .line 815
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 816
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v9

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseGsmCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 818
    const/4 v6, 0x1

    .line 821
    :cond_19
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_GET_IMSI_BY_AT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_8

    .line 829
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_SELECT_NET_TIME_OUT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 830
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 831
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "TimeOut"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 832
    :cond_1a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 833
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, -0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/PhoneModeService;I)V

    goto/16 :goto_1

    .line 838
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 839
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM:\tEVENT_GET_CDMA_MODEM_STATUS received mCdmaPhone.mCM.getRadioState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdmaOn()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 844
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 846
    :cond_1b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 851
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 854
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM:\tEVENT_GET_GSM_MODEM_STATUS received mGsmPhone.mCM.getRadioState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isGsmOn()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 858
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 860
    :cond_1c
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    goto/16 :goto_1

    .line 864
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CDMA_SUPPLYPIN_MODEMRESET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 865
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 867
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 868
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 869
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 871
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    .line 872
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 877
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 878
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_GSM_SUPPLYPIN_MODEMRESET received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 879
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 880
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 881
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    move-result v8

    .line 883
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1900()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    if-eqz v9, :cond_1

    .line 884
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1600()[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v9

    aget-object v9, v9, v8

    const/4 v10, 0x2

    iput v10, v9, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_1

    .line 889
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CHECK_CDMA_RIL_POWERON_RESULT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 890
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_1d

    .line 892
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT reset modem."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 898
    :cond_1d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 902
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2208(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 903
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_CHECK_CDMA_RIL_POWERON_RESULT mCdmaModemResetTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemResetTimes:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 906
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v11, 0x34

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 915
    :pswitch_18
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:\tEVENT_CHECK_GSM_RIL_POWERON_RESULT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 916
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_1e

    .line 918
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT reset modem."

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    :cond_1e
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGetPinPukNumType:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDesiredPowerState()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v9, v10, :cond_1

    .line 926
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2508(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    .line 927
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: EVENT_CHECK_GSM_RIL_POWERON_RESULT mGsmModemResetTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemResetTimes:I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$500(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2400()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 930
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v9, v9, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, v10, Lcom/yulong/android/internal/telephony/PhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v11, 0x35

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 937
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 947
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x9

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 948
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateGsm:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    if-nez v9, :cond_1f

    .line 949
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(I)I

    .line 951
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    const/4 v11, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 952
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE active notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 961
    :goto_9
    const-wide/16 v9, 0x1388

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 966
    :goto_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 954
    :cond_1f
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(I)I

    .line 956
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x2

    const/4 v11, 0x0

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 957
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_GSM_SELECT_DONE dactive notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_9

    .line 962
    :catch_0
    move-exception v3

    .line 964
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .line 971
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 982
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v9

    const/16 v10, 0x8

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 983
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->processStateCdma:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    if-nez v9, :cond_20

    .line 984
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(I)I

    .line 985
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 987
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE active notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 996
    :goto_b
    const-wide/16 v9, 0x1388

    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1001
    :goto_c
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 989
    :cond_20
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(I)I

    .line 990
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->sendBroadcastandActiveOrDeactive(II)V
    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/PhoneModeService;II)V

    .line 992
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: phonemodeservice EVENT_OPEN_CDMA_SELECT_DONE dactive notify all ok "

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_b

    .line 997
    :catch_1
    move-exception v3

    .line 999
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 1006
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1007
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_21

    .line 1008
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: Error phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1014
    :goto_d
    const-wide/16 v9, 0x1388

    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1019
    :goto_e
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3102(I)I

    .line 1020
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1011
    :cond_21
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  phonemodeservice EVENT_CDMA_SUBSCRIPTION_DEACTIVE ok"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_d

    .line 1015
    :catch_2
    move-exception v3

    .line 1017
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 1024
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1025
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_22

    .line 1026
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CP_COMM: Error phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1032
    :goto_f
    const-wide/16 v9, 0x1388

    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1037
    :goto_10
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$2802(I)I

    .line 1038
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1029
    :cond_22
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM:  phonemodeservice EVENT_GSM_SUBSCRIPTION_DEACTIVE ok"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    goto :goto_f

    .line 1033
    :catch_3
    move-exception v3

    .line 1035
    .restart local v3       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 1042
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :pswitch_1d
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_SET_SUBSCRIPTION_MODE_DONE"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1043
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1044
    :try_start_6
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1045
    monitor-exit v10

    goto/16 :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 1051
    :pswitch_1e
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1052
    :try_start_7
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1053
    monitor-exit v10

    goto/16 :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v9

    .line 1056
    :pswitch_1f
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1057
    :try_start_8
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock1:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1058
    monitor-exit v10

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v9

    .line 1061
    :pswitch_20
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1062
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 1063
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_CDMA_SUBSCRIPTION_READY mLock2.notifyAll"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1064
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1065
    :try_start_9
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1066
    monitor-exit v10

    goto/16 :goto_1

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v9

    .line 1070
    :pswitch_21
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1071
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mNeedUnlockMode:I
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/PhoneModeService;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1072
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_GSM_SUBSCRIPTION_READY mLock2.notifyAll"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1073
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1074
    :try_start_a
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock2:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3600(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1075
    monitor-exit v10

    goto/16 :goto_1

    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v9

    .line 1079
    :pswitch_22
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mCdmaModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$702(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1080
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1083
    :pswitch_23
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const/4 v10, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mGsmModemStatus:I
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/PhoneModeService;I)I

    .line 1084
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->getPinPukNumByCdmaOrGsm1()V
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/PhoneModeService;)V

    goto/16 :goto_1

    .line 1088
    :pswitch_24
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    const-string v10, "CP_COMM: EVENT_C_LOST_CARD_REBOOT received"

    #calls: Lcom/yulong/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/PhoneModeService;Ljava/lang/String;)V

    .line 1089
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->pm:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/PhoneModeService;)Landroid/os/PowerManager;

    move-result-object v9

    const-string/jumbo v10, "lowmem"

    invoke-virtual {v9, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1189
    :pswitch_25
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    iget-object v10, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v10}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v11}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->nextselect:[I
    invoke-static {v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/PhoneModeService;)[I

    move-result-object v12

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/yulong/android/internal/telephony/PhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_1

    .line 1193
    :pswitch_26
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1194
    :try_start_b
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock3:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1195
    monitor-exit v10

    goto/16 :goto_1

    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v9

    .line 1200
    :pswitch_27
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1201
    :try_start_c
    iget-object v9, p0, Lcom/yulong/android/internal/telephony/PhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/PhoneModeService;->mLock4:Ljava/lang/Object;
    invoke-static {v9}, Lcom/yulong/android/internal/telephony/PhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/PhoneModeService;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    monitor-exit v10

    goto/16 :goto_1

    :catchall_6
    move-exception v9

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v9

    .line 730
    :catch_4
    move-exception v9

    goto/16 :goto_5

    .line 779
    :catch_5
    move-exception v9

    goto/16 :goto_7

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_12
        :pswitch_17
        :pswitch_18
        :pswitch_1d
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method
