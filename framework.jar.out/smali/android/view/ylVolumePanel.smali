.class public final Landroid/view/ylVolumePanel;
.super Ljava/lang/Object;
.source "ylVolumePanel.java"


# static fields
.field static LOG_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ylVolumePanel"

.field static mContext:Landroid/content/Context;

.field private static mVibrator:Landroid/os/Vibrator;

.field static path_ogg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static playSound(Ljava/lang/String;I)V
    .locals 2
    .parameter "pathSound"
    .parameter "type"

    .prologue
    .line 78
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    sget-boolean v0, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "ylVolumePanel"

    const-string/jumbo v1, "sidekey play before systemready "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Landroid/view/ylVolumePanel$1;

    invoke-direct {v0, p0, p1}, Landroid/view/ylVolumePanel$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/view/ylVolumePanel$1;->start()V

    goto :goto_0
.end method

.method public static stopPlay()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public static switchPlaySound(IILandroid/os/Vibrator;)V
    .locals 5
    .parameter "volume"
    .parameter "type"
    .parameter "vibrator"

    .prologue
    .line 50
    sput-object p2, Landroid/view/ylVolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 52
    sget-boolean v1, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ylVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRingVolume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eqz p0, :cond_1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/ui/sidekey_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/ylVolumePanel;->path_ogg:Ljava/lang/String;

    .line 57
    :cond_1
    const-string/jumbo v1, "persist.sys.aidpack.switch"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, state:I
    const-string/jumbo v1, "ylVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.aidpack.switch is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez v0, :cond_3

    .line 60
    sget-object v1, Landroid/view/ylVolumePanel;->path_ogg:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/view/ylVolumePanel;->playSound(Ljava/lang/String;I)V

    .line 66
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 62
    const-string/jumbo v1, "ylVolumePanel"

    const-string v2, "VolumePanel setYLVibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v1, Landroid/view/ylVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Vibrator;->setYLVibrate(IJ)V

    goto :goto_0
.end method
