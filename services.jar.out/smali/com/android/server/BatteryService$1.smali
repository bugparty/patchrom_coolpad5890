.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x123

    const/16 v11, 0x1c2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mBooted:Z
    invoke-static {v4, v9}, Lcom/android/server/BatteryService;->access$002(Lcom/android/server/BatteryService;Z)Z

    .line 234
    new-instance v3, Lcom/android/server/BatteryService$SettingsObserver2;

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/BatteryService$SettingsObserver2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 235
    .local v3, settingsObserver2:Lcom/android/server/BatteryService$SettingsObserver2;
    invoke-virtual {v3}, Lcom/android/server/BatteryService$SettingsObserver2;->RegisterObserverAndUpdateSettings()V

    .line 355
    .end local v3           #settingsObserver2:Lcom/android/server/BatteryService$SettingsObserver2;
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v4, v9}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Z)Z

    .line 240
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0

    .line 242
    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->isScreenOn:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Z)Z

    .line 245
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_0

    .line 247
    :cond_3
    const-string v4, "yulong.intent.action.SHOW_NUM_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 249
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "packageName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/server/BatteryService;->packageName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "className"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/server/BatteryService;->className:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->packageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->className:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "showNum"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;I)I

    .line 254
    const-string v4, "com.yulong.android.callhistory:com.yulong.android.recentcalls.activity.TabHostActivity"

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 255
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v4

    if-lez v4, :cond_7

    .line 256
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v4, v9}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    .line 268
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 269
    :cond_5
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v4, v9}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    .line 274
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showNumChanged:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->showNumChanged:Z
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 276
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto/16 :goto_0

    .line 258
    :cond_7
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 260
    :cond_8
    const-string v4, "com.android.mms:com.yulong.android.mms.ui.MmsMainListFormActivity"

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->key:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 261
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->showNum:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v4

    if-lez v4, :cond_9

    .line 262
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v4, v9}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 264
    :cond_9
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    goto :goto_1

    .line 270
    :cond_a
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveMissedCall:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->haveUnreadMsg:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 271
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->showMessageLight:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    goto :goto_2

    .line 281
    :cond_b
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 282
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v5, Lcom/android/server/BatteryService;->notificationManger:Landroid/app/NotificationManager;

    .line 283
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "plugged"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->batteryPlugg:I
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1302(Lcom/android/server/BatteryService;I)I

    .line 285
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->batteryPlugg:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v4

    if-eq v9, v4, :cond_c

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->batteryPlugg:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v10, v4, :cond_0

    .line 287
    :cond_c
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/BatteryService;->batteryStatus:I
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1402(Lcom/android/server/BatteryService;I)I

    .line 290
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->batteryStatus:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v4

    if-le v4, v11, :cond_d

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v4, v4, Lcom/android/server/BatteryService;->mUserChaneBacklight:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v4, v4, Lcom/android/server/BatteryService;->mBrightnessValueHasChanged:Z

    if-nez v4, :cond_d

    .line 298
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v4, p1}, Lcom/android/server/BatteryService;->adjustScreenBrightnessValue(Landroid/content/Context;)V

    .line 303
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, ChargeIntent:Landroid/content/Intent;
    invoke-static {p1, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 308
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryPresent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 309
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v4

    if-le v4, v11, :cond_e

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 310
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "/system/media/audio/ui/battery_charge.ogg"

    #calls: Lcom/android/server/BatteryService;->playSound(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040567

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x104056a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v2}, Lcom/android/server/BatteryService;->sendNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 316
    :cond_e
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v4

    if-gez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 317
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "/system/media/audio/ui/battery_charge.ogg"

    #calls: Lcom/android/server/BatteryService;->playSound(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040568

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x104056b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v2}, Lcom/android/server/BatteryService;->sendNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 323
    :cond_f
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryVoltage:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v4

    const/16 v5, 0x1964

    if-le v4, v5, :cond_10

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 324
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "/system/media/audio/ui/battery_charge.ogg"

    #calls: Lcom/android/server/BatteryService;->playSound(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040569

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x104056c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v2}, Lcom/android/server/BatteryService;->sendNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 331
    :cond_10
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->batteryStatus:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v4

    if-ne v10, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-ne v4, v9, :cond_0

    .line 333
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)I

    move-result v4

    if-gt v4, v11, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryVoltage:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryVoltage:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v4

    const/16 v5, 0x1964

    if-gt v4, v5, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->notificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 336
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    goto/16 :goto_0

    .line 341
    .end local v0           #ChargeIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_11
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 343
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->notificationHasSent:Z
    invoke-static {v4, v8}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    .line 345
    :cond_12
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->notificationManger:Landroid/app/NotificationManager;

    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 348
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v4, v4, Lcom/android/server/BatteryService;->mUserChaneBacklight:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v4, v4, Lcom/android/server/BatteryService;->mBrightnessValueHasChanged:Z

    if-eqz v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Lcom/android/server/LightsService$Light;

    move-result-object v4

    invoke-static {}, Lcom/android/server/BatteryService;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 350
    iget-object v4, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v8, v4, Lcom/android/server/BatteryService;->mBrightnessValueHasChanged:Z

    goto/16 :goto_0
.end method
