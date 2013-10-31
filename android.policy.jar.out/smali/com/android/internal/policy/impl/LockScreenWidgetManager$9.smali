.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "LockScreenWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1628
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1634
    return-void
.end method

.method public onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "tzAlbumArtP"
    .parameter "bPlayingMusicP"
    .parameter "strSongNameP"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHasMusicUIView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2802(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1562
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bPlayingMusic:Z
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3402(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Z)Z

    .line 1563
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2702(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->onShowPicture(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->onPlayOrPause(Z)V

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->onShowSongName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1622
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateStatus()V

    .line 1530
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateCarrier()V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateStatus()V

    .line 1586
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1592
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1616
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1610
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 3
    .parameter "mshowmusic"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mHasMusicUIView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3200(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3302(Lcom/android/internal/policy/impl/LockScreenWidgetManager;Z)Z

    .line 1546
    const-string v0, "LockScreenWidgetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowMusic bShowMusicWidget ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->bShowMusicWidget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$3300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showMusicUI()V

    goto :goto_0

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->closeMusicUI()V

    goto :goto_0
.end method

.method public onShowPhoneNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1604
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 1598
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateDate()V

    .line 1536
    return-void
.end method

.method public onWeatherInfoUpated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "cityName"
    .parameter "strMinDegree"
    .parameter "strMaxDegree"
    .parameter "strWeatherRdes"
    .parameter "weatherType"
    .parameter "strExpDetail"

    .prologue
    .line 1575
    return-void
.end method
