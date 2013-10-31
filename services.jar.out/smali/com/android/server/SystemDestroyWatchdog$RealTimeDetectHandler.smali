.class final Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;
.super Landroid/os/Handler;
.source "SystemDestroyWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemDestroyWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RealTimeDetectHandler"
.end annotation


# static fields
.field public static final REALTIME_DETECT_EVENT:I = 0x1

.field public static final SYSTEM_INIT_DETECT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemDestroyWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/SystemDestroyWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 243
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const-string v1, "SystemDestroy"

    const-string v2, "RealTimeDetectHandler REALTIME_DETECT_EVENT..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;-><init>(Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;)V

    invoke-virtual {v1}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$1;->start()V

    .line 265
    invoke-virtual {p0, v3}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, nmsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog;->mDetectHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/SystemDestroyWatchdog;->access$200()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 273
    .end local v0           #nmsg:Landroid/os/Message;
    :pswitch_1
    const-string v1, "SystemDestroy"

    const-string v2, "RealTimeDetectHandler SYSTEM_INIT_DETECT_EVENT..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;-><init>(Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;)V

    invoke-virtual {v1}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler$2;->start()V

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 297
    .restart local v0       #nmsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SystemDestroyWatchdog$RealTimeDetectHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    iget-object v1, v1, Lcom/android/server/SystemDestroyWatchdog;->mDetectHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/SystemDestroyWatchdog;->access$200()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
