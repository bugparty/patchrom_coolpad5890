.class Lcom/android/internal/telephony/DataConnectionTracker$DefaultDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultDataNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1704
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 1705
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1706
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "change"

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DefaultDataNetworkObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1710
    return-void
.end method
