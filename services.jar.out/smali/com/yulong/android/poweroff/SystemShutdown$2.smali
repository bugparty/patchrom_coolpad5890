.class Lcom/yulong/android/poweroff/SystemShutdown$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/poweroff/SystemShutdown;->processFastShutdown(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/poweroff/SystemShutdown;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/SystemShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yulong/android/poweroff/SystemShutdown$2;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yulong/android/poweroff/SystemShutdown$2;->this$0:Lcom/yulong/android/poweroff/SystemShutdown;

    invoke-virtual {v0}, Lcom/yulong/android/poweroff/SystemShutdown;->actionDone()V

    .line 217
    return-void
.end method
