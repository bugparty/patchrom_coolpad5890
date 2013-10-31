.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/btobex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/btobex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 221
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 218
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 222
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    .line 224
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 225
    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 228
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "BtOpp ObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    return-void
.end method

.method private connect()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 310
    const-string v5, "BtOpp ObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create ClientSession with transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :try_start_0
    new-instance v5, Ljavax/btobex/ClientSession;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-direct {v5, v6}, Ljavax/btobex/ClientSession;-><init>(Ljavax/btobex/ObexTransport;)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    .line 313
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 314
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v5}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getMaxPacketSize()I

    move-result v3

    .line 315
    .local v3, mps:I
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    .line 316
    .local v4, oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    const/16 v5, 0x2000

    if-le v3, v5, :cond_1

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->isScoConnected:Z

    if-eqz v5, :cond_1

    .line 319
    :cond_0
    const/16 v3, 0x2000

    .line 320
    const-string v5, "BtOpp ObexClient"

    const-string v6, "Reducing Obex MTU to 8k as A2DP or SCO in progress"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v5, v3}, Ljavax/btobex/ClientSession;->setMaxPacketSize(I)V

    .line 323
    const-string v5, "BtOpp ObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting ClientSession mps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v3           #mps:I
    .end local v4           #oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;
    :goto_0
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v5, :cond_2

    .line 328
    iput-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 329
    new-instance v2, Ljavax/btobex/HeaderSet;

    invoke-direct {v2}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 330
    .local v2, hs:Ljavax/btobex/HeaderSet;
    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v6, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 332
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v5, v2}, Ljavax/btobex/ClientSession;->connect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 335
    const-string v5, "BtOpp ObexClient"

    const-string v6, "OBEX session created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :cond_2
    :goto_1
    monitor-enter p0

    .line 342
    :try_start_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v6, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 343
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    return-void

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "BtOpp ObexClient"

    const-string v6, "OBEX session create error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/btobex/HeaderSet;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 337
    :catch_1
    move-exception v0

    .line 338
    .local v0, e:Ljava/io/IOException;
    const-string v5, "BtOpp ObexClient"

    const-string v6, "OBEX session connect error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/btobex/HeaderSet;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/btobex/ClientSession;->disconnect(Ljavax/btobex/HeaderSet;)Ljavax/btobex/HeaderSet;

    .line 286
    :cond_0
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    if-eqz v1, :cond_1

    .line 292
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    invoke-virtual {v1}, Ljavax/btobex/ClientSession;->close()V

    .line 294
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    if-eqz v1, :cond_2

    .line 301
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 307
    :cond_2
    :goto_2
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 297
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 303
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 6

    .prologue
    .line 348
    const/16 v1, 0xc8

    .line 351
    .local v1, status:I
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v2, :cond_0

    .line 353
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v1, 0x1ea

    .line 356
    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v2, :cond_1

    .line 360
    const/16 v1, 0x1f1

    .line 362
    :cond_1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    .line 364
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v1

    .line 370
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 376
    :goto_2
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-wide v4, v4, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 377
    const-string v2, "BtOpp ObexClient"

    const-string v3, "come a 0 kb file !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v1, 0xc8

    .line 382
    :cond_2
    return-void

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v1, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 372
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v2, v3, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 787
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v0, 0x1f0

    .line 789
    .local v0, status:I
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 790
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 19

    .prologue
    .line 388
    const-string v15, "BtOpp ObexClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Client thread processShareInfo() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const v8, 0x1080088

    .line 391
    .local v8, icon:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const v16, 0x7f060062

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 392
    .local v11, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 393
    .local v13, when:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 394
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const v16, 0x7f060063

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const v16, 0x7f060064

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, contentText:Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10, v8, v11, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 399
    .local v10, n:Landroid/app/Notification;
    new-instance v9, Landroid/content/Intent;

    const-string v15, "android.btopp.intent.action.LIST"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v9, intent:Landroid/content/Intent;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v15, v9, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 401
    .local v2, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v10, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 402
    const-string v15, "notification"

    invoke-virtual {v6, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    check-cast v15, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v15 .. v18}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v7

    .line 406
    .local v7, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v15, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-nez v15, :cond_0

    .line 407
    const-string v15, "BtOpp ObexClient"

    const-string v16, "BluetoothOppSendFileInfo get invalid file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v16, v0

    iget v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 428
    :goto_0
    const-string v15, "notification"

    invoke-virtual {v6, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    check-cast v15, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/NotificationManager;->cancel(I)V

    .line 429
    return-object v7

    .line 412
    :cond_0
    const-string v15, "BtOpp ObexClient"

    const-string v16, "Generate BluetoothOppSendFileInfo:"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v15, "BtOpp ObexClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "filename  :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v15, "BtOpp ObexClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "length    :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v15, "BtOpp ObexClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mimetype  :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v12, updateValues:Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 421
    .local v5, contentUri:Landroid/net/Uri;
    const-string v15, "hint"

    iget-object v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v15, "total_bytes"

    iget-wide v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v15, "mimetype"

    iget-object v0, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v5, v12, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 44
    .parameter "fileInfo"

    .prologue
    .line 433
    const/16 v17, 0x0

    .line 434
    .local v17, error:Z
    const/16 v20, 0x0

    .line 435
    .local v20, isHandleExcetion:Z
    const/16 v32, -0x1

    .line 436
    .local v32, responseCode:I
    const/16 v35, 0xc8

    .line 437
    .local v35, status:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 439
    .local v5, contentUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 441
    .local v2, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    const-wide/16 v6, 0x0

    .line 442
    .local v6, position:J
    new-instance v30, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v30 .. v30}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 444
    .local v30, reply:Ljavax/btobex/HeaderSet;
    new-instance v31, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v31 .. v31}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 445
    .local v31, request:Ljavax/btobex/HeaderSet;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 446
    const/16 v3, 0x42

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 448
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/btobex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v40, 0xc0

    move/from16 v0, v40

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 452
    const/16 v3, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v4, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isSrmCapable()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljavax/btobex/ObexHelper;->setLocalSrmCapability(Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    invoke-virtual {v3}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 460
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Enable SRM for first PUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 462
    const/16 v3, 0x97

    sget-object v4, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 467
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    .line 469
    const/16 v26, 0x0

    .line 470
    .local v26, putOperation:Ljavax/btobex/ClientOperation;
    const/16 v23, 0x0

    .line 471
    .local v23, outputStream:Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 473
    .local v19, inputStream:Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 474
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 475
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :try_start_2
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "put headerset for "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljavax/btobex/ClientSession;->put(Ljavax/btobex/HeaderSet;)Ljavax/btobex/Operation;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/btobex/ClientOperation;

    move-object/from16 v26, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    .line 486
    :goto_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    .line 487
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 488
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    if-nez v17, :cond_3

    .line 495
    :try_start_5
    const-string v3, "bt.opp.amp_move_threshold"

    const v4, 0x61a80

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 497
    .local v10, ampThresh:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isAmpCapable()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    int-to-long v0, v10

    move-wide/from16 v40, v0

    cmp-long v3, v3, v40

    if-lez v3, :cond_2

    .line 500
    const-string v3, "debug.bt.opp.ms_pre_amp_move"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 501
    .local v25, preWait:I
    if-ltz v25, :cond_0

    .line 502
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DEBUG: delaying before AMP move: "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    .line 504
    move/from16 v0, v25

    int-to-long v3, v0

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    .line 511
    :cond_0
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->setDesiredAmpPolicy(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 513
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Unable to set AMP policy, using default (BR/EDR req)."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    const-string v3, "debug.bt.opp.ms_post_amp_move"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 519
    .local v24, postWait:I
    if-ltz v24, :cond_2

    .line 520
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DEBUG: delaying after AMP move: "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    .line 522
    move/from16 v0, v24

    int-to-long v3, v0

    :try_start_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    .line 531
    .end local v24           #postWait:I
    .end local v25           #preWait:I
    :cond_2
    :goto_3
    :try_start_9
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "openOutputStream "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 533
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v19

    .line 541
    .end local v10           #ampThresh:I
    :cond_3
    :goto_4
    if-nez v17, :cond_4

    .line 542
    :try_start_a
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v39, updateValues:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v3, "status"

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    .end local v39           #updateValues:Landroid/content/ContentValues;
    :cond_4
    if-nez v17, :cond_26

    .line 549
    const/16 v27, 0x0

    .line 550
    .local v27, readLength:I
    const-wide/16 v28, 0x0

    .line 551
    .local v28, readbytesleft:J
    const/16 v21, 0x0

    .line 552
    .local v21, okToProceed:Z
    const-wide/16 v36, 0x0

    .line 553
    .local v36, timestamp:J
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getMaxPacketSize()I

    move-result v22

    .line 554
    .local v22, outputBufferSize:I
    move/from16 v0, v22

    new-array v13, v0, [B

    .line 555
    .local v13, buffer:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    const/16 v4, 0x4000

    invoke-direct {v8, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 557
    .local v8, a:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 559
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    sub-long v28, v3, v6

    .line 560
    move/from16 v0, v22

    int-to-long v3, v0

    cmp-long v3, v28, v3

    if-gez v3, :cond_5

    .line 561
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v22, v0

    .line 564
    :cond_5
    move/from16 v0, v22

    #calls: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v8, v13, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v27

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v4

    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v40, 0xc350

    move-wide/from16 v0, v40

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5

    .line 570
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 571
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 575
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v13, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 576
    move/from16 v0, v27

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 578
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1e

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 593
    :goto_5
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_5

    .line 594
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 595
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 597
    :try_start_f
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 599
    const/16 v3, 0x90

    move/from16 v0, v32

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa0

    move/from16 v0, v32

    if-ne v0, v3, :cond_21

    .line 601
    :cond_6
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Remote accept"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v30

    .line 604
    const/16 v3, 0x97

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Byte;

    .line 605
    .local v33, srm:Ljava/lang/Byte;
    sget-object v3, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v33

    if-ne v0, v3, :cond_20

    .line 606
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Enabled by Server response"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 608
    const/16 v3, 0x98

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Byte;

    .line 609
    .local v34, srmp:Ljava/lang/Byte;
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "SRMP header (CONTINUE or OK): "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v3, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    move-object/from16 v0, v34

    if-ne v0, v3, :cond_1f

    .line 611
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRMP status: WAIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    .line 622
    .end local v34           #srmp:Ljava/lang/Byte;
    :goto_6
    const/16 v21, 0x1

    .line 623
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .restart local v39       #updateValues:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 631
    .end local v33           #srm:Ljava/lang/Byte;
    .end local v39           #updateValues:Landroid/content/ContentValues;
    :cond_7
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_5

    move-result-wide v11

    .local v11, beginTime:J
    move-object/from16 v38, v2

    .line 632
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v38, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v21, :cond_24

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_24

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 636
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    sub-long v28, v3, v6

    .line 637
    move/from16 v0, v22

    int-to-long v3, v0

    cmp-long v3, v28, v3

    if-gez v3, :cond_8

    .line 638
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v22, v0

    .line 641
    :cond_8
    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v13, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v27

    .line 642
    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v13, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 645
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 646
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Response code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 649
    .local v9, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/16 v3, 0x90

    move/from16 v0, v32

    if-eq v0, v3, :cond_22

    const/16 v3, 0xa0

    move/from16 v0, v32

    if-eq v0, v3, :cond_22

    .line 653
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_9
    move-object/from16 v38, v2

    .line 672
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto :goto_8

    .line 464
    .end local v8           #a:Ljava/io/BufferedInputStream;
    .end local v9           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v11           #beginTime:J
    .end local v13           #buffer:[B
    .end local v19           #inputStream:Ljava/io/InputStream;
    .end local v21           #okToProceed:Z
    .end local v22           #outputBufferSize:I
    .end local v23           #outputStream:Ljava/io/OutputStream;
    .end local v26           #putOperation:Ljavax/btobex/ClientOperation;
    .end local v27           #readLength:I
    .end local v28           #readbytesleft:J
    .end local v36           #timestamp:J
    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_b
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Disable SRM for first PUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    goto/16 :goto_0

    .line 475
    .restart local v19       #inputStream:Ljava/io/InputStream;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    .restart local v26       #putOperation:Ljavax/btobex/ClientOperation;
    :catchall_0
    move-exception v3

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_5

    .line 713
    :catch_0
    move-exception v14

    .line 714
    .local v14, e:Ljava/io/IOException;
    :goto_a
    :try_start_13
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 716
    const/16 v20, 0x1

    .line 728
    if-eqz v2, :cond_c

    .line 729
    :try_start_14
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 730
    const/4 v2, 0x0

    .line 733
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 734
    if-nez v17, :cond_d

    .line 735
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 736
    const/4 v3, -0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_32

    .line 737
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Get response code "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v3, 0xa0

    move/from16 v0, v32

    if-eq v0, v3, :cond_d

    .line 739
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v40, 0x0

    cmp-long v3, v3, v40

    if-nez v3, :cond_33

    const/16 v3, 0xcb

    move/from16 v0, v32

    if-ne v0, v3, :cond_33

    .line 742
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 744
    const/16 v35, 0x193

    .line 762
    :cond_d
    :goto_b
    if-nez v20, :cond_e

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 765
    :cond_e
    if-eqz v19, :cond_f

    .line 766
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 768
    :cond_f
    if-eqz v26, :cond_10

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 783
    .end local v14           #e:Ljava/io/IOException;
    :cond_10
    :goto_c
    return v35

    .line 479
    :catch_1
    move-exception v14

    .line 480
    .restart local v14       #e:Ljava/io/IOException;
    const/16 v35, 0x1f0

    .line 481
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 483
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when put HeaderSet "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_5

    .line 484
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 488
    .end local v14           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :try_start_17
    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_5

    .line 717
    :catch_2
    move-exception v14

    .line 718
    .local v14, e:Ljava/lang/NullPointerException;
    :goto_d
    :try_start_18
    const-string v3, "BtOpp ObexClient"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 720
    const/16 v20, 0x1

    .line 728
    if-eqz v2, :cond_11

    .line 729
    :try_start_19
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 730
    const/4 v2, 0x0

    .line 733
    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 734
    if-nez v17, :cond_12

    .line 735
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 736
    const/4 v3, -0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_36

    .line 737
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Get response code "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v3, 0xa0

    move/from16 v0, v32

    if-eq v0, v3, :cond_12

    .line 739
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v40, 0x0

    cmp-long v3, v3, v40

    if-nez v3, :cond_37

    const/16 v3, 0xcb

    move/from16 v0, v32

    if-ne v0, v3, :cond_37

    .line 742
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 744
    const/16 v35, 0x193

    .line 762
    :cond_12
    :goto_e
    if-nez v20, :cond_13

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 765
    :cond_13
    if-eqz v19, :cond_14

    .line 766
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 768
    :cond_14
    if-eqz v26, :cond_10

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3

    goto/16 :goto_c

    .line 771
    :catch_3
    move-exception v14

    .line 772
    .local v14, e:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_10

    .line 778
    const/16 v35, 0x193

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    :goto_f
    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_c

    .line 505
    .end local v14           #e:Ljava/io/IOException;
    .restart local v10       #ampThresh:I
    .restart local v25       #preWait:I
    :catch_4
    move-exception v14

    .line 506
    .local v14, e:Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted during pre-AMP move delay."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_5

    goto/16 :goto_2

    .line 721
    .end local v10           #ampThresh:I
    .end local v14           #e:Ljava/lang/InterruptedException;
    .end local v25           #preWait:I
    :catch_5
    move-exception v14

    .line 722
    .local v14, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_10
    :try_start_1b
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IndexOutOfBoundsException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    invoke-virtual {v14}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 724
    const/16 v20, 0x1

    .line 728
    if-eqz v2, :cond_15

    .line 729
    :try_start_1c
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 730
    const/4 v2, 0x0

    .line 733
    :cond_15
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 734
    if-nez v17, :cond_16

    .line 735
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 736
    const/4 v3, -0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_3a

    .line 737
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Get response code "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v3, 0xa0

    move/from16 v0, v32

    if-eq v0, v3, :cond_16

    .line 739
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v40, 0x0

    cmp-long v3, v3, v40

    if-nez v3, :cond_3b

    const/16 v3, 0xcb

    move/from16 v0, v32

    if-ne v0, v3, :cond_3b

    .line 742
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 744
    const/16 v35, 0x193

    .line 762
    :cond_16
    :goto_11
    if-nez v20, :cond_17

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 765
    :cond_17
    if-eqz v19, :cond_18

    .line 766
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 768
    :cond_18
    if-eqz v26, :cond_10

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_6

    goto/16 :goto_c

    .line 771
    :catch_6
    move-exception v14

    .line 772
    .local v14, e:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_10

    .line 778
    const/16 v35, 0x193

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_f

    .line 523
    .end local v14           #e:Ljava/io/IOException;
    .restart local v10       #ampThresh:I
    .restart local v24       #postWait:I
    .restart local v25       #preWait:I
    :catch_7
    move-exception v14

    .line 524
    .local v14, e:Ljava/lang/InterruptedException;
    :try_start_1d
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted during post-AMP move delay."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_3

    .line 726
    .end local v10           #ampThresh:I
    .end local v14           #e:Ljava/lang/InterruptedException;
    .end local v24           #postWait:I
    .end local v25           #preWait:I
    :catchall_2
    move-exception v3

    .line 728
    :goto_12
    if-eqz v2, :cond_19

    .line 729
    :try_start_1e
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 730
    const/4 v2, 0x0

    .line 733
    :cond_19
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 734
    if-nez v17, :cond_1a

    .line 735
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 736
    const/4 v4, -0x1

    move/from16 v0, v32

    if-eq v0, v4, :cond_2e

    .line 737
    const-string v4, "BtOpp ObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Get response code "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v4, 0xa0

    move/from16 v0, v32

    if-eq v0, v4, :cond_1a

    .line 739
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v4, v40, v42

    if-nez v4, :cond_2f

    const/16 v4, 0xcb

    move/from16 v0, v32

    if-ne v0, v4, :cond_2f

    .line 742
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 744
    const/16 v35, 0x193

    .line 762
    :cond_1a
    :goto_13
    if-nez v20, :cond_1b

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 765
    :cond_1b
    if-eqz v19, :cond_1c

    .line 766
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 768
    :cond_1c
    if-eqz v26, :cond_1d

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_c

    .line 726
    :cond_1d
    :goto_14
    throw v3

    .line 534
    .restart local v10       #ampThresh:I
    :catch_8
    move-exception v14

    .line 535
    .local v14, e:Ljava/io/IOException;
    const/16 v35, 0x1f0

    .line 536
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 537
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when openOutputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_5

    .line 538
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 571
    .end local v10           #ampThresh:I
    .end local v14           #e:Ljava/io/IOException;
    .restart local v8       #a:Ljava/io/BufferedInputStream;
    .restart local v13       #buffer:[B
    .restart local v21       #okToProceed:Z
    .restart local v22       #outputBufferSize:I
    .restart local v27       #readLength:I
    .restart local v28       #readbytesleft:J
    .restart local v36       #timestamp:J
    :catchall_3
    move-exception v3

    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :try_start_21
    throw v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_5

    .line 583
    :cond_1e
    :try_start_22
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_5

    goto/16 :goto_5

    .line 586
    :catch_9
    move-exception v14

    .line 587
    .restart local v14       #e:Ljava/io/IOException;
    const/16 v35, 0x1f0

    .line 588
    :try_start_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 590
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when sending file "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_5

    .line 591
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 595
    .end local v14           #e:Ljava/io/IOException;
    :catchall_4
    move-exception v3

    :try_start_24
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :try_start_25
    throw v3

    .line 614
    .restart local v33       #srm:Ljava/lang/Byte;
    .restart local v34       #srmp:Ljava/lang/Byte;
    :cond_1f
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRMP status: NONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_6

    .line 618
    .end local v34           #srmp:Ljava/lang/Byte;
    :cond_20
    const-string v3, "BtOpp ObexClient"

    const-string v4, "SRM status: Disabled by Server response"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/btobex/ClientSession;

    iget-object v3, v3, Ljavax/btobex/ClientSession;->mSrmClient:Ljavax/btobex/ObexHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_6

    .line 628
    .end local v33           #srm:Ljava/lang/Byte;
    :cond_21
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Remote reject, Response code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_5

    goto/16 :goto_7

    .line 656
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v9       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v11       #beginTime:J
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_22
    move/from16 v0, v27

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 658
    :try_start_26
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Sending file position = "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " readLength "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " bytes took "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v36

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " ms"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-nez v38, :cond_23

    .line 664
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_26} :catch_e

    .line 666
    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_27
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->start()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_5

    goto/16 :goto_9

    .line 668
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_23
    :try_start_28
    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->updateProgress(J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_9

    .line 675
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v9           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_24
    if-eqz v38, :cond_42

    .line 677
    :try_start_29
    invoke-virtual/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 678
    invoke-virtual/range {v38 .. v38}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_29 .. :try_end_29} :catch_e

    .line 679
    const/4 v2, 0x0

    .line 681
    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_2a
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 682
    .restart local v39       #updateValues:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_11
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_5

    .line 690
    .end local v39           #updateValues:Landroid/content/ContentValues;
    :goto_15
    const/16 v3, 0xc3

    move/from16 v0, v32

    if-eq v0, v3, :cond_25

    const/16 v3, 0xc6

    move/from16 v0, v32

    if-ne v0, v3, :cond_2b

    .line 692
    :cond_25
    :try_start_2b
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Remote reject file "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " length "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_2b} :catch_5

    .line 694
    const/16 v35, 0x193

    .line 728
    .end local v8           #a:Ljava/io/BufferedInputStream;
    .end local v11           #beginTime:J
    .end local v13           #buffer:[B
    .end local v21           #okToProceed:Z
    .end local v22           #outputBufferSize:I
    .end local v27           #readLength:I
    .end local v28           #readbytesleft:J
    .end local v36           #timestamp:J
    :cond_26
    :goto_16
    if-eqz v2, :cond_27

    .line 729
    :try_start_2c
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 730
    const/4 v2, 0x0

    .line 733
    :cond_27
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 734
    if-nez v17, :cond_28

    .line 735
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->getResponseCode()I

    move-result v32

    .line 736
    const/4 v3, -0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_3e

    .line 737
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Get response code "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v3, 0xa0

    move/from16 v0, v32

    if-eq v0, v3, :cond_28

    .line 739
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v40, 0x0

    cmp-long v3, v3, v40

    if-nez v3, :cond_3f

    const/16 v3, 0xcb

    move/from16 v0, v32

    if-ne v0, v3, :cond_3f

    .line 742
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 744
    const/16 v35, 0x193

    .line 762
    :cond_28
    :goto_17
    if-nez v20, :cond_29

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v35

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 765
    :cond_29
    if-eqz v19, :cond_2a

    .line 766
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 768
    :cond_2a
    if-eqz v26, :cond_10

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_a

    goto/16 :goto_c

    .line 771
    :catch_a
    move-exception v14

    .line 772
    .restart local v14       #e:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_10

    .line 778
    const/16 v35, 0x193

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_f

    .line 685
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v14           #e:Ljava/io/IOException;
    .restart local v8       #a:Ljava/io/BufferedInputStream;
    .restart local v11       #beginTime:J
    .restart local v13       #buffer:[B
    .restart local v21       #okToProceed:Z
    .restart local v22       #outputBufferSize:I
    .restart local v27       #readLength:I
    .restart local v28       #readbytesleft:J
    .restart local v36       #timestamp:J
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_b
    move-exception v18

    move-object/from16 v2, v38

    .line 686
    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .local v18, ie:Ljava/lang/InterruptedException;
    :goto_18
    :try_start_2d
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Interrupted waiting for uiUpdateThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 695
    .end local v18           #ie:Ljava/lang/InterruptedException;
    :cond_2b
    const/16 v3, 0xcf

    move/from16 v0, v32

    if-ne v0, v3, :cond_2c

    .line 696
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Remote reject file type "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/16 v35, 0x196

    goto/16 :goto_16

    .line 698
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_2d

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_2d

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 700
    .local v15, endTime:J
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "SendFile finished sending file "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " length "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, "Bytes in "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v40, v15, v11

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, "ms"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_16

    .line 705
    .end local v15           #endTime:J
    :cond_2d
    const/16 v17, 0x1

    .line 706
    const/16 v35, 0x1ea

    .line 707
    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ClientOperation;->abort()V

    .line 709
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "SendFile interrupted when send out file "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " at "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v40, " of "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_2d} :catch_5

    goto/16 :goto_16

    .line 771
    .end local v8           #a:Ljava/io/BufferedInputStream;
    .end local v11           #beginTime:J
    .end local v13           #buffer:[B
    .end local v21           #okToProceed:Z
    .end local v22           #outputBufferSize:I
    .end local v27           #readLength:I
    .end local v28           #readbytesleft:J
    .end local v36           #timestamp:J
    :catch_c
    move-exception v14

    .line 772
    .restart local v14       #e:Ljava/io/IOException;
    const-string v4, "BtOpp ObexClient"

    const-string v40, "IOException"

    move-object/from16 v0, v40

    invoke-static {v4, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const-string v4, "BtOpp ObexClient"

    const-string v40, "Error when closing stream after send"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v40, v0

    cmp-long v4, v6, v40

    if-eqz v4, :cond_1d

    .line 778
    const/16 v35, 0x193

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_14

    .line 759
    .end local v14           #e:Ljava/io/IOException;
    :cond_2e
    const/16 v35, 0x1f1

    goto/16 :goto_13

    .line 746
    :cond_2f
    :try_start_2e
    const-string v4, "BtOpp ObexClient"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Response error code is "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_c

    .line 747
    const/16 v35, 0x1ef

    .line 748
    const/16 v4, 0xcf

    move/from16 v0, v32

    if-ne v0, v4, :cond_30

    .line 749
    const/16 v35, 0x196

    .line 751
    :cond_30
    const/16 v4, 0xc3

    move/from16 v0, v32

    if-eq v0, v4, :cond_31

    const/16 v4, 0xc6

    move/from16 v0, v32

    if-ne v0, v4, :cond_1a

    .line 753
    :cond_31
    const/16 v35, 0x193

    goto/16 :goto_13

    .line 771
    .restart local v14       #e:Ljava/io/IOException;
    :catch_d
    move-exception v14

    .line 772
    const-string v3, "BtOpp ObexClient"

    const-string v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_10

    .line 778
    const/16 v35, 0x193

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_f

    .line 759
    :cond_32
    const/16 v35, 0x1f1

    goto/16 :goto_b

    .line 746
    :cond_33
    :try_start_2f
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Response error code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_d

    .line 747
    const/16 v35, 0x1ef

    .line 748
    const/16 v3, 0xcf

    move/from16 v0, v32

    if-ne v0, v3, :cond_34

    .line 749
    const/16 v35, 0x196

    .line 751
    :cond_34
    const/16 v3, 0xc3

    move/from16 v0, v32

    if-eq v0, v3, :cond_35

    const/16 v3, 0xc6

    move/from16 v0, v32

    if-ne v0, v3, :cond_d

    .line 753
    :cond_35
    const/16 v35, 0x193

    goto/16 :goto_b

    .line 759
    .local v14, e:Ljava/lang/NullPointerException;
    :cond_36
    const/16 v35, 0x1f1

    goto/16 :goto_e

    .line 746
    :cond_37
    :try_start_30
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Response error code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_3

    .line 747
    const/16 v35, 0x1ef

    .line 748
    const/16 v3, 0xcf

    move/from16 v0, v32

    if-ne v0, v3, :cond_38

    .line 749
    const/16 v35, 0x196

    .line 751
    :cond_38
    const/16 v3, 0xc3

    move/from16 v0, v32

    if-eq v0, v3, :cond_39

    const/16 v3, 0xc6

    move/from16 v0, v32

    if-ne v0, v3, :cond_12

    .line 753
    :cond_39
    const/16 v35, 0x193

    goto/16 :goto_e

    .line 759
    .local v14, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3a
    const/16 v35, 0x1f1

    goto/16 :goto_11

    .line 746
    :cond_3b
    :try_start_31
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Response error code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_6

    .line 747
    const/16 v35, 0x1ef

    .line 748
    const/16 v3, 0xcf

    move/from16 v0, v32

    if-ne v0, v3, :cond_3c

    .line 749
    const/16 v35, 0x196

    .line 751
    :cond_3c
    const/16 v3, 0xc3

    move/from16 v0, v32

    if-eq v0, v3, :cond_3d

    const/16 v3, 0xc6

    move/from16 v0, v32

    if-ne v0, v3, :cond_16

    .line 753
    :cond_3d
    const/16 v35, 0x193

    goto/16 :goto_11

    .line 759
    .end local v14           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3e
    const/16 v35, 0x1f1

    goto/16 :goto_17

    .line 746
    :cond_3f
    :try_start_32
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Response error code is "

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_a

    .line 747
    const/16 v35, 0x1ef

    .line 748
    const/16 v3, 0xcf

    move/from16 v0, v32

    if-ne v0, v3, :cond_40

    .line 749
    const/16 v35, 0x196

    .line 751
    :cond_40
    const/16 v3, 0xc3

    move/from16 v0, v32

    if-eq v0, v3, :cond_41

    const/16 v3, 0xc6

    move/from16 v0, v32

    if-ne v0, v3, :cond_28

    .line 753
    :cond_41
    const/16 v35, 0x193

    goto/16 :goto_17

    .line 726
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v8       #a:Ljava/io/BufferedInputStream;
    .restart local v11       #beginTime:J
    .restart local v13       #buffer:[B
    .restart local v21       #okToProceed:Z
    .restart local v22       #outputBufferSize:I
    .restart local v27       #readLength:I
    .restart local v28       #readbytesleft:J
    .restart local v36       #timestamp:J
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_5
    move-exception v3

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_12

    .line 721
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_e
    move-exception v14

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_10

    .line 717
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_f
    move-exception v14

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_d

    .line 713
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_10
    move-exception v14

    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_a

    .line 685
    :catch_11
    move-exception v18

    goto/16 :goto_18

    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v38       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_42
    move-object/from16 v2, v38

    .end local v38           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_15
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 235
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 795
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/btobex/ObexTransport;

    invoke-interface {v2}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 804
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 805
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 806
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 807
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 809
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 811
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 812
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 241
    const-string v2, "BtOpp ObexClient"

    const-string v3, "acquire partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 245
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect()V

    .line 254
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 259
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 262
    :catch_1
    move-exception v2

    goto :goto_1

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 269
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    const-string v2, "BtOpp ObexClient"

    const-string v3, "release partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 274
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 275
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void
.end method
