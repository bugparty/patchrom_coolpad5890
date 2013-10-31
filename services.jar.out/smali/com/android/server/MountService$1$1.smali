.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 593
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .line 594
    .local v1, count:I
    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 599
    .local v8, paths:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    add-int/lit8 v12, v1, -0x1

    if-ge v3, v12, :cond_2

    .line 600
    add-int/lit8 v4, v3, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 601
    aget-object v12, v8, v3

    aget-object v14, v8, v4

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 602
    aget-object v7, v8, v3

    .line 603
    .local v7, pathTemp:Ljava/lang/String;
    aget-object v12, v8, v4

    aput-object v12, v8, v3

    .line 604
    aput-object v7, v8, v4

    .line 600
    .end local v7           #pathTemp:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    .end local v4           #j:I
    :cond_2
    new-array v11, v1, [Ljava/lang/String;

    .line 611
    .local v11, states:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    aget-object v14, v8, v3

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v11, v3

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 614
    :cond_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    .line 617
    :try_start_2
    aget-object v6, v8, v3

    .line 618
    .local v6, path:Ljava/lang/String;
    aget-object v10, v11, v3

    .line 620
    .local v10, state:Ljava/lang/String;
    const-string v12, "unmounted"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 621
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v12, v6}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v9

    .line 622
    .local v9, rc:I
    if-eqz v9, :cond_4

    .line 623
    const-string v12, "MountService"

    const-string v13, "Boot-time mount failed (%d)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    .end local v9           #rc:I
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 614
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, ex:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Boot-time mount exception"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    :goto_5
    return-void

    .line 626
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v12, "shared"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v12, v13, v6, v14, v15}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 637
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v12 .. v16}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 647
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v12, v12, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$1402(Lcom/android/server/MountService;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5
.end method
