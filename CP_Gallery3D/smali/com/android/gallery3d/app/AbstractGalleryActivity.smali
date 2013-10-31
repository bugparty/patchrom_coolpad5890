.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/bm;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"

.field public static ti:Landroid/os/storage/StorageManager; = null

.field private static tj:Z = false

.field static final tl:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static tn:Ljava/io/File;

.field private static final tq:Ljava/io/File;


# instance fields
.field private tg:Lcom/android/gallery3d/ui/GLRootView;

.field private th:Lcom/android/gallery3d/app/k;

.field private tk:Lcom/android/gallery3d/ui/ek;

.field private tm:Landroid/app/AlertDialog;

.field private to:Landroid/content/BroadcastReceiver;

.field private tp:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tj:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    .line 406
    const-string v0, "EXTERNALSD_STORAGE"

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tq:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lcom/android/gallery3d/ui/ek;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ek;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tk:Lcom/android/gallery3d/ui/ek;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    .line 65
    new-instance v0, Lcom/android/gallery3d/app/bc;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/bc;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->to:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tp:Landroid/content/IntentFilter;

    return-void
.end method

.method public static a(ZZZ)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x2

    .line 348
    const/4 v2, 0x0

    .line 349
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calRemaining(Ljava/lang/String;)J

    move-result-wide v3

    .line 350
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->calRemaining(Ljava/lang/String;)J

    move-result-wide v5

    .line 351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v7, "AbstractGalleryActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSdcardSpace   and  mExsdcardSpace  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz p2, :cond_3

    .line 355
    if-eqz p0, :cond_2

    cmp-long v3, v3, v10

    if-lez v3, :cond_2

    move-object v2, v0

    .line 368
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 369
    if-eqz p0, :cond_5

    .line 377
    :cond_1
    :goto_1
    const-string v1, "AbstractGalleryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVolumes  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-object v0

    .line 357
    :cond_2
    if-eqz p1, :cond_0

    cmp-long v3, v5, v10

    if-lez v3, :cond_0

    move-object v2, v1

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    if-eqz p1, :cond_4

    cmp-long v5, v5, v10

    if-lez v5, :cond_4

    move-object v2, v1

    .line 362
    goto :goto_0

    .line 363
    :cond_4
    if-eqz p0, :cond_0

    cmp-long v3, v3, v10

    if-lez v3, :cond_0

    move-object v2, v0

    .line 364
    goto :goto_0

    .line 371
    :cond_5
    if-eqz p1, :cond_1

    move-object v0, v1

    .line 372
    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 447
    .line 449
    :try_start_0
    const-string v0, "com.yulong.android.server.BugReportTrigger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 456
    :goto_0
    if-eqz v2, :cond_0

    .line 461
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 471
    :goto_1
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 475
    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 477
    const-string v1, "LaunchBugReportSystem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_0

    .line 481
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 483
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gallery_crash"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 507
    :cond_0
    :goto_2
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    .line 469
    goto :goto_1

    .line 466
    :catch_2
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 487
    :catch_3
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 490
    :catch_4
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 493
    :catch_5
    move-exception v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 496
    :catch_6
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 499
    :catch_7
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 502
    :catch_8
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static calRemaining(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 388
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 392
    float-to-long v0, v0

    .line 398
    :goto_0
    return-wide v0

    .line 394
    :catch_0
    move-exception v0

    .line 398
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static eb()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 305
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "enter getExternalCacheDirEx()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 309
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 310
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSdcard   and  isExsdcard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    if-nez v2, :cond_0

    .line 313
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {v0, v1, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(ZZZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Android/data"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.android.gallery3d/cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    .line 316
    sget-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    sget-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 321
    :cond_0
    sget-object v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 322
    new-instance v2, Ljava/io/File;

    invoke-static {v0, v1, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->a(ZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android/data/com.android.gallery3d/cache"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 327
    :cond_2
    sput-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    .line 328
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "Unable to create external cache directory"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tn:Ljava/io/File;

    goto :goto_0
.end method

.method public static g(J)J
    .locals 3
    .parameter

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 434
    long-to-float v0, p0

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    .line 435
    float-to-long v0, v0

    .line 440
    :goto_0
    return-wide v0

    :cond_0
    float-to-long v0, v0

    goto :goto_0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    if-nez v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalStorageDirectorySd()Ljava/io/File;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tq:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageStateSd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    :try_start_0
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string v0, "removed"

    goto :goto_0
.end method


# virtual methods
.method public cA()Lcom/android/gallery3d/ui/eh;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public declared-synchronized dO()Lcom/android/gallery3d/app/k;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->th:Lcom/android/gallery3d/app/k;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/gallery3d/app/k;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/k;-><init>(Lcom/android/gallery3d/app/bm;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->th:Lcom/android/gallery3d/app/k;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->th:Lcom/android/gallery3d/app/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dP()Lcom/android/gallery3d/ui/ek;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tk:Lcom/android/gallery3d/ui/ek;

    return-object v0
.end method

.method public dQ()Lcom/android/gallery3d/app/cl;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    return-object v0
.end method

.method public dR()Lcom/android/gallery3d/app/ag;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public dt()Lcom/android/gallery3d/a/af;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dt()Lcom/android/gallery3d/a/af;

    move-result-object v0

    return-object v0
.end method

.method public du()Lcom/android/gallery3d/a/ao;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public dv()Landroid/content/Context;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method public dw()Lcom/android/gallery3d/b/n;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    return-object v0
.end method

.method protected ea()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->to:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    :cond_0
    return-void
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fY()V

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/k;->a(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->th:Lcom/android/gallery3d/app/k;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/k;->a(Landroid/content/res/Configuration;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fY()V

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->pause()V

    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ao;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fY()V

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->resume()V

    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ao;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    .line 200
    return-void

    .line 197
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fY()V

    .line 80
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/k;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->fZ()V

    throw v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 154
    invoke-static {}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->eb()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/gallery3d/app/bd;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/bd;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 161
    new-instance v1, Lcom/android/gallery3d/app/bb;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/bb;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 168
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00e1

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00e2

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->to:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tp:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->to:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tm:Landroid/app/AlertDialog;

    .line 187
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 133
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->tg:Lcom/android/gallery3d/ui/GLRootView;

    .line 134
    return-void
.end method
