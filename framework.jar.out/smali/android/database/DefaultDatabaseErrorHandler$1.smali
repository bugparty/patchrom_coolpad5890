.class Landroid/database/DefaultDatabaseErrorHandler$1;
.super Ljava/lang/Thread;
.source "DefaultDatabaseErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/DefaultDatabaseErrorHandler;->restoreKeyDatabases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method constructor <init>(Landroid/database/DefaultDatabaseErrorHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 204
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #getter for: Landroid/database/DefaultDatabaseErrorHandler;->mLastDatabaseCorrupted:Ljava/lang/String;
    invoke-static {v8}, Landroid/database/DefaultDatabaseErrorHandler;->access$000(Landroid/database/DefaultDatabaseErrorHandler;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #getter for: Landroid/database/DefaultDatabaseErrorHandler;->mLastDatabaseCorrupted:Ljava/lang/String;
    invoke-static {v8}, Landroid/database/DefaultDatabaseErrorHandler;->access$000(Landroid/database/DefaultDatabaseErrorHandler;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .local v4, provider_db:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 214
    const/4 v7, 0x1

    .line 215
    .local v7, suite_ok:Z
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->copyBackKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v8, v4}, Landroid/database/DefaultDatabaseErrorHandler;->access$100(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    const-wide/16 v8, 0x1

    :try_start_0
    invoke-static {v8, v9}, Landroid/database/DefaultDatabaseErrorHandler$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    sget-object v0, Landroid/database/DefaultDatabaseErrorHandler;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 226
    .local v5, related_ext:Ljava/lang/String;
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4, v5}, Landroid/database/DefaultDatabaseErrorHandler;->access$200(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, related_file_name:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 247
    .end local v5           #related_ext:Ljava/lang/String;
    .end local v6           #related_file_name:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 248
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->renameBackKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v8, v4}, Landroid/database/DefaultDatabaseErrorHandler;->access$300(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;)Z

    .line 250
    sget-object v9, Landroid/database/DefaultDatabaseErrorHandler;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    monitor-enter v9

    .line 251
    :try_start_1
    sget-object v0, Landroid/database/DefaultDatabaseErrorHandler;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 252
    .restart local v5       #related_ext:Ljava/lang/String;
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4, v5}, Landroid/database/DefaultDatabaseErrorHandler;->access$200(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .restart local v6       #related_file_name:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 264
    .end local v5           #related_ext:Ljava/lang/String;
    .end local v6           #related_file_name:Ljava/lang/String;
    :cond_3
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 221
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #related_ext:Ljava/lang/String;
    .restart local v6       #related_file_name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->copyBackKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v8, v6}, Landroid/database/DefaultDatabaseErrorHandler;->access$100(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;)Z

    .line 241
    const-wide/16 v8, 0x1

    :try_start_2
    invoke-static {v8, v9}, Landroid/database/DefaultDatabaseErrorHandler$1;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 225
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 242
    :catch_1
    move-exception v1

    .line 243
    .restart local v1       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 262
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    :try_start_3
    iget-object v8, p0, Landroid/database/DefaultDatabaseErrorHandler$1;->this$0:Landroid/database/DefaultDatabaseErrorHandler;

    #calls: Landroid/database/DefaultDatabaseErrorHandler;->renameBackKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    invoke-static {v8, v6}, Landroid/database/DefaultDatabaseErrorHandler;->access$300(Landroid/database/DefaultDatabaseErrorHandler;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
