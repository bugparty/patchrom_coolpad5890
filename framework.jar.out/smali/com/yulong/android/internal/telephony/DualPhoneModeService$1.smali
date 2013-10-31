.class Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "DualPhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/internal/telephony/DualPhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    const-string/jumbo v1, "level"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 356
    .local v10, iLevel:I
    const-string/jumbo v1, "voltage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 357
    .local v15, volt:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onBatteryInfoReceiver(II)V
    invoke-static {v1, v10, v15}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$000(Lcom/yulong/android/internal/telephony/DualPhoneModeService;II)V

    .line 418
    .end local v10           #iLevel:I
    .end local v15           #volt:I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getOperatorType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yulong.intent.action.lte.only.mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "[DualPhoneModeService] broadcast lte.only.mode"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 424
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 427
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yulong.intent.action.close.lte.only.mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "[DualPhoneModeService] broadcast close lte.only.mode"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setModemPowerOperation(ILandroid/os/Message;)Z

    .line 431
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 434
    :cond_2
    return-void

    .line 358
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$100()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    .line 360
    invoke-static {}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$200()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setDesiredRadioPower(Z)V

    goto :goto_0

    .line 361
    :cond_4
    const-string/jumbo v1, "yulong.intent.action.DUAL_SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 363
    const/4 v11, 0x0

    .line 364
    .local v11, iccCardState:Ljava/lang/String;
    const/4 v12, 0x0

    .line 365
    .local v12, phoneId:I
    const/4 v7, -0x1

    .line 366
    .local v7, slotId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "Received ACTION_DUAL_SIM_STATE_CHANGED"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #iccCardState:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 370
    .restart local v11       #iccCardState:Ljava/lang/String;
    const-string/jumbo v1, "phoneIdKey"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->convertPhoneIdToSlotId(I)I
    invoke-static {v1, v12}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$400(Lcom/yulong/android/internal/telephony/DualPhoneModeService;I)I

    move-result v7

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iccCardState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 376
    const-string v1, "PRESENT"

    const-string v2, "gsm.sim.insert.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v12, v1, :cond_5

    .line 381
    const-string v1, "gsm.sim.insert.state"

    const-string v2, "ABSENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSimInserted:Z
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$502(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 387
    :cond_5
    const-string v1, "PRESENT"

    const-string v2, "cdma.ruim.insert.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-ne v12, v1, :cond_6

    .line 392
    const-string v1, "cdma.ruim.insert.state"

    const-string v2, "ABSENT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    #setter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mRuimInserted:Z
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$602(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Z)Z

    .line 397
    :cond_6
    const-string v1, "ABSENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string/jumbo v2, "sim card absent!!!"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->saveInfoToNativeService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    invoke-static/range {v1 .. v7}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$700(Lcom/yulong/android/internal/telephony/DualPhoneModeService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const/4 v2, 0x0

    iput v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mCardType:I

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const-string v2, ""

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmImsi:Ljava/lang/String;

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #getter for: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->mSlotCardInfoArray:[Lcom/yulong/android/internal/telephony/SlotCardInfo;
    invoke-static {v1}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$800(Lcom/yulong/android/internal/telephony/DualPhoneModeService;)[Lcom/yulong/android/internal/telephony/SlotCardInfo;

    move-result-object v1

    aget-object v1, v1, v7

    const-string v2, ""

    iput-object v2, v1, Lcom/yulong/android/internal/telephony/SlotCardInfo;->mGsmOperId:Ljava/lang/String;

    goto/16 :goto_0

    .line 405
    .end local v7           #slotId:I
    .end local v11           #iccCardState:Ljava/lang/String;
    .end local v12           #phoneId:I
    :cond_7
    const-string/jumbo v1, "yulong.intent.action.SIMCARD_SWITCH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    const-string v2, "HOTSWAP:Received ACTION_SIMCARD_SWITCH"

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v1, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 408
    .local v13, simName:Ljava/lang/String;
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 410
    .local v14, simState:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HOTSWAP: simName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$300(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;)V

    .line 412
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yulong/android/internal/telephony/DualPhoneModeService$1;->this$0:Lcom/yulong/android/internal/telephony/DualPhoneModeService;

    #calls: Lcom/yulong/android/internal/telephony/DualPhoneModeService;->onIccSwap(Ljava/lang/String;I)V
    invoke-static {v1, v13, v14}, Lcom/yulong/android/internal/telephony/DualPhoneModeService;->access$900(Lcom/yulong/android/internal/telephony/DualPhoneModeService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 413
    :catch_0
    move-exception v9

    .line 415
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
