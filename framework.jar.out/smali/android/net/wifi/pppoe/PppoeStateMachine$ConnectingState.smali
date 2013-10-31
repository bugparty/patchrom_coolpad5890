.class Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTING"

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1000(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 328
    const-string v3, "PppoeStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 359
    const-string v2, "PppoeStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return v1

    .line 331
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$000(Landroid/net/wifi/pppoe/PppoeStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$800(Landroid/net/wifi/pppoe/PppoeStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, v3, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v3, v3, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiNative;->startPppoe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const-string v1, "PppoeStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start PPPoE failed,useranem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", password:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v4, v4, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1200(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v1, v2

    .line 362
    goto :goto_0

    .line 338
    :cond_1
    const-string v1, "PppoeStateMachine"

    const-string v3, "do not start PPPoE due to wifi disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const-string v3, "400"

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStartResultBroadcast(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1300(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1400(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 344
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-virtual {v1, v2}, Landroid/net/wifi/pppoe/PppoeInfo;->updatePppoeOnlineTime(Z)V

    .line 345
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #setter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z
    invoke-static {v1, v2}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1502(Landroid/net/wifi/pppoe/PppoeStateMachine;Z)Z

    .line 346
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1600(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1700(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 350
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, result:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStartResultBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1300(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V

    .line 353
    const-string v3, "401"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #setter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z
    invoke-static {v3, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1502(Landroid/net/wifi/pppoe/PppoeStateMachine;Z)Z

    .line 356
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1800(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x26004 -> :sswitch_0
        0x2601d -> :sswitch_1
        0x2601e -> :sswitch_2
    .end sparse-switch
.end method
