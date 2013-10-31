.class Lcom/android/server/ylWatchdog$1;
.super Ljava/lang/Thread;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ylWatchdog;->backupKeyDatabases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ylWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1185
    sget-object v24, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    monitor-enter v24

    .line 1186
    :try_start_0
    const-string v2, "ylWatchdog"

    const-string v3, "Backuping key databases..."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    sget-object v2, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 1189
    sget-object v2, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    aget-object v20, v2, v17

    .line 1190
    .local v20, provider_db:Ljava/lang/String;
    const-string v2, "/data/data/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    sget-object v2, Lcom/android/server/ylWatchdog;->mKeyDatabasesBackupActions:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1195
    new-instance v4, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/ylWatchdog;->mKeyDatabasesBackupActions:[Ljava/lang/String;

    aget-object v2, v2, v17

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v4, intent:Landroid/content/Intent;
    const-string v2, "opr_type"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1197
    const-string v2, "folder_path"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    #calls: Lcom/android/server/ylWatchdog;->getKeyDatabaseBackupDir(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/server/ylWatchdog;->access$700(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    const-string v2, "identity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v13

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1209
    :goto_2
    const-wide/16 v2, 0xbb8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1210
    :catch_0
    move-exception v15

    .line 1211
    .local v15, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1268
    .end local v4           #intent:Landroid/content/Intent;
    .end local v15           #e:Ljava/lang/InterruptedException;
    .end local v17           #i:I
    .end local v20           #provider_db:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1203
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v17       #i:I
    .restart local v20       #provider_db:Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 1204
    .local v16, ex:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1218
    .end local v4           #intent:Landroid/content/Intent;
    .end local v16           #ex:Landroid/os/RemoteException;
    :cond_2
    const/16 v23, 0x1

    .line 1219
    .local v23, suite_ok:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    #calls: Lcom/android/server/ylWatchdog;->copyKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/ylWatchdog;->access$800(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    const-wide/16 v2, 0x1

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1230
    :goto_3
    :try_start_6
    sget-object v14, Lcom/android/server/ylWatchdog;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v21, v14, v18

    .line 1231
    .local v21, related_ext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    #calls: Lcom/android/server/ylWatchdog;->getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/android/server/ylWatchdog;->access$900(Lcom/android/server/ylWatchdog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1238
    .local v22, related_file_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v22

    #calls: Lcom/android/server/ylWatchdog;->copyKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/ylWatchdog;->access$800(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1242
    const-wide/16 v2, 0x1

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1230
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1226
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v21           #related_ext:Ljava/lang/String;
    .end local v22           #related_file_name:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 1227
    .restart local v15       #e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1243
    .end local v15           #e:Ljava/lang/InterruptedException;
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v19       #len$:I
    .restart local v21       #related_ext:Ljava/lang/String;
    .restart local v22       #related_file_name:Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 1244
    .restart local v15       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1248
    .end local v15           #e:Ljava/lang/InterruptedException;
    .end local v21           #related_ext:Ljava/lang/String;
    .end local v22           #related_file_name:Ljava/lang/String;
    :cond_3
    if-eqz v23, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    #calls: Lcom/android/server/ylWatchdog;->checkDatabase(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/ylWatchdog;->access$1000(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    #calls: Lcom/android/server/ylWatchdog;->renameKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/ylWatchdog;->access$1100(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z

    .line 1257
    sget-object v14, Lcom/android/server/ylWatchdog;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    array-length v0, v14

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v21, v14, v18

    .line 1258
    .restart local v21       #related_ext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    #calls: Lcom/android/server/ylWatchdog;->getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/android/server/ylWatchdog;->access$900(Lcom/android/server/ylWatchdog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1264
    .restart local v22       #related_file_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ylWatchdog$1;->this$0:Lcom/android/server/ylWatchdog;

    move-object/from16 v0, v22

    #calls: Lcom/android/server/ylWatchdog;->renameKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/ylWatchdog;->access$1100(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z

    .line 1257
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1268
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v20           #provider_db:Ljava/lang/String;
    .end local v21           #related_ext:Ljava/lang/String;
    .end local v22           #related_file_name:Ljava/lang/String;
    .end local v23           #suite_ok:Z
    :cond_4
    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1269
    return-void
.end method
