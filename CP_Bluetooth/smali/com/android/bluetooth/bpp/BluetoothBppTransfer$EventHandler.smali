.class public Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothBppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/bpp/BluetoothBppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 260
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 623
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 262
    :pswitch_1
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SDP request returned "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTimestamp:J
    invoke-static {v14}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$200(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v11, v11, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7

    .line 272
    :goto_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-lez v10, :cond_1

    .line 273
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/android/bluetooth/bpp/BluetoothBppActivity;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v2, in:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    const-string v10, "jobCh"

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v10, "statCh"

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 280
    .end local v2           #in:Landroid/content/Intent;
    :cond_1
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "SDP query failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v11, 0x1f1

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 282
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 286
    :pswitch_2
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Get RFCOMM_CONNECT Message"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-lez v10, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    new-instance v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v13, v13, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v14, v14, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->JobChannel:I

    invoke-direct {v11, v12, v13, v14}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Landroid/bluetooth/BluetoothDevice;I)V

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10, v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$502(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    .line 289
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->start()V

    goto/16 :goto_0

    .line 293
    :cond_2
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "SDP query failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v11, 0x1f1

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 295
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 303
    :pswitch_3
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "receive RFCOMM_ERROR msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 306
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->interrupt()V

    .line 307
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThread:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$500(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :cond_3
    :goto_2
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mOPPstop:Z

    .line 313
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_4

    .line 314
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 317
    :cond_4
    :goto_3
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_5

    .line 319
    :try_start_2
    const-string v10, "BluetoothBppTransfer"

    const-string v11, " RFCOMM_ERROR waiting for 10 sec"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "  Thread Interrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 308
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 309
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "EXP: RFCOMM_ERROR waiting to join"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 328
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v11, 0x1f1

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 329
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 336
    :pswitch_4
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive RFCOMM_CONNECTED msg checking IsAlive()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljavax/btobex/ObexTransport;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;
    invoke-static {v11, v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$602(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljavax/btobex/ObexTransport;)Ljavax/btobex/ObexTransport;

    .line 338
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->startObexSession()V
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$700(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    goto/16 :goto_0

    .line 342
    :pswitch_5
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive RFCOMM_CONNECTED_EVT msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljavax/btobex/ObexTransport;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransportEvent:Ljavax/btobex/ObexTransport;
    invoke-static {v11, v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$802(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Ljavax/btobex/ObexTransport;)Ljavax/btobex/ObexTransport;

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->startEventThread()V
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$900(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    goto/16 :goto_0

    .line 348
    :pswitch_6
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive GET_PRINTER_ATTR msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v11, 0x3

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    goto/16 :goto_0

    .line 353
    :pswitch_7
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive CREATE_JOB msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v11, 0x4

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    goto/16 :goto_0

    .line 358
    :pswitch_8
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive GET_EVENT msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v11, 0x5

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    goto/16 :goto_0

    .line 363
    :pswitch_9
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive SEND_DOCUMENT msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v11, 0x6

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    goto/16 :goto_0

    .line 368
    :pswitch_a
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transfer receive CANCEL msg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v10, :cond_6

    .line 370
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    const/4 v11, 0x7

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mSoapProcess:I

    .line 372
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    if-eqz v10, :cond_7

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    const-string v11, "cancelled"

    iput-object v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobStatus:Ljava/lang/String;

    .line 375
    :cond_7
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-lez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    const/16 v11, 0x1ea

    if-eq v10, v11, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    goto/16 :goto_0

    .line 381
    :pswitch_b
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive START_EVENT_THREAD msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 383
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Status RFCOMM channel has not been set correctly"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    new-instance v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v13, v13, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v13, v13, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v14, v14, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->StatusChannel:I

    invoke-direct {v11, v12, v13, v14}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Landroid/bluetooth/BluetoothDevice;I)V

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10, v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1002(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    .line 388
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mConnectThreadEvent:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1000(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$SocketConnectThread;->start()V

    goto/16 :goto_0

    .line 392
    :pswitch_c
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive MSG_OBEX_AUTH_CHALL msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mAuthChallProcess:Z

    .line 394
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/android/bluetooth/bpp/BluetoothBppAuthActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v3, in2:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v11, v11, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionHandler:Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 402
    .end local v3           #in2:Landroid/content/Intent;
    :pswitch_d
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Transfer receive USER_TIMEOUT msg"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.bluetooth.bpp.userconfirmtimeout"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_e
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transfer receive STATUS_CON_CHANGE msg - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->mEventConn:I

    goto/16 :goto_0

    .line 411
    :pswitch_f
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transfer receive FILE_SENDING msg - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    if-eqz v10, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_9

    const/4 v10, 0x0

    :goto_4
    iput-boolean v10, v11, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x1

    goto :goto_4

    .line 417
    :pswitch_10
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transfer receive STATUS_UPDATE msg - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    goto/16 :goto_0

    .line 430
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 431
    .local v4, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive MSG_SHARE_COMPLETE for info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_a

    .line 433
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 435
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v10, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v9

    .line 438
    .local v9, newShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    if-eqz v9, :cond_b

    .line 440
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continue session for info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v12}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1100(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v12

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v10, v9}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1102(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 443
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #calls: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->processCurrentShare()V
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1200(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)V

    goto/16 :goto_0

    .line 446
    :cond_b
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is done"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mJobStatus:Ljava/lang/String;

    const-string v11, "completed"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    if-eqz v10, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->stop()V

    goto/16 :goto_0

    .line 454
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v10, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->stop()V

    goto/16 :goto_0

    .line 462
    .end local v4           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v9           #newShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_12
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "receive MSG_SESSION_EVENT_COMPLETE"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-lez v10, :cond_d

    .line 465
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mEnforceClose:Z

    .line 467
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-eqz v10, :cond_e

    .line 468
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v11, 0x3

    iput v11, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 470
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->stop()V

    goto/16 :goto_0

    .line 474
    :pswitch_13
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "receive MSG_SESSION_STOP"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->bs:Lcom/android/bluetooth/bpp/BluetoothBppSoap;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppSoap;->mFileSending:Z

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mEnforceClose:Z

    if-nez v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mForceClose:Z

    if-eqz v10, :cond_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v10, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->stop()V

    goto/16 :goto_0

    .line 486
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 487
    .local v5, info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive MSG_SESSION_COMPLETE for batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-enter p0

    .line 491
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$100(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 492
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/4 v11, 0x0

    #setter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBPPregisterReceiver:Z
    invoke-static {v10, v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$102(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;Z)Z

    .line 493
    invoke-static {}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$400()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v11}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBluetoothReceiver - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v12}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$1300(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    .line 499
    :cond_10
    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 501
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mOPPstop:Z

    .line 502
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mOPPstop:Z

    .line 504
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_11

    .line 505
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v11, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 508
    :cond_11
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_12

    .line 509
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 511
    :cond_12
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_13

    .line 512
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 514
    :cond_13
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_14

    .line 515
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 517
    :cond_14
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_15

    .line 518
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 521
    :cond_15
    :goto_6
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_16

    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppSetting;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_16

    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppPrintPrefActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_16

    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppStatusActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_16

    .line 526
    :try_start_5
    const-string v10, "BluetoothBppTransfer"

    const-string v11, " MSG_SESSION_COMPLETE Thread Waiting for 10 ms"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 528
    :catch_2
    move-exception v1

    .line 529
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "  Thread Interrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 499
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 535
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 540
    .end local v5           #info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_15
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive MSG_SESSION_ERROR for batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_17

    .line 546
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 549
    :cond_17
    :goto_7
    sget-object v10, Lcom/android/bluetooth/bpp/BluetoothBppActivity;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_18

    .line 551
    :try_start_7
    const-string v10, "BluetoothBppTransfer"

    const-string v11, " MSG_SESSION_ERROR Thread Waiting for 10 ms"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-wide/16 v10, 0xa

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 553
    :catch_3
    move-exception v1

    .line 554
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "  Thread Interrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 560
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_18
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 561
    .local v6, info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_19

    .line 562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v11, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 564
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    if-eqz v10, :cond_1b

    .line 565
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    iget-boolean v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mConnected:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 566
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->mEnforceClose:Z

    .line 567
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSessionEvent:Lcom/android/bluetooth/bpp/BluetoothBppEvent;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppEvent;->stop()V

    goto/16 :goto_0

    .line 568
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v10, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->stop()V

    goto/16 :goto_0

    .line 572
    :cond_1b
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "Event Thread has not been started, so just close obexsession"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    if-eqz v10, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mSession:Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppObexClientSession;->stop()V

    goto/16 :goto_0

    .line 580
    .end local v6           #info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_16
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive MSG_SHARE_INTERRUPTED for batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 582
    .local v7, info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_1c

    .line 583
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v11, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 585
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v10, :cond_0

    .line 587
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Ljavax/btobex/ObexTransport;

    move-result-object v10

    if-nez v10, :cond_1d

    .line 588
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 595
    :goto_8
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "mTransport closed "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 590
    :cond_1d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Ljavax/btobex/ObexTransport;

    move-result-object v10

    invoke-interface {v10}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    .line 592
    :catch_4
    move-exception v1

    .line 593
    .local v1, e:Ljava/io/IOException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "failed to close mTransport"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 601
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_17
    const-string v10, "BluetoothBppTransfer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive MSG_CONNECT_TIMEOUT for batch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v12, v12, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v12, v12, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget-object v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v10, :cond_0

    .line 607
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Ljavax/btobex/ObexTransport;

    move-result-object v10

    if-nez v10, :cond_1f

    .line 608
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 615
    :goto_9
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "mTransport closed "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    iget v10, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    if-nez v10, :cond_1e

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    const/16 v11, 0x1f1

    iput v11, v10, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mStatusFinal:I

    .line 619
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->printResultMsg()V

    goto/16 :goto_0

    .line 610
    :cond_1f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/bpp/BluetoothBppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/bpp/BluetoothBppTransfer;

    #getter for: Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->mTransport:Ljavax/btobex/ObexTransport;
    invoke-static {v10}, Lcom/android/bluetooth/bpp/BluetoothBppTransfer;->access$600(Lcom/android/bluetooth/bpp/BluetoothBppTransfer;)Ljavax/btobex/ObexTransport;

    move-result-object v10

    invoke-interface {v10}, Ljavax/btobex/ObexTransport;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_9

    .line 612
    :catch_5
    move-exception v1

    .line 613
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "BluetoothBppTransfer"

    const-string v11, "failed to close mTransport"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 496
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catch_6
    move-exception v10

    goto/16 :goto_5

    .line 269
    .end local v5           #info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :catch_7
    move-exception v10

    goto/16 :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
