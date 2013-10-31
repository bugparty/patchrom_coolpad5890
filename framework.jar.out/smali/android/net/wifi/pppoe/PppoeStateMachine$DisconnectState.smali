.class Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 395
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 404
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mHaveConnectedSuccess:Z
    invoke-static {v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$1500(Landroid/net/wifi/pppoe/PppoeStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$800(Landroid/net/wifi/pppoe/PppoeStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeConfig;->username:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v2, v2, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v2, v2, Landroid/net/wifi/pppoe/PppoeConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->startPppoe(Ljava/lang/String;Ljava/lang/String;)Z

    .line 400
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$DisconnectState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$400(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$2000(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x26004
        :pswitch_0
    .end packed-switch
.end method
