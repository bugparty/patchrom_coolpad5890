.class final Landroid/view/ylVolumePanel$1;
.super Ljava/lang/Thread;
.source "ylVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ylVolumePanel;->playSound(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pathSound:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Landroid/view/ylVolumePanel$1;->val$pathSound:Ljava/lang/String;

    iput p2, p0, Landroid/view/ylVolumePanel$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    sget-boolean v2, Landroid/view/ylVolumePanel;->LOG_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ylVolumePanel"

    const-string v3, "begin play ring sound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 88
    .local v1, mp:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v2, p0, Landroid/view/ylVolumePanel$1;->val$pathSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 89
    iget v2, p0, Landroid/view/ylVolumePanel$1;->val$type:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 90
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 91
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 92
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 98
    :cond_1
    const-string/jumbo v2, "ylVolumePanel"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
