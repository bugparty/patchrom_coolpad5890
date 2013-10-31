.class Lcom/android/server/VibratorService$6;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touch_virbation_level"

    const/16 v3, 0x3c

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1902(I)I

    .line 656
    monitor-exit v1

    .line 657
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
