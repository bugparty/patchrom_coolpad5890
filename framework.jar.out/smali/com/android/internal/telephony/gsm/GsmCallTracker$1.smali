.class Lcom/android/internal/telephony/gsm/GsmCallTracker$1;
.super Landroid/os/Handler;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;->makeQueueLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1535
    .local v0, completeMessage:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALL_QUEUE:handleMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1536
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1574
    .end local v0           #completeMessage:Ljava/lang/Object;
    :goto_0
    return-void

    .line 1538
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 1567
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->CALL_QUEUE_THREAD_LOCK:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const-string v5, "CALL_QUEUE:LOCK.wait()"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1569
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->CALL_QUEUE_THREAD_LOCK:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1570
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1571
    :catch_0
    move-exception v2

    .line 1572
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_1
    move-object v1, v0

    .line 1541
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;

    .line 1542
    .local v1, dialInfo:Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->address:Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->clirMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;->result:Landroid/os/Message;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1543
    const/4 v1, 0x0

    .line 1544
    goto :goto_1

    .line 1546
    .end local v1           #dialInfo:Lcom/android/internal/telephony/gsm/GsmCallTracker$DialInfo;
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_1

    .line 1549
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1552
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    goto :goto_1

    .line 1555
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    goto :goto_1

    .line 1558
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->hold(Landroid/os/Message;)V

    goto :goto_1

    .line 1561
    .restart local v0       #completeMessage:Ljava/lang/Object;
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Landroid/os/Message;

    .end local v0           #completeMessage:Ljava/lang/Object;
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->hangupAll(Landroid/os/Message;)V

    goto :goto_0

    .line 1536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method
