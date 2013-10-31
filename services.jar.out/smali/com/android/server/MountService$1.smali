.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 560
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 563
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v8, v6}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;Z)Z

    .line 566
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v5, intentUsbUI:Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v8, "com.android.usbui"

    const-string v9, "com.android.usbui.UsbUIService"

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 569
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 576
    const-string v6, "simulator"

    const-string v8, "ro.product.device"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 577
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    const-string v9, "/sdcard"

    const/4 v10, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v6, v8, v9, v7, v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 736
    .end local v5           #intentUsbUI:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 581
    .restart local v5       #intentUsbUI:Landroid/content/Intent;
    :cond_1
    new-instance v6, Lcom/android/server/MountService$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_0

    .line 656
    .end local v5           #intentUsbUI:Landroid/content/Intent;
    :cond_2
    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, configChanged:Z
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v9, "connected"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v8, v9}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;Z)Z

    .line 668
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v9, "mass_storage"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v8, v9}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Z)Z

    .line 669
    const-string v8, "configured"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 670
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v8, v6}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Z)V

    .line 672
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUsbConnected:Z
    invoke-static {v6}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConfigUMS:Z
    invoke-static {v6}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 673
    :cond_3
    new-instance v6, Lcom/android/server/MountService$1$2;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$1$2;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$1$2;->start()V

    goto :goto_0

    :cond_4
    move v6, v7

    .line 670
    goto :goto_1

    .line 710
    .end local v1           #configChanged:Z
    :cond_5
    const-string v8, "yulong.intent.action.STATUS_BAR_EXPAND_VIEW_UPDATE_ICON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 711
    const-string v8, "setting"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, extra:Ljava/lang/String;
    const-string v8, "sdcard"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 713
    const/4 v4, 0x0

    .line 714
    .local v4, i:I
    const/4 v2, 0x0

    .line 715
    .local v2, count:I
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 716
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v8

    array-length v2, v8

    .line 718
    :cond_6
    if-lez v2, :cond_0

    .line 719
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "unmounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 720
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    .line 721
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "unmounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 722
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v7, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    .line 720
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 725
    :cond_8
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v2, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 726
    add-int/lit8 v4, v2, -0x1

    :goto_3
    if-ltz v4, :cond_0

    .line 727
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 728
    iget-object v8, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mRemovablePaths:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 726
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method
