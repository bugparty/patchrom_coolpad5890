.class Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/pppoe/PppoeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/pppoe/PppoeMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    .line 33
    const-string v0, "PppoeMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 37
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->loadPppoeService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2601a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 46
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$100(Landroid/net/wifi/pppoe/PppoeMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->waitForPppoeEvent()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, event:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 48
    const-string v2, "PppoeMonitor"

    const-string/jumbo v3, "read null event from pppoe_ctrl"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v0           #event:Ljava/lang/String;
    :cond_0
    const-string v2, "PppoeMonitor"

    const-string/jumbo v3, "load PppoeService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2601b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 42
    return-void

    .line 51
    .restart local v0       #event:Ljava/lang/String;
    :cond_1
    const-string v2, "PPPOE-CTRL-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    const-string v2, "PppoeMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error msg received(not starts with PPPOE-CTRL-):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_2
    const-string v2, "PppoeMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rcv event from pppoe_ctrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x2

    .line 58
    .local v1, eventNew:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2601c

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2601d

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 66
    :pswitch_2
    iget-object v2, p0, Landroid/net/wifi/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/wifi/pppoe/PppoeMonitor;

    #getter for: Landroid/net/wifi/pppoe/PppoeMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Landroid/net/wifi/pppoe/PppoeMonitor;->access$000(Landroid/net/wifi/pppoe/PppoeMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const v3, 0x2601e

    const-string v4, "401"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
