.class Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;
.super Ljava/lang/Object;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothMasObexConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;
    }
.end annotation


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mMapServer:Lcom/android/bluetooth/map/BluetoothMasObexServer;

.field private mMasId:I

.field private mPortNum:I

.field private mServerSession:Ljavax/btobex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mSupportedMessageTypes:I

.field mWaitingForConfirmation:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;III)V
    .locals 1
    .parameter
    .parameter "supportedMessageTypes"
    .parameter "masId"
    .parameter "portNumber"

    .prologue
    const/4 v0, 0x0

    .line 638
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 627
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    .line 628
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 629
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSession:Ljavax/btobex/ServerSession;

    .line 630
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 631
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMasObexServer;

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWaitingForConfirmation:Z

    .line 639
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    .line 640
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMasId:I

    .line 641
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mPortNum:I

    .line 642
    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startRfcommSocketListener(Lcom/android/bluetooth/map/BluetoothMns;)V

    return-void
.end method

.method private final closeSocket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 709
    :cond_0
    return-void
.end method

.method private final initSocket()Z
    .locals 7

    .prologue
    .line 662
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 663
    const-string v4, "BluetoothMasService"

    const-string v5, "Map Service initSocket"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    const/4 v3, 0x0

    .line 666
    .local v3, initSocketOK:Z
    const/16 v0, 0xa

    .line 669
    .local v0, CREATE_RETRY_TIME:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z

    if-nez v4, :cond_2

    .line 671
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mPortNum:I

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    const/4 v3, 0x1

    .line 678
    :goto_1
    if-nez v3, :cond_2

    .line 679
    monitor-enter p0

    .line 681
    :try_start_1
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v4, :cond_1

    const-string v4, "BluetoothMasService"

    const-string v5, "wait 3 seconds"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BluetoothMasService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error create RfcommServerSocket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v3, 0x0

    goto :goto_1

    .line 683
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 684
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "BluetoothMasService"

    const-string v5, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mInterrupted:Z

    goto :goto_2

    .line 687
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 693
    :cond_2
    if-eqz v3, :cond_4

    .line 694
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v4, :cond_3

    .line 695
    const-string v4, "BluetoothMasService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Succeed to create listening socket on channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mPortNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_3
    :goto_3
    return v3

    .line 698
    :cond_4
    const-string v4, "BluetoothMasService"

    const-string v5, "Error to create listening socket after 10 try"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private final startObexServerSession(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 8
    .parameter "device"
    .parameter "mnsClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 751
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 752
    const-string v2, "BluetoothMasService"

    const-string v3, "Map Service startObexServerSession "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMasService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 757
    .local v6, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingObexMapTransaction"

    invoke-virtual {v6, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 759
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 761
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_3

    .line 762
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothMasService"

    const-string v3, "Acquire partial wake lock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 765
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 767
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 768
    .local v0, appIf:Lcom/android/bluetooth/map/IBluetoothMasApp;
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    and-int/lit8 v2, v2, -0xf

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    and-int/lit8 v2, v2, 0x6

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 772
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;

    .end local v0           #appIf:Lcom/android/bluetooth/map/IBluetoothMasApp;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMasId:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V

    .line 781
    .restart local v0       #appIf:Lcom/android/bluetooth/map/IBluetoothMasApp;
    :cond_4
    :goto_0
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMasObexServer;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/android/bluetooth/map/BluetoothMasObexServer;-><init>(Landroid/os/Handler;Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Lcom/android/bluetooth/map/IBluetoothMasApp;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMasObexServer;

    .line 783
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1100(Lcom/android/bluetooth/map/BluetoothMasService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 784
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;-><init>(Landroid/os/Handler;)V

    #setter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1202(Lcom/android/bluetooth/map/BluetoothMasService;Lcom/android/bluetooth/map/BluetoothMapAuthenticator;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 785
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1200(Lcom/android/bluetooth/map/BluetoothMasService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setChallenged(Z)V

    .line 786
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1200(Lcom/android/bluetooth/map/BluetoothMasService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setCancelled(Z)V

    .line 787
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v7, v2}, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 790
    .local v7, transport:Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    new-instance v2, Ljavax/btobex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMasObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1200(Lcom/android/bluetooth/map/BluetoothMasService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v4

    invoke-direct {v2, v7, v3, v4}, Ljavax/btobex/ServerSession;-><init>(Ljavax/btobex/ObexTransport;Ljavax/btobex/ServerRequestHandler;Ljavax/btobex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSession:Ljavax/btobex/ServerSession;

    .line 792
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_5

    const-string v2, "BluetoothMasService"

    const-string v3, "startObexServerSession() success!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_5
    return-void

    .line 774
    .end local v7           #transport:Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    and-int/lit8 v2, v2, -0x2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mSupportedMessageTypes:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 777
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasAppEmail;

    .end local v0           #appIf:Lcom/android/bluetooth/map/IBluetoothMasApp;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMasService;->access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMasId:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMasAppEmail;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V

    .restart local v0       #appIf:Lcom/android/bluetooth/map/IBluetoothMasApp;
    goto :goto_0

    .line 787
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startRfcommSocketListener(Lcom/android/bluetooth/map/BluetoothMns;)V
    .locals 3
    .parameter "mnsClient"

    .prologue
    .line 645
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_2

    .line 649
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->initSocket()Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #calls: Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService;->access$200(Lcom/android/bluetooth/map/BluetoothMasService;)V

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mMasId:I

    invoke-direct {v0, p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;Lcom/android/bluetooth/map/BluetoothMns;I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    .line 656
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapAcceptThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mPortNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->start()V

    goto :goto_0
.end method

.method private stopObexServerSession()V
    .locals 2

    .prologue
    .line 796
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service stopObexServerSession "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->closeConnection()V

    .line 802
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMasService;->access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->startRfcommSocketListener(Lcom/android/bluetooth/map/BluetoothMns;)V

    .line 805
    :cond_1
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 712
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasService"

    const-string v2, "Mas connection closing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 717
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasService"

    const-string v2, "Release full wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 719
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 725
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    if-eqz v1, :cond_3

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->shutdown()V

    .line 728
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_1
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSession:Ljavax/btobex/ServerSession;

    if-eqz v1, :cond_4

    .line 737
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v1}, Ljavax/btobex/ServerSession;->close()V

    .line 738
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mServerSession:Ljavax/btobex/ServerSession;

    .line 742
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->closeSocket()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    :goto_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string v1, "BluetoothMasService"

    const-string v2, "Mas connection closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_5
    return-void

    .line 721
    :cond_6
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread  close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 732
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection$SocketAcceptThread;

    throw v1

    .line 743
    :catch_1
    move-exception v0

    .line 744
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BluetoothMasService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
