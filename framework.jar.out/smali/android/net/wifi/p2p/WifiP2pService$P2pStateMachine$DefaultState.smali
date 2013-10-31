.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    .line 397
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 605
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unhandled message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 606
    const/4 v9, 0x0

    .line 608
    :goto_0
    return v9

    .line 399
    :sswitch_0
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 401
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/util/AsyncChannel;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$1102(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 608
    :goto_1
    :sswitch_1
    const/4 v9, 0x1

    goto :goto_0

    .line 403
    :cond_0
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Full connection failure, error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 404
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$1102(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 409
    :sswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 410
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v10, "Send failed, client connection lost"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 414
    :goto_2
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$1102(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 412
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Client connection lost with reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 418
    :sswitch_3
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 419
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$1300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_1

    .line 422
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22002

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 426
    :sswitch_5
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22005

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 430
    :sswitch_6
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2202f

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 434
    :sswitch_7
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22008

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 438
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 439
    .local v3, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 441
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2200c

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 442
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22001

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 444
    :cond_2
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2200b

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 449
    .end local v3           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_9
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2200e

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 453
    :sswitch_a
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22011

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 457
    :sswitch_b
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2201d

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 461
    :sswitch_c
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22020

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 465
    :sswitch_d
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22023

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 469
    :sswitch_e
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22026

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 473
    :sswitch_f
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22029

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 478
    :sswitch_10
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2202c

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 483
    :sswitch_11
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22034

    const/4 v11, 0x2

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 487
    :sswitch_12
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22014

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 490
    :sswitch_13
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WfdInfo;

    .line 491
    .local v8, wfdInfo:Landroid/net/wifi/p2p/WfdInfo;
    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->sessionMgmtCtrlPort:I

    if-lez v9, :cond_3

    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->sessionMgmtCtrlPort:I

    const v10, 0xffff

    if-le v9, v10, :cond_4

    .line 493
    :cond_3
    const/16 v9, 0x1c44

    iput v9, v8, Landroid/net/wifi/p2p/WfdInfo;->sessionMgmtCtrlPort:I

    .line 497
    :cond_4
    const-string v7, "WFD_SET"

    .line 498
    .local v7, strCmd:Ljava/lang/String;
    const/16 v9, 0xe

    new-array v2, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " device_type "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    if-nez v9, :cond_7

    const-string/jumbo v9, "source"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " coupled_sink_supported_by_source "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isCoupledSinkSupportedBySource:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_b

    const-string/jumbo v9, "y"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " coupled_sink_supported_by_sink "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isCoupledSinkSupportedBySink:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_c

    const-string/jumbo v9, "y"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " available_for_session "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isAvailableForSession:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_d

    const-string/jumbo v9, "y"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " service_discovery_supported "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isServiceDiscoverySupported:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_e

    const-string/jumbo v9, "y"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " preferred_connectivity "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->preferredConnectivity:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_f

    const-string/jumbo v9, "tdls"

    :goto_8
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " content_protection_supported "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isContentProtectionSupported:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_10

    const-string/jumbo v9, "y"

    :goto_9
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/4 v10, 0x7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " time_sync_supported "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isTimeSynchronizationSupported:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_11

    const-string/jumbo v9, "y"

    :goto_a
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/16 v10, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " primarysink_audio_notsupported "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isAudioUnspportedAtPrimarySink:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_12

    const-string/jumbo v9, "y"

    :goto_b
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/16 v10, 0x9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " source_audio_only_supported "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isAudioOnlySupportedAtSource:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_13

    const-string/jumbo v9, "y"

    :goto_c
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/16 v10, 0xa

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " tdls_persistent_group_intended "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isTDLSPersistentGroupIntended:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_14

    const-string/jumbo v9, "y"

    :goto_d
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/16 v10, 0xb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " tdls_persistent_group_reinvoke "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v8, Landroid/net/wifi/p2p/WfdInfo;->isTDLSReInvokePersistentGroupReq:Z

    const/4 v12, 0x1

    if-ne v9, v12, :cond_15

    const-string/jumbo v9, "y"

    :goto_e
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    const/16 v9, 0xc

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " session_mgmt_ctrl_port "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/net/wifi/p2p/WfdInfo;->sessionMgmtCtrlPort:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/16 v10, 0xd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " enable "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    const/4 v12, 0x4

    if-ne v9, v12, :cond_16

    const-string/jumbo v9, "n"

    :goto_f
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v10

    .line 532
    .local v2, cmdArray:[Ljava/lang/String;
    const-string v6, "FAIL"

    .line 533
    .local v6, ret:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    array-length v9, v2

    if-ge v4, v9, :cond_6

    .line 534
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 535
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v4

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\t"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_17

    const-string v9, "OK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "DONE."

    :goto_11
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 537
    if-eqz v6, :cond_5

    const-string v9, "OK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_18

    .line 539
    :cond_5
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " enable n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    :cond_6
    if-eqz v6, :cond_19

    const-string v9, "OK"

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_19

    .line 545
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$1900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    new-instance v10, Landroid/net/wifi/p2p/WfdInfo;

    invoke-direct {v10, v8}, Landroid/net/wifi/p2p/WfdInfo;-><init>(Landroid/net/wifi/p2p/WfdInfo;)V

    iput-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WfdInfo;

    .line 546
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2203c

    const/4 v11, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    .line 547
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 498
    .end local v2           #cmdArray:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #ret:Ljava/lang/String;
    :cond_7
    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_8

    const-string/jumbo v9, "primary_sink"

    goto/16 :goto_3

    :cond_8
    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_9

    const-string/jumbo v9, "secondary_sink"

    goto/16 :goto_3

    :cond_9
    iget v9, v8, Landroid/net/wifi/p2p/WfdInfo;->deviceType:I

    const/4 v12, 0x3

    if-ne v9, v12, :cond_a

    const-string/jumbo v9, "source_primary_sink"

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v9, "invalid"

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v9, "n"

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v9, "n"

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v9, "n"

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v9, "n"

    goto/16 :goto_7

    :cond_f
    const-string/jumbo v9, "p2p"

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v9, "n"

    goto/16 :goto_9

    :cond_11
    const-string/jumbo v9, "n"

    goto/16 :goto_a

    :cond_12
    const-string/jumbo v9, "n"

    goto/16 :goto_b

    :cond_13
    const-string/jumbo v9, "n"

    goto/16 :goto_c

    :cond_14
    const-string/jumbo v9, "n"

    goto/16 :goto_d

    :cond_15
    const-string/jumbo v9, "n"

    goto/16 :goto_e

    :cond_16
    const-string/jumbo v9, "y"

    goto/16 :goto_f

    .line 535
    .restart local v2       #cmdArray:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #ret:Ljava/lang/String;
    :cond_17
    const-string v9, "FAIL."

    goto/16 :goto_11

    .line 533
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 551
    :cond_19
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2203d

    const/4 v11, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 557
    .end local v2           #cmdArray:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #ret:Ljava/lang/String;
    .end local v7           #strCmd:Ljava/lang/String;
    .end local v8           #wfdInfo:Landroid/net/wifi/p2p/WfdInfo;
    :sswitch_14
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22016

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 560
    :sswitch_15
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22018

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 563
    :sswitch_16
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "appPkgName"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, appPkgName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "dialogResetFlag"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 567
    .local v5, isReset:Z
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setDialogListenerApp(Landroid/os/Messenger;Ljava/lang/String;Z)Z
    invoke-static {v9, v10, v1, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 568
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22038

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 570
    :cond_1a
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22037

    const/4 v11, 0x4

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 595
    .end local v1           #appPkgName:Ljava/lang/String;
    .end local v5           #isReset:Z
    :sswitch_17
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$502(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 596
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected group creation, remove "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 597
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_1
        0x22001 -> :sswitch_4
        0x22004 -> :sswitch_5
        0x22007 -> :sswitch_7
        0x2200a -> :sswitch_8
        0x2200d -> :sswitch_9
        0x22010 -> :sswitch_a
        0x22013 -> :sswitch_12
        0x22015 -> :sswitch_14
        0x22017 -> :sswitch_15
        0x2201c -> :sswitch_b
        0x2201f -> :sswitch_c
        0x22022 -> :sswitch_d
        0x22025 -> :sswitch_e
        0x22028 -> :sswitch_f
        0x2202b -> :sswitch_10
        0x2202e -> :sswitch_6
        0x22033 -> :sswitch_11
        0x22036 -> :sswitch_16
        0x2203b -> :sswitch_13
        0x23001 -> :sswitch_1
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_1
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_1
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_1
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_1
        0x24015 -> :sswitch_1
        0x24016 -> :sswitch_1
        0x2401c -> :sswitch_1
        0x2401d -> :sswitch_17
        0x2401e -> :sswitch_1
        0x24020 -> :sswitch_1
        0x24025 -> :sswitch_1
        0x24026 -> :sswitch_1
    .end sparse-switch
.end method
