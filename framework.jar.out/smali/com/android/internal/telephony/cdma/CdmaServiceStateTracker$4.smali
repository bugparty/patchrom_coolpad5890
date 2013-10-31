.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;
.super Lcom/yulong/android/telephony/CPPhoneStateListener;
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
    .line 264
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneId"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDualDataActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCallStateOtherPhone:I
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 271
    :cond_0
    return-void
.end method

.method public onDualDataActivity(II)V
    .locals 3
    .parameter "direction"
    .parameter "phoneId"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDualDataActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 294
    const-string/jumbo v0, "yulong.data.inorout"

    const v1, 0xffff

    rem-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$1002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 299
    :cond_0
    return-void
.end method

.method public onDualDataConnectionStateChanged(III)V
    .locals 7
    .parameter "state"
    .parameter "netinfo"
    .parameter "phoneId"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 275
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualDataState(I)I

    move-result v0

    .line 277
    .local v0, phoneOneState:I
    invoke-static {}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDefault()Lcom/yulong/android/telephony/CPTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/yulong/android/telephony/CPTelephonyManager;->getDualDataState(I)I

    move-result v1

    .line 279
    .local v1, phoneTwoState:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDualDataConnectionStateChanged: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "phoneOneState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "phoneTwoState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 281
    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$702(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;I)I

    .line 285
    const-string/jumbo v2, "yulong.data.inorout"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mDataActivityStateOtherPhone:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v3

    const v4, 0xffff

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method
