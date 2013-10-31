.class Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PppoeStoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 238
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 242
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->getName()Ljava/lang/String;

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

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 264
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

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 245
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$000(Landroid/net/wifi/pppoe/PppoeStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    const-string v0, "PppoeStateMachine"

    const-string v1, "dont start PPPoE due to wifi disabled "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 250
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/pppoe/PppoeConfig;

    iput-object v0, v1, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    .line 252
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v0, v0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v0, v0, Landroid/net/wifi/pppoe/PppoeConfig;->interf:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v0, v0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$300(Landroid/net/wifi/pppoe/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/pppoe/PppoeConfig;->interf:Ljava/lang/String;

    .line 255
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v0, v0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeMonitor:Landroid/net/wifi/pppoe/PppoeMonitor;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, v1, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/pppoe/PppoeMonitor;->startPppoeMonitor(Landroid/net/wifi/pppoe/PppoeConfig;)V

    .line 256
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$400(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$500(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 259
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v0, v0, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    invoke-virtual {v0}, Landroid/net/wifi/pppoe/PppoeConfig;->autoConnectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStoppedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const v1, 0x26004

    invoke-virtual {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x26002 -> :sswitch_0
        0x2600b -> :sswitch_1
    .end sparse-switch
.end method
