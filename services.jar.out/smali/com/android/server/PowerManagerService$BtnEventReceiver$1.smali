.class Lcom/android/server/PowerManagerService$BtnEventReceiver$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$BtnEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$BtnEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$BtnEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 4622
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;->this$1:Lcom/android/server/PowerManagerService$BtnEventReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;->this$1:Lcom/android/server/PowerManagerService$BtnEventReceiver;

    iget-object v0, v0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;->this$1:Lcom/android/server/PowerManagerService$BtnEventReceiver;

    iget-object v1, v1, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->getPreferredBrightness()I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4627
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BtnEventReceiver$1;->this$1:Lcom/android/server/PowerManagerService$BtnEventReceiver;

    iget-object v0, v0, Lcom/android/server/PowerManagerService$BtnEventReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)V

    .line 4628
    return-void
.end method
