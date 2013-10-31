.class Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDataNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 349
    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 350
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "change"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$000(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method
