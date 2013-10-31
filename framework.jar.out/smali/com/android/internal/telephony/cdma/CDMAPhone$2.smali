.class Lcom/android/internal/telephony/cdma/CDMAPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTIVE_OR_DEACTIVE_CARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "PHONEID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, phoneid:I
    const-string v3, "TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 179
    .local v2, type:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTIVE_OR_DEACTIVE_CARD phoneid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mphoneid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$000(Lcom/android/internal/telephony/cdma/CDMAPhone;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v3, "PHONEID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->access$100(Lcom/android/internal/telephony/cdma/CDMAPhone;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 182
    const-string v3, "TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 185
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x21

    iput v3, v0, Landroid/os/Message;->what:I

    .line 187
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 188
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput v6, v3, Lcom/android/internal/telephony/PhoneBase;->IsActive:I

    .line 202
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #phoneid:I
    .end local v2           #type:I
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v1       #phoneid:I
    .restart local v2       #type:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v3, 0x22

    iput v3, v0, Landroid/os/Message;->what:I

    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 197
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/PhoneBase;->IsActive:I

    goto :goto_0
.end method
