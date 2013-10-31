.class Landroid/net/wifi/pppoe/PppoeStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/pppoe/PppoeStateMachine;->initPppoeStateMachine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/pppoe/PppoeStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$1;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v1, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$1;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const/4 v0, 0x3

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Landroid/net/wifi/pppoe/PppoeStateMachine;->mIsWifiEnabled:Z
    invoke-static {v1, v0}, Landroid/net/wifi/pppoe/PppoeStateMachine;->access$002(Landroid/net/wifi/pppoe/PppoeStateMachine;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$1;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const v1, 0x2600b

    invoke-virtual {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(I)V

    .line 144
    :cond_0
    :goto_1
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/pppoe/PppoeStateMachine$1;->this$0:Landroid/net/wifi/pppoe/PppoeStateMachine;

    const v1, 0x2600a

    invoke-virtual {v0, v1}, Landroid/net/wifi/pppoe/PppoeStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method
