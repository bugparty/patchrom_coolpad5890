.class Lcom/yulong/android/telephony/CPPhoneStateListener$1;
.super Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;
.source "CPPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPPhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    invoke-direct {p0}, Lcom/yulong/android/internal/telephony/ICPPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualCallForwardingIndicatorChanged(ZI)V
    .locals 4
    .parameter "cfi"
    .parameter "phoneId"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"
    .parameter "phoneId"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method public onDualCellInfoChanged(Landroid/telephony/CellInfo;I)V
    .locals 3
    .parameter "cellInfo"
    .parameter "phoneId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    return-void
.end method

.method public onDualCellLocationChanged(Landroid/os/Bundle;I)V
    .locals 4
    .parameter "bundle"
    .parameter "phoneId"

    .prologue
    .line 281
    invoke-static {p1, p2}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 282
    .local v0, location:Landroid/telephony/CellLocation;
    iget-object v1, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v1, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method

.method public onDualDataActivity(II)V
    .locals 3
    .parameter "direction"
    .parameter "phoneId"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public onDualDataConnectionStateChanged(III)V
    .locals 3
    .parameter "state"
    .parameter "networkType"
    .parameter "phoneId"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public onDualMessageWaitingIndicatorChanged(ZI)V
    .locals 4
    .parameter "mwi"
    .parameter "phoneId"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v1, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDualServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 3
    .parameter "serviceState"
    .parameter "phoneId"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public onDualSignalStrengthChanged(II)V
    .locals 3
    .parameter "asu"
    .parameter "phoneId"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public onDualSignalStrengthsChanged(Landroid/telephony/SignalStrength;I)V
    .locals 3
    .parameter "signalStrength"
    .parameter "phoneId"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yulong/android/telephony/CPPhoneStateListener$1;->this$0:Lcom/yulong/android/telephony/CPPhoneStateListener;

    iget-object v0, v0, Lcom/yulong/android/telephony/CPPhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method
