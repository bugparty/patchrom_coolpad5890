.class Lcom/android/internal/telephony/IccCard$4;
.super Landroid/content/BroadcastReceiver;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 3516
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3520
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v1, v1, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "CP_COMM:receive Battery broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3522
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard$4;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/internal/telephony/IccCard;->mPowerLevel:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccCard;->access$1402(Lcom/android/internal/telephony/IccCard;I)I

    .line 3524
    :cond_0
    return-void
.end method
