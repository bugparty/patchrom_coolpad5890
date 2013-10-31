.class Lcom/android/gallery3d/a/bl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic xH:Lcom/android/gallery3d/a/bs;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bs;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 75
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v1}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/bs;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v1}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/bs;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpDevice;

    .line 80
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v1, v0}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/bs;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v1

    .line 84
    :cond_0
    if-eqz v1, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->b(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/by;

    .line 86
    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/by;->a(Landroid/mtp/MtpDevice;)V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_1
    :try_start_1
    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    if-eqz v1, :cond_5

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/bs;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->c(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->d(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->b(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/by;

    .line 95
    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/by;->b(Landroid/mtp/MtpDevice;)V

    goto :goto_1

    .line 98
    :cond_2
    const-string v5, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    iget-object v2, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v2}, Lcom/android/gallery3d/a/bs;->c(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    const-string v2, "permission"

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 102
    const-string v5, "MtpClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_USB_PERMISSION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v2, :cond_4

    .line 104
    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v1, v0}, Lcom/android/gallery3d/a/bs;->a(Lcom/android/gallery3d/a/bs;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v1

    .line 107
    :cond_3
    if-eqz v1, :cond_5

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->b(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/by;

    .line 109
    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/by;->a(Landroid/mtp/MtpDevice;)V

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/a/bl;->xH:Lcom/android/gallery3d/a/bs;

    invoke-static {v0}, Lcom/android/gallery3d/a/bs;->d(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    return-void
.end method
