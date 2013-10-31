.class Lcom/yulong/android/poweroff/PowerOffManagerService$7;
.super Ljava/lang/Thread;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;->silenceRecoverySystem()V
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
    .line 1112
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$7;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1117
    const-string v0, "PowerOffManager"

    const-string v1, "silenceRebootSystem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$7;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mShutdown:Lcom/yulong/android/poweroff/SystemShutdown;
    invoke-static {v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$300(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/yulong/android/poweroff/SystemShutdown;

    move-result-object v0

    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$7;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulong/android/poweroff/SystemShutdown;->silenceRecoverySystem(Landroid/content/Context;)V

    .line 1119
    return-void
.end method
