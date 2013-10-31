.class Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;
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
    .line 275
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    const-string v1, "SystemDestroy"

    const-string v2, "verifySystemDestroy Thread run()..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #calls: Lcom/android/server/SystemDestroyWatchdog;->verifySystemInitDestroy()Z
    invoke-static {v1}, Lcom/android/server/SystemDestroyWatchdog;->access$300(Lcom/android/server/SystemDestroyWatchdog;)Z

    move-result v0

    .line 284
    .local v0, bVerifyOK:Z
    if-nez v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    const-string v2, "persist.yulong.file.failure"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I
    invoke-static {v1, v2}, Lcom/android/server/SystemDestroyWatchdog;->access$402(Lcom/android/server/SystemDestroyWatchdog;I)I

    .line 286
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/SystemDestroyWatchdog;->access$412(Lcom/android/server/SystemDestroyWatchdog;I)I

    .line 287
    const-string v1, "persist.yulong.file.failure"

    iget-object v2, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v2, v2, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I
    invoke-static {v2}, Lcom/android/server/SystemDestroyWatchdog;->access$400(Lcom/android/server/SystemDestroyWatchdog;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->this$1:Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #calls: Lcom/android/server/SystemDestroyWatchdog;->notifyUIErrorMessage()V
    invoke-static {v1}, Lcom/android/server/SystemDestroyWatchdog;->access$100(Lcom/android/server/SystemDestroyWatchdog;)V

    .line 292
    :cond_0
    return-void
.end method
