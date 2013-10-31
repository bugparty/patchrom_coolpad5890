.class Lcom/yulong/android/poweroff/PowerOffManagerService$1;
.super Ljava/lang/Object;
.source "PowerOffManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$1;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$1;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mSystemShuting:Z
    invoke-static {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "PowerOffManager"

    const-string v1, "shutdownSystem time out...runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 450
    :cond_0
    return-void
.end method
