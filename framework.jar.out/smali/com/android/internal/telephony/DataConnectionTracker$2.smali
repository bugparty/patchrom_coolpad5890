.class Lcom/android/internal/telephony/DataConnectionTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive: action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 481
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 482
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 484
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->setRetryOnScreenOff(Z)V

    .line 485
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 486
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v9, "dataEnabled"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 489
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 490
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 491
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 565
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 493
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 494
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 495
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 496
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 498
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reconnect alarm. Previous state was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 499
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 500
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 501
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 502
    :cond_5
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 503
    const-string/jumbo v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 505
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 508
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 509
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received  WifiManager.NETWORK_STATE_CHANGED_ACTION  Intent  wifi is connected ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 510
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v9, "WIFI_DISCONNECTED"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 505
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 512
    .end local v5           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 513
    const-string/jumbo v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    const/4 v2, 0x1

    .line 516
    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_1

    .line 519
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .line 513
    .end local v2           #enabled:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 521
    :cond_9
    const-string v8, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 522
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v9, "fail_data_setup_counter"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 523
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v9, "fail_data_setup_fail_cause"

    sget-object v10, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 526
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set mFailDataSetupCounter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mFailDataSetupFailCause="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :cond_a
    const-string/jumbo v8, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 529
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string/jumbo v9, "selectCdmaStatus"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mCdmaNetIsSelected:Z

    .line 530
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string/jumbo v9, "selectGsmStatus"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mGsmNetIsSelected:Z

    .line 531
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT_NET_FINISH: mCdmaNetIsSelected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mCdmaNetIsSelected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mGsmNetIsSelected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mGsmNetIsSelected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 533
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT_NET_FINISH: PhoneModeManager.getPreferredPhoneId() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mDefaultDataNetwork = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mDefaultDataNetwork:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mPhone.getPhoneId() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isDsdsEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getDsdsType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getPreferredPhoneId()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mDefaultDataNetwork:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 541
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v9, "SELECT_NET_FINISH: setDataSubscription"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 542
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, str:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v9, 0x42066

    invoke-static {v8, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 544
    .local v1, callback:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 547
    .end local v1           #callback:Landroid/os/Message;
    .end local v7           #str:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->isQualCommDSDS()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 548
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v10, 0x42003

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 551
    :cond_c
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 552
    const-string/jumbo v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 553
    .local v3, isAirplaneModeOn:Z
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver: isAirplaneModeOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 554
    if-eqz v3, :cond_1

    .line 555
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->setCurrentDataNetworkInAirplaneMode(Lcom/android/internal/telephony/PhoneBase;)V

    goto/16 :goto_0

    .line 557
    .end local v3           #isAirplaneModeOn:Z
    :cond_d
    const-string/jumbo v8, "yulong.intent.action.ROAMING_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 559
    const-string/jumbo v8, "mRoamingChanged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 560
    .local v4, mRoamingChanged:Z
    const-string/jumbo v8, "mPhoneId"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 561
    .local v6, phoneId:I
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v8, v8, Lcom/android/internal/telephony/DataConnectionTracker;->mphoneId:I

    if-ne v6, v8, :cond_1

    if-eqz v4, :cond_1

    .line 562
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->alertSettingsDialog()Z
    invoke-static {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000(Lcom/android/internal/telephony/DataConnectionTracker;)Z

    goto/16 :goto_0
.end method
