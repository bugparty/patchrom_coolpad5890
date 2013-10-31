.class public Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
.super Ljavax/btobex/ServerRequestHandler;
.source "BluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final OPP_DEFAULT_vCARD_NAME:Ljava/lang/String; = "default.vcf"

.field private static final OPP_LOCAL_BUF_SIZE:I = 0x4000

.field private static final OPP_MIME_TYPE:Ljava/lang/String; = "text/x-vcard"

.field private static final OPP_SERVER_DIR_PATH:Ljava/lang/String; = "/data/data/com.android.bluetooth/oppserver"

.field private static final OPP_myProfile_NAME:Ljava/lang/String; = "myprofile.vcf"

.field private static final TAG:Ljava/lang/String; = "BtOppObexServer"

.field private static final V:Z = true

.field static mServerSessionIsUp:Z


# instance fields
.field private mAccepted:I

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterrupted:Z

.field private mLocalShareInfoId:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServerBlocking:Z

.field private mSession:Ljavax/btobex/ServerSession;

.field mTimeoutMsgSent:Z

.field private mTimestamp:J

.field mTransferInProgress:Z

.field private mTransport:Ljavax/btobex/ObexTransport;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/btobex/ObexTransport;)V
    .locals 4
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljavax/btobex/ServerRequestHandler;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 98
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 106
    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 108
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    .line 130
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 131
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "BtOppObexServer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    const-string v1, "BtOppObexServer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z
    .locals 5
    .parameter "out"
    .parameter "op"

    .prologue
    .line 994
    const/4 v1, 0x1

    .line 995
    .local v1, returnvalue:Z
    const-string v2, "BtOppObexServer"

    const-string v3, "closeoutStream +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p0, :cond_0

    .line 998
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1006
    :try_start_1
    invoke-interface {p1}, Ljavax/btobex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    :cond_1
    :goto_1
    const-string v2, "BtOppObexServer"

    const-string v3, "closeoutStream -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v1

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v1, 0x0

    goto :goto_0

    .line 1008
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1009
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 5

    .prologue
    .line 705
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processShareInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    .line 709
    .local v0, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    const-string v1, "BtOppObexServer"

    const-string v2, "Generate BluetoothOppReceiveFileInfo:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-object v0
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/btobex/Operation;)I
    .locals 28
    .parameter "fileInfo"
    .parameter "op"

    .prologue
    .line 573
    const-wide/16 v9, 0x0

    .line 574
    .local v9, beginTime:J
    const/16 v21, -0x1

    .line 575
    .local v21, status:I
    const/4 v11, 0x0

    .line 576
    .local v11, bos:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 578
    .local v2, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    const/16 v18, 0x0

    .line 579
    .local v18, is:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 581
    .local v16, error:Z
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/btobex/Operation;->openInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 588
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 590
    .local v5, contentUri:Landroid/net/Uri;
    if-nez v16, :cond_0

    .line 591
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v25, updateValues:Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 596
    .end local v25           #updateValues:Landroid/content/ContentValues;
    :cond_0
    const-wide/16 v6, 0x0

    .line 597
    .local v6, position:J
    if-nez v16, :cond_1

    .line 598
    new-instance v11, Ljava/io/BufferedOutputStream;

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    const/high16 v4, 0x1

    invoke-direct {v11, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 601
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    :cond_1
    if-nez v16, :cond_3

    .line 602
    invoke-interface/range {p2 .. p2}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v19

    .line 603
    .local v19, outputBufferSize:I
    move/from16 v0, v19

    new-array v8, v0, [B

    .line 604
    .local v8, b:[B
    const/16 v20, 0x0

    .line 605
    .local v20, readLength:I
    const-wide/16 v22, 0x0

    .line 607
    .local v22, timestamp:J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v9

    move-object/from16 v24, v2

    .line 608
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v24, uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 612
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v20

    .line 614
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 615
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receive file reached stream end at position"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 639
    :cond_2
    if-eqz v24, :cond_c

    .line 642
    :try_start_3
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 645
    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->join()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 646
    const/4 v2, 0x0

    .line 648
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_4
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 649
    .restart local v25       #updateValues:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 666
    .end local v25           #updateValues:Landroid/content/ContentValues;
    :goto_2
    if-eqz v2, :cond_3

    .line 668
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Finally Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 671
    :goto_3
    const/4 v2, 0x0

    .line 676
    .end local v8           #b:[B
    .end local v19           #outputBufferSize:I
    .end local v20           #readLength:I
    .end local v22           #timestamp:J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    if-eqz v3, :cond_a

    .line 677
    const-string v3, "BtOppObexServer"

    const-string v4, "receiving file interrupted by user."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/16 v21, 0x1ea

    .line 694
    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    .line 696
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 701
    :cond_5
    :goto_5
    return v21

    .line 582
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #position:J
    :catch_0
    move-exception v13

    .line 583
    .local v13, e1:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when openInputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/16 v21, 0x1f0

    .line 585
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 619
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #position:J
    .restart local v8       #b:[B
    .restart local v19       #outputBufferSize:I
    .restart local v20       #readLength:I
    .restart local v22       #timestamp:J
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_6
    const/4 v3, 0x0

    :try_start_6
    move/from16 v0, v20

    invoke-virtual {v11, v8, v3, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 620
    move/from16 v0, v20

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 623
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receive file position = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " readLength "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " bytes took "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " ms"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-nez v24, :cond_7

    .line 629
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 631
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_start_7
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Created"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->start()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v24, v2

    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_1

    .line 635
    :cond_7
    :try_start_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->updateProgress(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 656
    :catch_1
    move-exception v13

    move-object/from16 v2, v24

    .line 657
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v13       #e1:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when receiving file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v3, "Abort Received"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    .line 660
    const/16 v21, 0x1ea

    .line 664
    :goto_7
    const/16 v16, 0x1

    .line 666
    if-eqz v2, :cond_3

    .line 668
    const-string v3, "BtOppObexServer"

    const-string v4, "Worker for Updation : Finally Destroying"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    goto/16 :goto_3

    .line 652
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catch_2
    move-exception v17

    move-object/from16 v2, v24

    .line 653
    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .local v17, ie:Ljava/lang/InterruptedException;
    :goto_8
    :try_start_a
    const-string v3, "BtOppObexServer"

    const-string v4, "Interrupted waiting for uiUpdateThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 656
    .end local v17           #ie:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v13

    goto :goto_6

    .line 662
    .restart local v13       #e1:Ljava/io/IOException;
    :cond_8
    const/16 v21, 0x1f0

    goto :goto_7

    .line 666
    .end local v13           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_9
    if-eqz v2, :cond_9

    .line 668
    const-string v4, "BtOppObexServer"

    const-string v26, "Worker for Updation : Finally Destroying"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 671
    const/4 v2, 0x0

    .line 666
    :cond_9
    throw v3

    .line 680
    .end local v8           #b:[B
    .end local v19           #outputBufferSize:I
    .end local v20           #readLength:I
    .end local v22           #timestamp:J
    :cond_a
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_b

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 682
    .local v14, endTime:J
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Receiving file completed for "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " length "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " Bytes in "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v26, v14, v9

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, "ms"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/16 v21, 0xc8

    .line 686
    goto/16 :goto_4

    .line 687
    .end local v14           #endTime:J
    :cond_b
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Reading file failed at "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v26, " of "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    .line 689
    const/16 v21, 0x1eb

    goto/16 :goto_4

    .line 697
    :catch_4
    move-exception v12

    .line 698
    .local v12, e:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 666
    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #b:[B
    .restart local v19       #outputBufferSize:I
    .restart local v20       #readLength:I
    .restart local v22       #timestamp:J
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :catchall_1
    move-exception v3

    move-object/from16 v2, v24

    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_9

    .line 652
    :catch_5
    move-exception v17

    goto/16 :goto_8

    .end local v2           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v24       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    :cond_c
    move-object/from16 v2, v24

    .end local v24           #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    .restart local v2       #uiUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession$ContentResolverUpdateThread;
    goto/16 :goto_2
.end method

.method private declared-synchronized releaseWakeLocks()V
    .locals 1

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    :cond_1
    monitor-exit p0

    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 272
    const-string v0, "BtOppObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addShare for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 274
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    .line 275
    return-void
.end method

.method public getMyBusinessCard()Ljava/io/File;
    .locals 21

    .prologue
    .line 718
    const-string v1, "BtOppObexServer"

    const-string v3, " getMyBusinessCard()"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 720
    .local v2, myProfileUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 721
    .local v17, lookupUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 722
    .local v20, shareUri:Landroid/net/Uri;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My Profile Uri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "lookup"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 726
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 728
    .local v9, contactId:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 729
    .local v16, lookupKey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v9, v10, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 730
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My LookupUri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LookUpKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 732
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " My ShareUri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    .end local v9           #contactId:J
    .end local v16           #lookupKey:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 738
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v11, dir:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    const-string v3, "myprofile.vcf"

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v19, myCard:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    const-string v1, "BtOppObexServer"

    const-string v3, " Directory and File is alredy There, Delete it"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 743
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 745
    :cond_1
    if-eqz v20, :cond_5

    .line 746
    const/4 v14, 0x0

    .line 748
    .local v14, i:Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v7, v1, [B

    .line 750
    .local v7, buffer:[B
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 751
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 755
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 756
    const-string v1, "BtOppObexServer"

    const-string v3, " my Profile vcard not created"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 779
    .end local v7           #buffer:[B
    .end local v14           #i:Ljava/io/InputStream;
    .end local v19           #myCard:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v19

    .line 735
    .end local v11           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 753
    .restart local v7       #buffer:[B
    .restart local v11       #dir:Ljava/io/File;
    .restart local v14       #i:Ljava/io/InputStream;
    .restart local v19       #myCard:Ljava/io/File;
    :cond_3
    :try_start_2
    const-string v1, "BtOppObexServer"

    const-string v3, " ** Not able to Create DIR ***"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v12

    .line 774
    .local v12, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not able to read myVcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 760
    .end local v12           #e:Ljava/io/IOException;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    .line 764
    :goto_2
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 766
    .local v13, fos:Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v14, :cond_2

    .line 768
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 769
    .local v15, length:I
    const/4 v1, -0x1

    if-eq v15, v1, :cond_2

    .line 771
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 761
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #length:I
    :catch_1
    move-exception v12

    .line 762
    .local v12, e:Ljava/io/FileNotFoundException;
    const-string v1, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Not able to open URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 778
    .end local v7           #buffer:[B
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v14           #i:Ljava/io/InputStream;
    :cond_5
    new-instance v18, Ljava/io/File;

    const-string v1, "/data/data/com.android.bluetooth/oppserver"

    const-string v3, "default.vcf"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v18, mDefaultvCard:Ljava/io/File;
    move-object/from16 v19, v18

    .line 779
    goto :goto_1
.end method

.method public onAbort(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 2
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 260
    const-string v0, "BtOppObexServer"

    const-string v1, "onAbort()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    if-eqz v0, :cond_0

    .line 262
    const/16 v0, 0xa0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc6

    goto :goto_0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 979
    const-string v1, "BtOppObexServer"

    const-string v2, "release WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->releaseWakeLocks()V

    .line 982
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    .line 985
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 987
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 988
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 989
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 991
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)I
    .locals 6
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 945
    const-string v3, "BtOppObexServer"

    const-string v4, "onConnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {p1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/btobex/HeaderSet;)V

    .line 948
    const/16 v3, 0x46

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .line 949
    .local v2, uuid:[B
    const-string v3, "BtOppObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnect(): uuid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    if-eqz v2, :cond_0

    .line 951
    const/16 v3, 0xc6

    .line 958
    .end local v2           #uuid:[B
    :goto_0
    return v3

    .line 953
    :catch_0
    move-exception v1

    .line 954
    .local v1, e:Ljava/io/IOException;
    const-string v3, "BtOppObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v3, 0xd0

    goto :goto_0

    .line 957
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #uuid:[B
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    .line 958
    const/16 v3, 0xa0

    goto :goto_0
.end method

.method public onDisconnect(Ljavax/btobex/HeaderSet;Ljavax/btobex/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 963
    const-string v0, "BtOppObexServer"

    const-string v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z

    .line 965
    const/16 v0, 0xa0

    iput v0, p2, Ljavax/btobex/HeaderSet;->responseCode:I

    .line 966
    return-void
.end method

.method public onGet(Ljavax/btobex/Operation;)I
    .locals 26
    .parameter "op"

    .prologue
    .line 785
    const-string v22, "BtOppObexServer"

    const-string v23, "onGet() +"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v18, 0x0

    .line 788
    .local v18, request:Ljavax/btobex/HeaderSet;
    const-string v21, ""

    .line 789
    .local v21, type:Ljava/lang/String;
    const-string v13, ""

    .line 790
    .local v13, name:Ljava/lang/String;
    const/4 v15, 0x0

    .line 791
    .local v15, outputStream:Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 792
    .local v10, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 793
    .local v3, bis:Ljava/io/BufferedInputStream;
    const-wide/16 v6, 0x0

    .line 794
    .local v6, fileLength:J
    const-wide/16 v8, 0x0

    .line 797
    .local v8, fileReadPos:J
    const/4 v12, 0x0

    .line 798
    .local v12, myCard:Ljava/io/File;
    const-string v22, "ro.qualcomm.bluetooth.sndmyinfo"

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->getMyBusinessCard()Ljava/io/File;

    move-result-object v12

    .line 803
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getMaxPacketSize()I

    move-result v14

    .line 806
    .local v14, outputBufferSize:I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v18

    .line 807
    const/16 v22, 0x42

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 809
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/String;

    move-object v13, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    const-string v22, "text/x-vcard"

    invoke-static/range {v21 .. v22}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 816
    const/16 v22, 0xcf

    .line 939
    .end local v14           #outputBufferSize:I
    :cond_0
    :goto_1
    return v22

    .line 801
    :cond_1
    const/16 v22, 0xd1

    goto :goto_1

    .line 811
    .restart local v14       #outputBufferSize:I
    :catch_0
    move-exception v5

    .line 812
    .local v5, e:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onGet request headers "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v22, "BtOppObexServer"

    const-string v23, "request headers error"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v5           #e:Ljava/io/IOException;
    :cond_2
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "type = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    if-eqz v13, :cond_3

    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " name = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    .line 822
    :cond_4
    const-string v22, "BtOppObexServer"

    const-string v23, "Default Business Card Not Found ! "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v22, 0xc4

    goto :goto_1

    .line 827
    :cond_5
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v10           #fis:Ljava/io/FileInputStream;
    .local v11, fis:Ljava/io/FileInputStream;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v15

    .line 833
    if-eqz v11, :cond_7

    if-nez v15, :cond_7

    .line 835
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 837
    :goto_2
    const/16 v22, 0xd0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 829
    :catch_1
    move-exception v5

    .line 830
    .restart local v5       #e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OPP Pull Business Card : open stream Exception"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 831
    const/16 v22, 0xd0

    .line 833
    if-eqz v10, :cond_0

    if-nez v15, :cond_0

    .line 835
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 837
    .end local v5           #e:Ljava/io/IOException;
    :goto_4
    const/16 v22, 0xd0

    goto/16 :goto_1

    .line 833
    :cond_6
    throw v22

    .line 842
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :cond_7
    :try_start_6
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 843
    const-string v22, "BtOppObexServer"

    const-string v23, "Local Device SRM: Capable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v22, 0x97

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Byte;

    .line 846
    .local v19, srm:Ljava/lang/Byte;
    sget-object v22, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 847
    const-string v22, "BtOppObexServer"

    const-string v23, "SRM status: Enabled"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 849
    const/16 v22, 0x98

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    .line 850
    .local v20, srmp:Ljava/lang/Byte;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SRMP header (CONTINUE or OK): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v22, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 852
    const-string v22, "BtOppObexServer"

    const-string v23, "SRMP status: WAIT"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 874
    .end local v19           #srm:Ljava/lang/Byte;
    .end local v20           #srmp:Ljava/lang/Byte;
    :goto_5
    new-array v4, v14, [B

    .line 877
    .local v4, buffer:[B
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 878
    new-instance v17, Ljavax/btobex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/btobex/HeaderSet;-><init>()V

    .line 879
    .local v17, reply:Ljavax/btobex/HeaderSet;
    const/16 v22, 0x1

    const-string v23, "default.vcf"

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 880
    const/16 v22, 0x42

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 881
    const/16 v22, 0xc3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/btobex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 883
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    const/16 v22, 0x4000

    move/from16 v0, v22

    invoke-direct {v3, v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 885
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :try_start_7
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/btobex/Operation;->sendHeaders(Ljavax/btobex/HeaderSet;)V

    .line 886
    :cond_8
    :goto_6
    cmp-long v22, v8, v6

    if-eqz v22, :cond_e

    .line 887
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    .line 888
    .local v16, readLength:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v8, v8, v22

    .line 890
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/btobex/ServerOperation;->isAborted()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    .line 891
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v15, v4, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 893
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 894
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavax/btobex/ObexHelper;->getLocalSrmpWait()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 896
    :try_start_8
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v18

    .line 897
    const/16 v22, 0x98

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    .line 898
    .restart local v20       #srmp:Ljava/lang/Byte;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SRMP header (CONTINUE or OK): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    sget-object v22, Ljavax/btobex/ObexHelper;->OBEX_SRM_PARAM_WAIT:Ljava/lang/Byte;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 900
    const-string v22, "BtOppObexServer"

    const-string v23, "SRMP status: WAIT"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_6

    .line 906
    .end local v20           #srmp:Ljava/lang/Byte;
    :catch_2
    move-exception v5

    .line 907
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_9
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to read SRMP Header "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_6

    .line 916
    .end local v5           #e:Ljava/io/IOException;
    .end local v16           #readLength:I
    :catch_3
    move-exception v5

    .line 917
    .restart local v5       #e:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "OPP Pull Business Card : Write outputstrem failed"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/16 v22, 0xd0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 855
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v17           #reply:Ljavax/btobex/HeaderSet;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v19       #srm:Ljava/lang/Byte;
    .restart local v20       #srmp:Ljava/lang/Byte;
    :cond_9
    :try_start_a
    const-string v22, "BtOppObexServer"

    const-string v23, "SRMP status: NONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_5

    .line 869
    .end local v19           #srm:Ljava/lang/Byte;
    .end local v20           #srmp:Ljava/lang/Byte;
    :catch_4
    move-exception v5

    .line 870
    .restart local v5       #e:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get getReceivedHeaders for SRM error "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/16 v22, 0xd0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 860
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v19       #srm:Ljava/lang/Byte;
    :cond_a
    :try_start_b
    const-string v22, "BtOppObexServer"

    const-string v23, "SRM status: Disabled"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 862
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V

    goto/16 :goto_5

    .line 865
    .end local v19           #srm:Ljava/lang/Byte;
    :cond_b
    const-string v22, "BtOppObexServer"

    const-string v23, "Local Device SRM: Incapable"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 867
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_5

    .line 903
    .restart local v4       #buffer:[B
    .restart local v16       #readLength:I
    .restart local v17       #reply:Ljavax/btobex/HeaderSet;
    .restart local v20       #srmp:Ljava/lang/Byte;
    :cond_c
    :try_start_c
    const-string v22, "BtOppObexServer"

    const-string v23, "SRMP status: NONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljavax/btobex/ObexHelper;->setLocalSrmpWait(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_6

    .line 912
    .end local v20           #srmp:Ljava/lang/Byte;
    :cond_d
    :try_start_d
    const-string v22, "BtOppObexServer"

    const-string v23, "Abort is received"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 922
    .end local v16           #readLength:I
    :cond_e
    if-eqz v3, :cond_f

    .line 924
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 932
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->closeStream(Ljava/io/OutputStream;Ljavax/btobex/Operation;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 933
    const/16 v22, 0xd0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 925
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    .line 926
    .restart local v5       #e:Ljava/io/IOException;
    const-string v22, "BtOppObexServer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "input stream close"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v22, "BtOppObexServer"

    const-string v23, "Error when closing stream after send"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v22, 0xd0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 937
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :cond_10
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransferInProgress:Z

    .line 938
    const-string v22, "BtOppObexServer"

    const-string v23, "onGet() -"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/16 v22, 0xa0

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 833
    .end local v4           #buffer:[B
    .end local v17           #reply:Ljavax/btobex/HeaderSet;
    :catchall_0
    move-exception v22

    :goto_7
    if-eqz v10, :cond_6

    if-nez v15, :cond_6

    .line 835
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_4

    .line 836
    :catch_6
    move-exception v22

    goto/16 :goto_4

    .restart local v5       #e:Ljava/io/IOException;
    :catch_7
    move-exception v22

    goto/16 :goto_4

    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v22

    goto/16 :goto_2

    .line 833
    :catchall_1
    move-exception v22

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 829
    .end local v10           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v10, v11

    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public onPut(Ljavax/btobex/Operation;)I
    .locals 30
    .parameter "op"

    .prologue
    .line 279
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onPut "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v18, 0xa0

    .line 291
    .local v18, obexResponse:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 293
    :cond_0
    const/16 v26, 0xc3

    .line 566
    :goto_0
    return v26

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, destination:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v11

    .line 306
    .local v11, isWhitelisted:Z
    const/16 v19, 0x0

    .line 308
    .local v19, pre_reject:Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/btobex/Operation;->getReceivedHeader()Ljavax/btobex/HeaderSet;

    move-result-object v20

    .line 309
    .local v20, request:Ljavax/btobex/HeaderSet;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/btobex/HeaderSet;)V

    .line 310
    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 311
    .local v16, name:Ljava/lang/String;
    const/16 v26, 0xc3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 312
    .local v12, length:Ljava/lang/Long;
    const/16 v26, 0x42

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 314
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 315
    const-string v26, "BtOppObexServer"

    const-string v27, "Local Device SRM: Capable"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v26, 0x97

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Byte;

    .line 318
    .local v21, srm:Ljava/lang/Byte;
    sget-object v26, Ljavax/btobex/ObexHelper;->OBEX_SRM_ENABLED:Ljava/lang/Byte;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 319
    const-string v26, "BtOppObexServer"

    const-string v27, "SRM status: Enabled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    .line 330
    .end local v21           #srm:Ljava/lang/Byte;
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    .line 331
    const-string v26, "BtOppObexServer"

    const-string v27, "length is 0, do not reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    if-eqz v16, :cond_3

    const-string v26, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 337
    :cond_3
    const-string v26, "BtOppObexServer"

    const-string v27, "name is null or empty, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v19, 0x1

    .line 339
    const/16 v18, 0xc0

    .line 342
    :cond_4
    if-nez v19, :cond_5

    .line 345
    const-string v26, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 346
    .local v7, dotIndex:I
    if-gez v7, :cond_a

    if-nez v14, :cond_a

    .line 347
    const-string v26, "BtOppObexServer"

    const-string v27, "There is no file extension or mime type,reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/16 v19, 0x1

    .line 350
    const/16 v18, 0xc0

    .line 381
    .end local v7           #dotIndex:I
    :cond_5
    :goto_3
    if-nez v19, :cond_6

    if-nez v14, :cond_6

    .line 383
    const-string v26, "BtOppObexServer"

    const-string v27, "mimeType is null or in unacceptable list, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/16 v19, 0x1

    .line 385
    const/16 v18, 0xcf

    .line 388
    :cond_6
    if-eqz v19, :cond_d

    const/16 v26, 0xa0

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    move/from16 v26, v18

    .line 390
    goto/16 :goto_0

    .line 300
    .end local v6           #destination:Ljava/lang/String;
    .end local v11           #isWhitelisted:Z
    .end local v12           #length:Ljava/lang/Long;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #pre_reject:Z
    .end local v20           #request:Ljavax/btobex/HeaderSet;
    :cond_7
    const-string v6, "FF:FF:FF:00:00:00"

    .restart local v6       #destination:Ljava/lang/String;
    goto/16 :goto_1

    .line 322
    .restart local v11       #isWhitelisted:Z
    .restart local v12       #length:Ljava/lang/Long;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v19       #pre_reject:Z
    .restart local v20       #request:Ljavax/btobex/HeaderSet;
    .restart local v21       #srm:Ljava/lang/Byte;
    :cond_8
    :try_start_1
    const-string v26, "BtOppObexServer"

    const-string v27, "SRM status: Disabled"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 393
    .end local v12           #length:Ljava/lang/Long;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v20           #request:Ljavax/btobex/HeaderSet;
    .end local v21           #srm:Ljava/lang/Byte;
    :catch_0
    move-exception v8

    .line 394
    .local v8, e:Ljava/io/IOException;
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "get getReceivedHeaders error "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v26, 0xc0

    goto/16 :goto_0

    .line 326
    .end local v8           #e:Ljava/io/IOException;
    .restart local v12       #length:Ljava/lang/Long;
    .restart local v14       #mimeType:Ljava/lang/String;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v20       #request:Ljavax/btobex/HeaderSet;
    :cond_9
    :try_start_2
    const-string v26, "BtOppObexServer"

    const-string v27, "Local Device SRM: Incapable"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p1

    check-cast v0, Ljavax/btobex/ServerOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavax/btobex/ServerOperation;->mSrmServerSession:Ljavax/btobex/ObexHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavax/btobex/ObexHelper;->setLocalSrmStatus(Z)V

    goto/16 :goto_2

    .line 352
    .restart local v7       #dotIndex:I
    :cond_a
    add-int/lit8 v26, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 353
    .local v9, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v13

    .line 354
    .local v13, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v13, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 355
    .local v23, type:Ljava/lang/String;
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Mimetype guessed from extension "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz v23, :cond_c

    .line 357
    move-object/from16 v14, v23

    .line 366
    :cond_b
    :goto_4
    if-eqz v14, :cond_5

    .line 367
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 360
    :cond_c
    if-nez v14, :cond_b

    .line 361
    const-string v26, "BtOppObexServer"

    const-string v27, "Can\'t get mimetype, reject the transfer"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 362
    const/16 v19, 0x1

    .line 363
    const/16 v18, 0xcf

    goto :goto_4

    .line 398
    .end local v7           #dotIndex:I
    .end local v9           #extension:Ljava/lang/String;
    .end local v13           #map:Landroid/webkit/MimeTypeMap;
    .end local v23           #type:Ljava/lang/String;
    :cond_d
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v25, values:Landroid/content/ContentValues;
    const-string v26, "hint"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v26, "total_bytes"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v26, "mimetype"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, a:Ljava/lang/String;
    const-string v26, "destination"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .end local v4           #a:Ljava/lang/String;
    :goto_5
    const-string v26, "direction"

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v26, "timestamp"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimestamp:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    const/16 v17, 0x1

    .line 416
    .local v17, needConfirm:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    .line 417
    const-string v26, "confirm"

    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const/16 v17, 0x0

    .line 422
    :cond_e
    if-eqz v11, :cond_f

    .line 423
    const-string v26, "confirm"

    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const/16 v17, 0x0

    .line 428
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    sget-object v27, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 429
    .local v5, contentUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x1

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    .line 431
    if-eqz v17, :cond_10

    .line 432
    new-instance v10, Landroid/content/Intent;

    const-string v26, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v10, in:Landroid/content/Intent;
    const-string v26, "com.android.bluetooth"

    const-class v27, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    .end local v10           #in:Landroid/content/Intent;
    :cond_10
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "insert contentUri: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mLocalShareInfoId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v26, "BtOppObexServer"

    const-string v27, "acquire partial WakeLock"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-enter p0

    .line 444
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 448
    :cond_11
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    :cond_12
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 452
    const-wide/16 v26, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v26, v0

    if-nez v26, :cond_12

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    const-wide/32 v28, 0xc350

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 457
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    .line 458
    const-string v26, "BtOppObexServer"

    const-string v27, "MSG_CONNECT_TIMEOUT sent"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 461
    :catch_1
    move-exception v8

    .line 462
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v26, "BtOppObexServer"

    const-string v27, "Interrupted in onPut blocking"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_13
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 465
    const-string v26, "BtOppObexServer"

    const-string v27, "Server unblocked "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-enter p0

    .line 467
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    :cond_14
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mLocalShareInfoId:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_15

    .line 479
    const-string v26, "BtOppObexServer"

    const-string v27, "Unexpected error!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    .line 483
    const-string v26, "BtOppObexServer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "after confirm: userAccepted="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v22, 0xc8

    .line 486
    .local v22, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 491
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_17

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v22, v0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 496
    const/16 v18, 0xd0

    .line 500
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    .line 502
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v24, updateValues:Landroid/content/ContentValues;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 504
    const-string v26, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v26, "status"

    const/16 v27, 0xc0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->receiveFile(Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;Ljavax/btobex/Operation;)I

    move-result v22

    .line 512
    const/16 v26, 0xc8

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_18

    .line 513
    const/16 v18, 0xd0

    .line 515
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 517
    const/16 v26, 0xc8

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 518
    const-string v26, "CP_Bluetooth"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mFileInfo.mFileName = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v26, "CP_Bluetooth"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mimeType = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v26, "text/x-vcard"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v14, v2, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .end local v24           #updateValues:Landroid/content/ContentValues;
    :cond_19
    :goto_7
    move/from16 v26, v18

    .line 566
    goto/16 :goto_0

    .line 408
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v17           #needConfirm:Z
    .end local v22           #status:I
    :cond_1a
    const-string v26, "destination"

    const-string v27, "FF:FF:FF:00:00:00"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 464
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v17       #needConfirm:Z
    :catchall_0
    move-exception v26

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v26

    .line 470
    :catchall_1
    move-exception v26

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v26

    .line 528
    .restart local v22       #status:I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mAccepted:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 538
    :cond_1c
    const-string v26, "BtOppObexServer"

    const-string v27, "Rejected incoming request"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d

    .line 541
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 545
    :goto_8
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 548
    :cond_1d
    const/16 v22, 0x1ea

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 550
    const/16 v18, 0xc3

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v15

    .line 554
    .local v15, msg:Landroid/os/Message;
    const/16 v26, 0x3

    move/from16 v0, v26

    iput v0, v15, Landroid/os/Message;->what:I

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 556
    if-eqz v15, :cond_1e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 558
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 542
    .end local v15           #msg:Landroid/os/Message;
    :catch_2
    move-exception v8

    .line 543
    .local v8, e:Ljava/io/IOException;
    const-string v26, "BtOppObexServer"

    const-string v27, "error close file stream"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 560
    .end local v8           #e:Ljava/io/IOException;
    .restart local v15       #msg:Landroid/os/Message;
    :cond_1e
    const-string v26, "BtOppObexServer"

    const-string v27, "Could not get message!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 563
    .end local v15           #msg:Landroid/os/Message;
    :cond_1f
    const-string v26, "BtOppObexServer"

    const-string v27, "Error! mCallback is null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method public preStart()V
    .locals 5

    .prologue
    .line 145
    const-string v2, "BtOppObexServer"

    const-string v3, "acquire full WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    :try_start_0
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create ServerSession with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Ljavax/btobex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Ljavax/btobex/ServerSession;-><init>(Ljavax/btobex/ObexTransport;Ljavax/btobex/ServerRequestHandler;Ljavax/btobex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    .line 150
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->getMaxPacketSize()I

    move-result v1

    .line 151
    .local v1, mps:I
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v2, v1}, Ljavax/btobex/ServerSession;->setMaxPacketSize(I)V

    .line 152
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting ServerSession mps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v3, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppTransport;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransport;->isSrmCapable()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljavax/btobex/ObexHelper;->setLocalSrmCapability(Z)V

    .line 157
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    invoke-virtual {v2}, Ljavax/btobex/ObexHelper;->getLocalSrmCapability()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    iget-object v2, v2, Ljavax/btobex/ServerSession;->mSrmServer:Ljavax/btobex/ObexHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/btobex/ObexHelper;->setLocalSrmParamStatus(Z)V

    .line 161
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerSessionIsUp:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #mps:I
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOppObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create server session error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 171
    const-string v0, "BtOppObexServer"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    const-string v1, "BtOppObexServer"

    const-string v2, "Stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mInterrupted:Z

    .line 187
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    invoke-virtual {v1}, Ljavax/btobex/ServerSession;->close()V

    .line 190
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mTransport:Ljavax/btobex/ObexTransport;

    invoke-interface {v1}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    .line 196
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mSession:Ljavax/btobex/ServerSession;

    .line 197
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close mTransport error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->mServerBlocking:Z

    .line 138
    return-void
.end method
