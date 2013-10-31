.class Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PppoeStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 278
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->getName()Ljava/lang/String;

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

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 292
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

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 281
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$600(Landroid/net/wifi/pppoe/PppoeStateMachine;Landroid/os/Message;)V

    .line 295
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :sswitch_1
    const-string v0, "PppoeStateMachine"

    const-string v1, "connected to PppoeService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const v2, 0x26004

    iget-object v3, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v3, v3, Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/pppoe/PppoeConfig;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/pppoe/PppoeStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 288
    :sswitch_2
    const-string v0, "PppoeStateMachine"

    const-string v1, "can\'t connect to PppoeService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$PppoeStartedState;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    #getter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mPppoeStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$100(Landroid/net/wifi/pppoe/PppoeStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/pppoe/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$700(Landroid/net/wifi/pppoe/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x26002 -> :sswitch_0
        0x2601a -> :sswitch_1
        0x2601b -> :sswitch_2
    .end sparse-switch
.end method
