.class Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;
.super Ljava/lang/Thread;
.source "SystemDestroyWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;


# direct methods
.method constructor <init>(Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    const-string v1, "SystemDestroy"

    const-string v2, "verifySystemDestroy Thread run()..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #calls: Lcom/android/server/SystemDestroyWatchdog;->verifySystemDestroy()Z
    invoke-static {v1}, Lcom/android/server/SystemDestroyWatchdog;->access$000(Lcom/android/server/SystemDestroyWatchdog;)Z

    move-result v0

    .line 257
    .local v0, bVerifyOK:Z
    if-nez v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #calls: Lcom/android/server/SystemDestroyWatchdog;->notifyUIErrorMessage()V
    invoke-static {v1}, Lcom/android/server/SystemDestroyWatchdog;->access$100(Lcom/android/server/SystemDestroyWatchdog;)V

    .line 260
    :cond_0
    return-void
.end method
