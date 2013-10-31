.class public Lcom/android/gallery3d/a/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpClient"

.field private static final zb:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;

.field private final zc:Landroid/hardware/usb/UsbManager;

.field private final zd:Ljava/util/HashMap;

.field private final ze:Ljava/util/ArrayList;

.field private final zf:Ljava/util/ArrayList;

.field private final zg:Landroid/app/PendingIntent;

.field private final zh:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->ze:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->zf:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/android/gallery3d/a/bl;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/bl;-><init>(Lcom/android/gallery3d/a/bs;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->zh:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object p1, p0, Lcom/android/gallery3d/a/bs;->mContext:Landroid/content/Context;

    .line 168
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->zc:Landroid/hardware/usb/UsbManager;

    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bs;->zg:Landroid/app/PendingIntent;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zh:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/bs;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/gallery3d/a/bs;->b(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/a/bs;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    move v2, v1

    .line 150
    :goto_0
    if-ge v2, v3, :cond_1

    .line 151
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 158
    :goto_1
    return v0

    .line 150
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 158
    goto :goto_1
.end method

.method private b(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 3
    .parameter

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {p1}, Lcom/android/gallery3d/a/bs;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->ze:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zc:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zc:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/gallery3d/a/bs;->zg:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->ze:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zc:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_3

    .line 197
    new-instance v0, Landroid/mtp/MtpDevice;

    invoke-direct {v0, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->ze:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/a/bs;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zf:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v2

    .line 368
    if-nez v2, :cond_1

    .line 390
    :cond_0
    return-object v0

    .line 371
    :cond_1
    if-nez p3, :cond_2

    .line 373
    const/4 p3, -0x1

    .line 375
    :cond_2
    invoke-virtual {v2, p2, v1, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v3

    .line 376
    if-eqz v3, :cond_0

    .line 380
    array-length v4, v3

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    :goto_0
    if-ge v1, v4, :cond_0

    .line 383
    aget v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v5

    .line 384
    if-nez v5, :cond_3

    .line 385
    const-string v5, "MtpClient"

    const-string v6, "getObjectInfo failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public a(Lcom/android/gallery3d/a/by;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public aA(I)Landroid/mtp/MtpDevice;
    .locals 3
    .parameter

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/android/gallery3d/a/by;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;II)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zh:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public f(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 332
    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public fh()Ljava/util/List;
    .locals 5

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zc:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 282
    iget-object v3, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lcom/android/gallery3d/a/bs;->b(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public g(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 347
    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->deleteObject(I)Z

    move-result v0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;I)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 419
    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bs;->zd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    monitor-exit v1

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/bs;->v(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v2

    .line 300
    if-nez v2, :cond_1

    .line 318
    :cond_0
    return-object v0

    .line 303
    :cond_1
    invoke-virtual {v2}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v3

    .line 304
    if-eqz v3, :cond_0

    .line 308
    array-length v4, v3

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 311
    aget v5, v3, v1

    invoke-virtual {v2, v5}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v5

    .line 312
    if-nez v5, :cond_2

    .line 313
    const-string v5, "MtpClient"

    const-string v6, "getStorageInfo failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
