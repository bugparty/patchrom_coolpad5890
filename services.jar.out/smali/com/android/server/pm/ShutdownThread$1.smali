.class final Lcom/android/server/pm/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManager;->getInstance()Lcom/yulong/android/poweroff/PowerOffManager;

    move-result-object v1

    .line 269
    .local v1, poweroffmanager:Lcom/yulong/android/poweroff/PowerOffManager;
    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffManager;->isNeedFastShut()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$000()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_0

    .line 271
    const-string v2, "yulong.fbanim.complete"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->cpGoHome(Landroid/content/Context;)Z
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread;->access$100(Landroid/content/Context;)Z

    .line 274
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    invoke-virtual {v1}, Lcom/yulong/android/poweroff/PowerOffManager;->shutdownSystem()Z

    .line 288
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread;->access$200(Landroid/content/Context;)V

    goto :goto_1
.end method
