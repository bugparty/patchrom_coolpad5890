.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    .line 217
    const-string v4, "CDMAservicetracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIntentReceiver mIsScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #calls: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextRegStatePoll()V
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z
    invoke-static {v4, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    .line 222
    const-string v4, "CDMAservicetracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIntentReceiver mIsScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsScreenOn:Z
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v4, "yulong.intent.action.SELECT_NET_OPERATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 231
    const-string v4, "PHONEID"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 232
    .local v2, phoneid:I
    const-string v4, "TYPE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 233
    .local v3, type:I
    const-string v4, "CDMAservicetracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTIVE_OR_DEACTIVE_CARD phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mphoneid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 236
    if-ne v3, v7, :cond_3

    .line 238
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x2c

    iput v4, v1, Landroid/os/Message;->what:I

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 241
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput v7, v4, Lcom/android/internal/telephony/ServiceStateTracker;->IsActive:I

    goto/16 :goto_0

    .line 244
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 245
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v4, 0x2d

    iput v4, v1, Landroid/os/Message;->what:I

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iput v8, v4, Lcom/android/internal/telephony/ServiceStateTracker;->IsActive:I

    goto/16 :goto_0

    .line 251
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #phoneid:I
    .end local v3           #type:I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    const-string v4, "CDMAservicetracker"

    const-string v5, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/ServiceStateTracker;->isLanguageChanged:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$402(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0
.end method
