.class Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CPUWDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPUWDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUwdDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPUWDManager;


# direct methods
.method private constructor <init>(Lcom/yulong/android/telephony/CPUWDManager;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulong/android/telephony/CPUWDManager;Lcom/yulong/android/telephony/CPUWDManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;-><init>(Lcom/yulong/android/telephony/CPUWDManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 830
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.START_UW_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    const-string/jumbo v3, "uwd"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.STOP_UW_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const-string/jumbo v3, "uwd"

    invoke-static {v3}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_REGIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 835
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string/jumbo v4, "receive ACTION_UW_REGIST"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 844
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->onRegisterRequest()V

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_DEREGIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 846
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "get intent ACTION_UW_DEREGIST"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z
    invoke-static {v3, v6}, Lcom/yulong/android/telephony/CPUWDManager;->access$102(Lcom/yulong/android/telephony/CPUWDManager;Z)Z

    .line 848
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    goto :goto_0

    .line 849
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_TRY_SETUP_DATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 850
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "get intent ACTION_UW_TRY_SETUP_DATA"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_TRY_SETUP_DATA_CHINATELE_TIP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 853
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "guopengfei mUwStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 854
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 855
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v9}, Lcom/yulong/android/telephony/CPUWDManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 856
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v9}, Lcom/yulong/android/telephony/CPUWDManager;->removeMessages(I)V

    .line 858
    :cond_6
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v8}, Lcom/yulong/android/telephony/CPUWDManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 859
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v8}, Lcom/yulong/android/telephony/CPUWDManager;->removeMessages(I)V

    .line 861
    :cond_7
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v8}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 862
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 863
    .end local v1           #msg:Landroid/os/Message;
    :cond_8
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 864
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    goto/16 :goto_0

    .line 867
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.CTCW_TPA_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 868
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "*****ct.cw.TPA_READY********"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 869
    const-string v3, "TPAState"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/yulong/android/telephony/CPUWDManager;->WIFI_CTCW_TPA_STATE:I

    .line 870
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 871
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.CTCW_REQUEST_TAKEOVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, mit:Landroid/content/Intent;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #getter for: Lcom/yulong/android/telephony/CPUWDManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yulong/android/telephony/CPUWDManager;->access$200(Lcom/yulong/android/telephony/CPUWDManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 874
    .end local v0           #mit:Landroid/content/Intent;
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.CTCW_TPA_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 875
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "*****ct.cw.TPA_REQUEST********"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 876
    const-string v3, "TPARequest"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_b

    .line 877
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->trySetupData()Z

    goto/16 :goto_0

    .line 878
    :cond_b
    const-string v3, "TPARequest"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v3, v10, :cond_c

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 880
    :cond_c
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUwStatus= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v5, v5, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 881
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v10, v3, :cond_f

    .line 882
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v9}, Lcom/yulong/android/telephony/CPUWDManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 883
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v9}, Lcom/yulong/android/telephony/CPUWDManager;->removeMessages(I)V

    .line 885
    :cond_d
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v8}, Lcom/yulong/android/telephony/CPUWDManager;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 886
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v8}, Lcom/yulong/android/telephony/CPUWDManager;->removeMessages(I)V

    .line 888
    :cond_e
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v9}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 889
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 891
    .end local v1           #msg:Landroid/os/Message;
    :cond_f
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z
    invoke-static {v3, v6}, Lcom/yulong/android/telephony/CPUWDManager;->access$102(Lcom/yulong/android/telephony/CPUWDManager;Z)Z

    .line 892
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3, v6}, Lcom/yulong/android/telephony/CPUWDManager;->cleanUpData(Z)V

    goto/16 :goto_0

    .line 897
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_CLEAN_UP_DATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 898
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "get intent ACTION_UW_CLEAN_UP_DATA"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_SET_WAG_IP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 900
    const-string/jumbo v3, "wag_ip"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, wagIP:Ljava/lang/String;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regist set ip is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 902
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #calls: Lcom/yulong/android/telephony/CPUWDManager;->isIpAddress(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/yulong/android/telephony/CPUWDManager;->access$300(Lcom/yulong/android/telephony/CPUWDManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 903
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/yulong/android/telephony/CPUWDManager;->access$402(Lcom/yulong/android/telephony/CPUWDManager;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    :goto_1
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regist in test mode ip is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #getter for: Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;
    invoke-static {v5}, Lcom/yulong/android/telephony/CPUWDManager;->access$400(Lcom/yulong/android/telephony/CPUWDManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    :cond_12
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const/4 v4, 0x0

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mWagIP:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->access$402(Lcom/yulong/android/telephony/CPUWDManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 908
    .end local v2           #wagIP:Ljava/lang/String;
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_GET_CONN_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_GET_CONN_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_GET_CONN_STATS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 914
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.UW_GET_REGIST_STATUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 917
    const-string/jumbo v3, "selectCdmaStatus"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-ne v3, v6, :cond_14

    .line 920
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 921
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v1, v4, v5}, Lcom/yulong/android/telephony/CPUWDManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 923
    .end local v1           #msg:Landroid/os/Message;
    :cond_14
    const-string/jumbo v3, "selectCdmaStatus"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_15

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v3, v10, :cond_15

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 926
    :cond_15
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mRequestTearDown:Z
    invoke-static {v3, v6}, Lcom/yulong/android/telephony/CPUWDManager;->access$102(Lcom/yulong/android/telephony/CPUWDManager;Z)Z

    .line 927
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    goto/16 :goto_0

    .line 929
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yulong.inent.action.WIFI_OPERATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 930
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string/jumbo v4, "operate"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I
    invoke-static {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->access$502(Lcom/yulong/android/telephony/CPUWDManager;I)I

    .line 931
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_WIFI_OPERATE mWifiOperate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #getter for: Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I
    invoke-static {v5}, Lcom/yulong/android/telephony/CPUWDManager;->access$500(Lcom/yulong/android/telephony/CPUWDManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 932
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget-object v4, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    #getter for: Lcom/yulong/android/telephony/CPUWDManager;->mWifiOperate:I
    invoke-static {v4}, Lcom/yulong/android/telephony/CPUWDManager;->access$500(Lcom/yulong/android/telephony/CPUWDManager;)I

    move-result v4

    #calls: Lcom/yulong/android/telephony/CPUWDManager;->handleWifiReq(I)V
    invoke-static {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->access$600(Lcom/yulong/android/telephony/CPUWDManager;I)V

    goto/16 :goto_0

    .line 933
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "ACTION_SHUTDOWN message"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 935
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    iget v3, v3, Lcom/yulong/android/telephony/CPUWDManager;->mUwStatus:I

    if-eq v6, v3, :cond_0

    .line 936
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    const-string v4, "ACTION_SHUTDOWN deregist"

    invoke-virtual {v3, v4}, Lcom/yulong/android/telephony/CPUWDManager;->LOGD(Ljava/lang/String;)V

    .line 937
    iget-object v3, p0, Lcom/yulong/android/telephony/CPUWDManager$CPUwdDataStateReceiver;->this$0:Lcom/yulong/android/telephony/CPUWDManager;

    invoke-virtual {v3}, Lcom/yulong/android/telephony/CPUWDManager;->deregist()Z

    goto/16 :goto_0
.end method
