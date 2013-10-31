.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# static fields
.field public static final SOCKET_TYPE_L2CAP:I = 0x1

.field public static final SOCKET_TYPE_RFCOMM:I = 0x0

.field public static final SOCKET_TYPE_TCP:I = 0x3


# instance fields
.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final host:Ljava/lang/String;

.field private isConnected:Z

.field private mRetry:Z

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private timestamp:J

.field private final type:I


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;IIZ)V
    .locals 3
    .parameter
    .parameter "device"
    .parameter "type"
    .parameter "channel"
    .parameter "retry"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 737
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 738
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 721
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 723
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 739
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 740
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 741
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->type:I

    .line 742
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 743
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 744
    iput-boolean p5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 745
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter "host"
    .parameter "port"
    .parameter "dummy"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 726
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 727
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 721
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 723
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    .line 728
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 729
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->type:I

    .line 730
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 731
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 732
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 733
    return-void
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 888
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 893
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markConnectionFailed(Ljava/net/Socket;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 879
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 884
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "TCP socket close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    .line 817
    const/4 v0, 0x0

    .line 820
    .local v0, btOppTransportType:I
    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 821
    const/4 v0, 0x1

    .line 823
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureEl2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 842
    const-string v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BluetoothSocket connection attempt took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v4, v5, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .line 847
    .local v4, transport:Lcom/android/bluetooth/opp/BluetoothOppTransport;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 849
    const-string v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send transport message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 875
    .end local v4           #transport:Lcom/android/bluetooth/opp/BluetoothOppTransport;
    :goto_1
    return-void

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, e1:Ljava/io/IOException;
    const-string v5, "BtOppTransfer"

    const-string v6, "L2Cap socket create error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_1

    .line 831
    .end local v2           #e1:Ljava/io/IOException;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 832
    :catch_1
    move-exception v2

    .line 833
    .restart local v2       #e1:Ljava/io/IOException;
    const-string v5, "BtOppTransfer"

    const-string v6, "Rfcomm socket create error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_1

    .line 852
    .end local v2           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 853
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rfcomm socket connect exception, e.getMessage() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->mRetry:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid exchange"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Host is down"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Connection timed out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 864
    :cond_1
    const-string v5, "BtOppTransfer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection exception getMessage is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v5

    const/16 v6, 0xd

    iget v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    iget v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->type:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 867
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v5

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 869
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v7, 0x1105

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->removeChannel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 871
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto/16 :goto_1
.end method