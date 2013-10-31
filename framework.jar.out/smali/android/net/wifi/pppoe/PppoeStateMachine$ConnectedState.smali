.class Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 369
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_DISCONNECTED"

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->sendPppoeStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1000(Landroid/net/wifi/pppoe/PppoeStateMachine;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 374
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 381
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return v0

    .line 377
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeInfo:Landroid/net/wifi/pppoe/PppoeInfo;

    invoke-virtual {v1, v0}, Landroid/net/wifi/pppoe/PppoeInfo;->updatePppoeOnlineTime(Z)V

    .line 378
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$ConnectedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1900(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x26005
        :pswitch_0
    .end packed-switch
.end method
