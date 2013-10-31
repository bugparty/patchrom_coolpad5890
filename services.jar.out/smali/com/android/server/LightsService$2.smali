.class Lcom/android/server/LightsService$2;
.super Landroid/database/ContentObserver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    iget-object v3, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_light_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_0
    #setter for: Lcom/android/server/LightsService;->mButtonLightEnable:Z
    invoke-static {v2, v0}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 242
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mButtonLightEnable:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/LightsService$2;->this$0:Lcom/android/server/LightsService;

    invoke-virtual {v0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    .line 245
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 240
    goto :goto_0
.end method
