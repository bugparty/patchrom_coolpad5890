.class Lcom/android/server/BatteryService$SettingsObserver2;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver2"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    .line 461
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 462
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver2;->resolver:Landroid/content/ContentResolver;

    .line 463
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/android/server/BatteryService$SettingsObserver2;->resolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 517
    .local v1, tempValue:I
    if-eqz v1, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 522
    .local v0, result:Z
    :goto_0
    return v0

    .line 520
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method private isSettingsChanged()Z
    .locals 7

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, result:Z
    const-string v4, "yulong_breath_light_charging"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService$SettingsObserver2;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 494
    .local v1, tempCharging:Z
    const-string v4, "yulong_breath_light_notify"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService$SettingsObserver2;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 495
    .local v3, tempNotify:Z
    const-string v4, "yulong_breath_light_lowpower"

    invoke-direct {p0, v4}, Lcom/android/server/BatteryService$SettingsObserver2;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 497
    .local v2, tempLowPower:Z
    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eq v4, v2, :cond_1

    .line 501
    :cond_0
    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v4, v1}, Lcom/android/server/BatteryService;->access$2302(Lcom/android/server/BatteryService;Z)Z

    .line 502
    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v4, v3}, Lcom/android/server/BatteryService;->access$2402(Lcom/android/server/BatteryService;Z)Z

    .line 503
    iget-object v4, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v4, v2}, Lcom/android/server/BatteryService;->access$2502(Lcom/android/server/BatteryService;Z)Z

    .line 505
    const/4 v0, 0x1

    .line 507
    const-string v4, "DLL_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2-SettingsObserver/update/ylBreathLightCharging: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightCharging:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ylBreathLightNotify: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightNotify:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ylBreathLightLowpower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ylBreathLightLowpower:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    return v0
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver2;->isSettingsChanged()Z

    move-result v0

    .line 485
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 489
    :cond_0
    return-void

    .line 485
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method RegisterObserverAndUpdateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver2;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_charging"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver2;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/BatteryService$SettingsObserver2;->resolver:Landroid/content/ContentResolver;

    const-string v1, "yulong_breath_light_lowpower"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 473
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver2;->updateSettings()V

    .line 474
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/server/BatteryService$SettingsObserver2;->updateSettings()V

    .line 479
    return-void
.end method
