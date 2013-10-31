.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;
.super Landroid/os/Handler;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method public constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    .line 440
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 441
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 446
    const/4 v4, 0x0

    .line 447
    .local v4, cdmaRadioPower:Z
    const/4 v6, 0x0

    .line 448
    .local v6, gsmRadioPower:Z
    const/4 v5, 0x0

    .line 449
    .local v5, cdmaSelectModemValue:I
    const/4 v7, 0x0

    .line 450
    .local v7, gsmSelectModemValue:I
    const/4 v8, -0x1

    .line 451
    .local v8, iResult:I
    const/4 v13, -0x1

    .line 453
    .local v13, slotId:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: enter DualPhoneModeService handleMessage: what = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", regNo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    .line 457
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x15

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x16

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x3e

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x3f

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_2

    .line 478
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 1198
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0xa

    if-lt v14, v15, :cond_3

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0xf

    if-le v14, v15, :cond_0

    .line 473
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: don\'t deal with this message."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->registerClientToNativeService()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    .line 483
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v14

    invoke-static {v14}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getCommType(I)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_4

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_4

    .line 485
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: liuyong add 2012-06-28 w8260 reset do"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_4
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->notifySocketConnectedInternal()V

    goto :goto_0

    .line 493
    :sswitch_1
    const/4 v12, 0x0

    .line 494
    .local v12, net_type:I
    const/4 v9, -0x1

    .line 495
    .local v9, insert_state:I
    const/4 v3, 0x0

    .line 497
    .local v3, cardState:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 498
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 504
    const/4 v14, 0x1

    if-ne v12, v14, :cond_8

    .line 505
    const/4 v14, 0x1

    if-ne v9, v14, :cond_6

    .line 550
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-virtual {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyCradStateChangedIntent()V

    goto :goto_0

    .line 508
    :cond_6
    if-nez v9, :cond_5

    .line 509
    const-string v14, "cdma.ruim.insert.state"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    const-string v14, "PRESENT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 518
    :cond_7
    const-string v14, "cdma.ruim.insert.state"

    const-string v15, "ABSENT"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    .line 525
    :cond_8
    const/4 v14, 0x2

    if-ne v12, v14, :cond_5

    .line 526
    const/4 v14, 0x1

    if-eq v9, v14, :cond_5

    .line 529
    if-nez v9, :cond_5

    .line 530
    const-string v14, "gsm.sim.insert.state"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    const-string v14, "PRESENT"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 539
    :cond_9
    const-string v14, "gsm.sim.insert.state"

    const-string v15, "ABSENT"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    goto :goto_1

    .line 554
    .end local v3           #cardState:Ljava/lang/String;
    .end local v9           #insert_state:I
    .end local v12           #net_type:I
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 556
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_a

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: Open cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 568
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-nez v14, :cond_1

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 583
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    if-nez v14, :cond_1

    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 588
    const-wide/16 v14, 0x2710

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 599
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 601
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_d

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: Close cdma modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-nez v14, :cond_c

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xa

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xb

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v16, 0x32

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 623
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v14, :cond_e

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    .line 634
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-nez v14, :cond_1

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xa

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xb

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v16, 0x32

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 648
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 650
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_f

    .line 651
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: Open gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 661
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-nez v14, :cond_1

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-eqz v14, :cond_10

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x4

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->unLockPinAfterModemReset()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 673
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    if-nez v14, :cond_1

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x4

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterOpenGsmModem()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getPinPukNumByCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 686
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 687
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_11

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: Close gsm modem failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 699
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 702
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    if-eqz v14, :cond_12

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->switchSlotBindMode()Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    goto/16 :goto_0

    .line 710
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x9

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-nez v14, :cond_1

    .line 713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xb

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0xa

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    const/16 v16, 0x32

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 725
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mNeedSwitchBindMode:Z

    .line 726
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectOpenModemCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 731
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 737
    :cond_13
    const/4 v4, 0x1

    .line 740
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radio state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 742
    if-nez v4, :cond_14

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    .line 745
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 750
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    if-nez v14, :cond_17

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v5, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    .line 765
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mCdmaRadio:Z

    if-ne v14, v4, :cond_18

    .line 766
    if-eqz v4, :cond_15

    if-nez v5, :cond_16

    :cond_15
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 768
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x9

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 772
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 762
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v5, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    goto :goto_3

    .line 775
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    aget v14, v14, v15

    if-nez v14, :cond_1

    .line 777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: GET_PIN_OR_PUK_NUM_STEP---------error."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 783
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 789
    :cond_19
    const/4 v6, 0x1

    .line 792
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "radio state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 794
    if-nez v6, :cond_1a

    .line 795
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    .line 797
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 802
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x9

    aget v14, v14, v15

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mGsmRadio:Z

    if-ne v14, v6, :cond_1

    .line 813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    if-nez v14, :cond_1d

    .line 814
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v7, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 819
    :goto_4
    if-eqz v6, :cond_1b

    if-nez v7, :cond_1c

    :cond_1b
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 821
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x9

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 823
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 816
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v7, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    goto :goto_4

    .line 832
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "Success"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mSlotId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",mCdmaPhone.mCM.getRadioState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_1f

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v14, v15, :cond_1e

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_1f

    .line 840
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "auto unlock cdma pin after radio on if need"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x15

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 845
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mSlotId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",mGsmPhone.mCM.getRadioState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v14, v15, :cond_20

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_1

    .line 850
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "auto unlock gsm pin after radio on if need"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x15

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 859
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 860
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 862
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_21

    .line 863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GET_PIN_LEFT_NUM failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 866
    :cond_21
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v11, v14

    check-cast v11, [I

    .line 868
    .local v11, ints:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    aget v15, v11, v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 877
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v11           #ints:[I
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 879
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 881
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_22

    .line 882
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GET_GARD_TYPE failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "error"

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    const/4 v8, -0x1

    .line 898
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v14, v15, v8, v13}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    .line 886
    :cond_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3302(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 887
    const/4 v8, 0x0

    .line 889
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_23

    .line 890
    invoke-static {}, Lcom/yulong/android/internal/telephony/CardInfoParse;->getDefault()Lcom/yulong/android/internal/telephony/CardInfoParse;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v16

    aget-object v16, v16, v13

    invoke-virtual/range {v14 .. v16}, Lcom/yulong/android/internal/telephony/CardInfoParse;->parseCdmaCommand(Ljava/lang/String;Lcom/yulong/android/internal/telephony/SlotCardInfo;)Z

    .line 892
    const/4 v8, 0x1

    .line 895
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: GET_CARD_TYPE: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCardTypeResponse:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_5

    .line 903
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 905
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_25

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: UNLOCK_PIN_BY_CDMA exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 908
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_24

    .line 909
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v14

    aget-object v14, v14, v13

    const/4 v15, 0x2

    iput v15, v14, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    .line 920
    :cond_24
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x5

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 923
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 913
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: UNLOCK_PIN_BY_CDMA true."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto :goto_6

    .line 931
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 933
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_27

    .line 934
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: UNLOCK_PIN_BY_GSM failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 937
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_26

    .line 948
    :cond_26
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x6

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 951
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/4 v15, 0x6

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->operateRadioCdmaAndGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 943
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_UNLOCK_PIN_BY_GSM true."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->waitAfterUnlockPin(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto :goto_7

    .line 959
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2a

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v14, v15, :cond_28

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_2a

    .line 966
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: STATE_CHANGED = RUIM_LOCKED_OR_ABSENT, supply pin."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 968
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v14

    if-eqz v14, :cond_29

    .line 970
    const-wide/16 v14, 0x2710

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 976
    :cond_29
    :goto_8
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x15

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 991
    :cond_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_1

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRegisterClientNo:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1002(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->broadcastSyncMessageToRenew(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1001
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 1003
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-nez v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2d

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v14, v15, :cond_2b

    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v14, v15, :cond_2d

    .line 1008
    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: GSM_STATE_CHANGED = SIM_LOCKED_OR_ABSENT, supply pin."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isSwitchSlotEnabled()Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 1012
    const-wide/16 v14, 0x2710

    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1018
    :cond_2c
    :goto_9
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v14

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mBaseHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x16

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1033
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    if-nez v14, :cond_30

    .line 1034
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v7, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    .line 1040
    :goto_a
    if-eqz v6, :cond_2e

    if-nez v7, :cond_2f

    :cond_2e
    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 1042
    :cond_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x9

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 1044
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperateSwitchSteps:[I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1600(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[I

    move-result-object v14

    const/16 v15, 0x8

    aget v14, v14, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 1046
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectCloseModemCdmaOrGsm()V
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V

    goto/16 :goto_0

    .line 1036
    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v14

    iget v7, v14, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    goto :goto_a

    .line 1053
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1054
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mOperatePinPukByPhoneId:I

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 1056
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_31

    .line 1057
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GET_IMSI_BY_AT failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "error"

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    const/4 v8, -0x1

    .line 1071
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->notifyPinPukCheckResult(III)V
    invoke-static {v14, v15, v8, v13}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;III)V

    goto/16 :goto_0

    .line 1061
    :cond_31
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    const/4 v8, 0x0

    .line 1064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_32

    .line 1065
    const/4 v8, 0x1

    .line 1067
    :cond_32
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: EVENT_GET_IMSI_BY_AT: mGsmImsiResponse"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmImsiResponse:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "mSlotCardInfoArray["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "].mGsmImsi"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v16

    aget-object v16, v16, v13

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto :goto_b

    .line 1077
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mIsUserSelectNet:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_33

    .line 1082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2908(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static {v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v15

    iget v15, v15, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mLeftSlotModemType:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mRightSlotModemType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v17, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mUserWishSelectedInfo:Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;
    invoke-static/range {v17 .. v17}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$CardSelectInfo;->mPreferredSlotId:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->selectModemAndPreferredSlot(III)I

    goto/16 :goto_0

    .line 1090
    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlectNetTimes:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2902(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "TimeOut"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->updateInfoAndBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1093
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGetPinPukNumType:I
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->finishGetPinOrPukLeftNum(I)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)V

    goto/16 :goto_0

    .line 1099
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1100
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_35

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :cond_35
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v1, v14

    check-cast v1, [I

    .line 1104
    .local v1, ModomStatus:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: EVENT_GET_CDMA_MODEM_STATUS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1106
    const/4 v14, 0x0

    aget v14, v1, v14

    if-nez v14, :cond_36

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1112
    :goto_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1113
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1114
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    .line 1109
    :cond_36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_c

    .line 1118
    .end local v1           #ModomStatus:[I
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1119
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_37

    .line 1120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS failed."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    :cond_37
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v1, v14

    check-cast v1, [I

    .line 1123
    .restart local v1       #ModomStatus:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CP_COMM: EVENT_GET_GSM_MODEM_STATUS: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1125
    const/4 v14, 0x0

    aget v14, v1, v14

    if-nez v14, :cond_38

    .line 1126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1131
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1132
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1133
    monitor-exit v15

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .line 1128
    :cond_38
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    goto :goto_d

    .line 1138
    .end local v1           #ModomStatus:[I
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1139
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_1

    .line 1140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_CDMA_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 1142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_1

    .line 1143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v14

    aget-object v14, v14, v13

    const/4 v15, 0x2

    iput v15, v14, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_0

    .line 1149
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1150
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_1

    .line 1151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "CP_COMM: EVENT_GSM_SUPPLYPIN_MODEMRESET exception."

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logi(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v13

    .line 1153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v13

    if-eqz v14, :cond_1

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v14

    aget-object v14, v14, v13

    const/4 v15, 0x2

    iput v15, v14, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mUniversalPinState:I

    goto/16 :goto_0

    .line 1162
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HOTSWAP: enter into EVENT_HOTSWAP_CHECK_CARD_FINISH,reCheckCard = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->reCheckCard:Z
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v14

    if-eqz v14, :cond_39

    .line 1166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HOTSWAP: isCheckingCard = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->isCheckingCard:Z
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", ignore"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1171
    :cond_39
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HOTSWAP: mCdmaModemStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mGsmModemStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2200(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mCdmaModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$1502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mGsmModemStatus:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2202(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, -0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotConnectMode:I
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HOTSWAP: getSlotConnectMode()= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    move-object/from16 v16, v0

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->getSlotConnectMode()I
    invoke-static/range {v16 .. v16}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$2500(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_3a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mPinValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3100(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    if-eqz v14, :cond_3b

    .line 1182
    :cond_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v15, 0x1

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->hotSwapUnlockPin:Z
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$3602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 1186
    :cond_3b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$BaseHandler;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v15, "HOTSWAP: broadcast intent ACTION_HOTSWAP_SELECT_NET"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 1187
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v14, "yulong.intent.action.ACTION_HOTSWAP_SELECT_NET"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v10, intent:Landroid/content/Intent;
    const-string/jumbo v14, "msgFlag"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$4300()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 589
    .end local v10           #intent:Landroid/content/Intent;
    .restart local v2       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v14

    goto/16 :goto_2

    .line 971
    .end local v2           #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v14

    goto/16 :goto_8

    .line 1013
    :catch_2
    move-exception v14

    goto/16 :goto_9

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_14
        0x7 -> :sswitch_15
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xc -> :sswitch_a
        0xd -> :sswitch_9
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_d
        0x12 -> :sswitch_c
        0x13 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x32 -> :sswitch_b
        0x33 -> :sswitch_13
        0x3d -> :sswitch_1
        0x3e -> :sswitch_0
        0x3f -> :sswitch_18
    .end sparse-switch
.end method
