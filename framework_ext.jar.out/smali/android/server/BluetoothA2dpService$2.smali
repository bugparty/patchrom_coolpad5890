.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 44
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 324
    .local v17, device:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 327
    .local v34, state:I
    packed-switch v34, :pswitch_data_0

    .line 641
    .end local v34           #state:I
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v34       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 332
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 335
    .end local v34           #state:I
    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    monitor-enter p0

    .line 337
    if-nez v17, :cond_2

    .line 338
    :try_start_0
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Error! device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit p0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 341
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 343
    .restart local v34       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v0, v1, v3}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 345
    .end local v34           #state:I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    :cond_4
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 347
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 348
    .local v35, streamType:I
    const/4 v2, 0x3

    move/from16 v0, v35

    if-ne v0, v2, :cond_0

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v33

    .line 351
    .local v33, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v3, v2}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 353
    .local v13, address:Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 355
    .local v29, newVolLevel:I
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 357
    .local v30, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 358
    .local v31, path:Ljava/lang/String;
    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 360
    :cond_5
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 365
    .end local v13           #address:Ljava/lang/String;
    .end local v29           #newVolLevel:I
    .end local v30           #oldVolLevel:I
    .end local v31           #path:Ljava/lang/String;
    .end local v33           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v35           #streamType:I
    :cond_6
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "track"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    :cond_9
    const-string/jumbo v2, "id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 376
    .local v19, extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_a

    .line 377
    const-wide/16 v19, 0x0

    .line 378
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    const-string v2, "ListSize"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 380
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_b

    .line 381
    const-wide/16 v19, 0x0

    .line 382
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 384
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_c

    .line 385
    const-wide/16 v19, 0x0

    .line 386
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    const-string/jumbo v2, "position"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 388
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_d

    .line 389
    const-wide/16 v19, 0x0

    .line 390
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-wide/from16 v0, v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v0, v1}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 392
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meta data info is trackname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " artist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMediaNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mediaCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPostion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v31, v14, v22

    .line 397
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v6, v7}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 396
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 400
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #extra:J
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    :cond_e
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 401
    const-string/jumbo v2, "track"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 402
    .local v15, currentTrackName:Ljava/lang/String;
    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v15}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    :cond_11
    const-string/jumbo v2, "id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 413
    .restart local v19       #extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_12

    .line 414
    const-wide/16 v19, 0x0

    .line 415
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    const-string v2, "ListSize"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 417
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_13

    .line 418
    const-wide/16 v19, 0x0

    .line 419
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 421
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_14

    .line 422
    const-wide/16 v19, 0x0

    .line 423
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    const-string/jumbo v2, "position"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 425
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_15

    .line 426
    const-wide/16 v19, 0x0

    .line 427
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-wide/from16 v0, v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v0, v1}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    aget-object v31, v14, v22

    .line 429
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 428
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 431
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #extra:J
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    :cond_16
    const-string/jumbo v2, "playing"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 432
    .local v32, playStatus:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_17

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-wide/16 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 435
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v6

    move/from16 v0, v32

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v3, v0, v6, v7}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3002(Landroid/server/BluetoothA2dpService;I)I

    .line 436
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayState changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v31, v14, v22

    .line 438
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    int-to-long v6, v4

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v6, v7}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 437
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 440
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v15           #currentTrackName:Ljava/lang/String;
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    .end local v32           #playStatus:Z
    :cond_18
    const-string v2, "com.android.music.playstatusresponse"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 441
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Received PLAYSTATUS_RESPONSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    .line 443
    .restart local v19       #extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v19, v2

    if-gez v2, :cond_19

    .line 444
    const-wide/16 v19, 0x0

    .line 445
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_1a

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-wide/16 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 449
    :cond_1a
    const-string/jumbo v2, "playing"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 450
    .restart local v32       #playStatus:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v6

    move/from16 v0, v32

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v3, v0, v6, v7}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3002(Landroid/server/BluetoothA2dpService;I)I

    .line 451
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Sending Playstatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    .end local v19           #extra:J
    .end local v32           #playStatus:Z
    :cond_1b
    const-string v2, "android.media.MediaPlayer.action.METADATA_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 454
    const-string/jumbo v2, "uripath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Landroid/net/Uri;

    .line 455
    .local v39, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 457
    if-eqz v39, :cond_0

    .line 461
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v40

    .line 462
    .local v40, uriPath:Ljava/lang/String;
    const-string v2, "//"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 463
    .local v42, value:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 465
    .local v23, is_video:I
    if-eqz v42, :cond_1f

    move-object/from16 v0, v42

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    .line 466
    const/4 v2, 0x1

    aget-object v2, v42, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 467
    .local v43, value1:[Ljava/lang/String;
    if-eqz v43, :cond_1f

    move-object/from16 v0, v43

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    .line 468
    move-object/from16 v0, v43

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-object v2, v43, v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 469
    const/16 v23, 0x1

    .line 471
    :cond_1c
    const/4 v2, 0x0

    aget-object v2, v43, v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    aget-object v2, v43, v2

    const-string v3, "external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v2, 0x0

    aget-object v2, v43, v2

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 473
    :cond_1e
    const-string v2, "Internal audio file data, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v43           #value1:[Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v37

    .line 481
    .local v37, tempMediaNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "time"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3402(Landroid/server/BluetoothA2dpService;Ljava/lang/Long;)Ljava/lang/Long;

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "duration"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 484
    const-string/jumbo v2, "playstate"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 485
    .local v32, playStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlaySatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;)I

    move-result v2

    move/from16 v0, v32

    if-eq v0, v2, :cond_20

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move/from16 v0, v32

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3002(Landroid/server/BluetoothA2dpService;I)I

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_20

    aget-object v31, v14, v22

    .line 490
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    int-to-long v6, v4

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v6, v7}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 489
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 494
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    :cond_20
    const-string v2, "Metadata received"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playstate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 500
    const-string v2, "Update for same Uri, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v39

    #setter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3202(Landroid/server/BluetoothA2dpService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 505
    const/16 v25, 0x0

    .line 510
    .local v25, mCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_27

    :try_start_2
    const-string/jumbo v5, "is_music=1"

    .line 511
    .local v5, condition:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mCursorCols:[Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3500(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 514
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 515
    const-string/jumbo v2, "title"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 518
    .local v36, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v36

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    const-string v2, "artist"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v36

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    const-string v2, "album"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v36

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    const-string v2, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 529
    .local v26, mediaNumber:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_25

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "0"

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Artist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Album is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 542
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 543
    const/16 v25, 0x0

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->getTrackId(Ljava/lang/String;)J
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    .line 545
    .local v38, tmpId:Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tmpId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 550
    new-instance v28, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v28 .. v28}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 551
    .local v28, mmr:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 552
    const/4 v2, 0x6

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v36

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v36

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Genre is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 556
    .end local v28           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const-string/jumbo v9, "is_music=1"

    const/4 v10, 0x0

    const-string/jumbo v11, "title_key"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 563
    const/16 v25, 0x0

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    .end local v5           #condition:Ljava/lang/String;
    .end local v26           #mediaNumber:J
    .end local v36           #temp:Ljava/lang/String;
    .end local v38           #tmpId:Ljava/lang/Long;
    :goto_6
    const-string v2, "end of parsing mData"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_7
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v31, v14, v22

    .line 579
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v6, v7}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 578
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 510
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 565
    :catch_0
    move-exception v18

    .line 566
    .local v18, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Ljava/lang/String;)V

    .line 568
    if-eqz v25, :cond_28

    .line 569
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_6

    .line 582
    .end local v18           #e:Ljava/lang/Exception;
    .end local v23           #is_video:I
    .end local v25           #mCursor:Landroid/database/Cursor;
    .end local v32           #playStatus:I
    .end local v37           #tempMediaNumber:Ljava/lang/String;
    .end local v39           #uri:Landroid/net/Uri;
    .end local v40           #uriPath:Ljava/lang/String;
    .end local v42           #value:[Ljava/lang/String;
    :cond_29
    const-string v2, "com.android.music.playersettingsresponse"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    const-string v2, "Response"

    const/16 v3, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 587
    .local v21, getResponse:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 588
    :try_start_3
    new-instance v41, Ljava/lang/Integer;

    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 589
    .local v41, val:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$4000(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_2a
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    packed-switch v21, :pswitch_data_1

    goto/16 :goto_0

    .line 596
    :pswitch_2
    const-string v2, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 597
    .local v16, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedAttributes"

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v16

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v6, v0}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 593
    .end local v16           #data:[B
    .end local v41           #val:Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 603
    .restart local v41       #val:Ljava/lang/Integer;
    :pswitch_3
    const-string v2, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 604
    .restart local v16       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedValues"

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v16

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v6, v0}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 611
    .end local v16           #data:[B
    :pswitch_4
    const-string v2, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 612
    .restart local v16       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v16

    #calls: Landroid/server/BluetoothA2dpService;->updateLocalPlayerSettings([B)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$4100(Landroid/server/BluetoothA2dpService;[B)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateCurrentValues"

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v16

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v6, v0}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 617
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v31, v14, v22

    .line 618
    .restart local v31       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "UpdateCurrentValues"

    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v0, v3, v4, v1}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    .line 617
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 624
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v16           #data:[B
    .end local v22           #i$:I
    .end local v24           #len$:I
    .end local v31           #path:Ljava/lang/String;
    :pswitch_5
    const-string v2, "AttributeStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v7, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v8, "UpdateAttributesText"

    array-length v9, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v10, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v6 .. v11}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 632
    .end local v11           #text:[Ljava/lang/String;
    :pswitch_6
    const-string v2, "ValueStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 633
    .restart local v11       #text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 634
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v7, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v8, "UpdateValuesText"

    array-length v9, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v10, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v6 .. v11}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 594
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
