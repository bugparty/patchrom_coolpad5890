.class Lcom/yulong/android/poweroff/PowerOffManagerService$3;
.super Ljava/lang/Object;
.source "PowerOffManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;->processSystemShutdown()V
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
    .line 926
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$3;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 931
    const-string v0, "PowerOffManager"

    const-string v1, "mAsyncMountSDcardHandler/run-unmount sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$3;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    const/4 v1, 0x0

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->mountSDcard(Z)V
    invoke-static {v0, v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$100(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)V

    .line 933
    return-void
.end method
