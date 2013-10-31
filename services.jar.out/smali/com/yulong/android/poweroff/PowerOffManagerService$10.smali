.class Lcom/yulong/android/poweroff/PowerOffManagerService$10;
.super Landroid/telephony/PhoneStateListener;
.source "PowerOffManagerService.java"


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
    .line 1986
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$10;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 1989
    iget-object v1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$10;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z
    invoke-static {v1, v0}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$4002(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z

    .line 1990
    const-string v0, "PowerOffManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inAirplaneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$10;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->inAirplaneMode:Z
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$4000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    return-void

    .line 1989
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
