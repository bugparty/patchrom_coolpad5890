.class public Lcom/android/server/LightsService;
.super Landroid/os/ILightService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final BBL_BRIGHTNESS_URI:Landroid/net/Uri; = null

.field private static final BBL_ENABLE_URI:Landroid/net/Uri; = null

.field private static final BBL_TIMEOUT_URI:Landroid/net/Uri; = null

.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEF_BBL_BRIGHTNESS:I = 0x2

.field public static final DEF_BBL_TIMEOUT:I = 0x5dc

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mButtonBrightness:I

.field private mButtonLightEnable:Z

.field private mButtonLightTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "button_light_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->BBL_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "button_light_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->BBL_ENABLE_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "button_light_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->BBL_TIMEOUT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x5dc

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 231
    invoke-direct {p0}, Landroid/os/ILightService$Stub;-><init>()V

    .line 66
    new-array v1, v7, [Lcom/android/server/LightsService$Light;

    iput-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 79
    iput v8, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    .line 80
    iput-boolean v2, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    .line 81
    iput v6, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    .line 82
    iput-object v9, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 196
    new-instance v1, Lcom/android/server/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 302
    new-instance v1, Lcom/android/server/LightsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$6;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 233
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 234
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 236
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/server/LightsService;->BBL_ENABLE_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/LightsService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "button_light_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    .line 250
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/server/LightsService;->BBL_BRIGHTNESS_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/LightsService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "button_light_brightness"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    .line 263
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/server/LightsService;->BBL_TIMEOUT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/LightsService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_light_timeout"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    .line 274
    new-instance v1, Lcom/android/server/LightsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$5;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 286
    const-string v1, "hardware"

    iget-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$Light;

    invoke-direct {v2, p0, v0, v9}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v2, v1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$200(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 38
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/LightsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/LightsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    return p1
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 294
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 295
    invoke-super {p0}, Landroid/os/ILightService$Stub;->finalize()V

    .line 296
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBrightnessButtonLight(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    const/4 v1, 0x2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method public setBrightnessButtonLightOneShot(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    goto :goto_0
.end method

.method public turnOffButtonLight()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 98
    return-void
.end method

.method public turnOnButtonLight()V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 86
    return-void
.end method

.method public turnOnButtonLightOneShot()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->setBrightnessButtonLightOneShot(I)V

    .line 102
    return-void
.end method
