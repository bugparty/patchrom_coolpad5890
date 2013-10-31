.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "tzAlbumArtP"
    .parameter "bPlayingMusicP"
    .parameter "strSongNameP"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHasMusicUIView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->tzAlbumArt:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Ljava/lang/String;

    .line 967
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->bPlayingMusic:Z
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 968
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->strSongName:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/String;)Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onShowPicture(Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPlayOrPause(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onShowSongName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 957
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 905
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 906
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 907
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 908
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 909
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 910
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1102(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 950
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V

    .line 951
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 926
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 923
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 1
    .parameter "mshowmusic"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHasMusicUIView:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->bShowMusicWidget:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->bShowMusicWidget:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->showMusicUI()V

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->closeMusicUI()V

    goto :goto_0
.end method

.method public onShowPhoneNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 920
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 0
    .parameter "shownum"

    .prologue
    .line 918
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 915
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
    .line 929
    return-void
.end method
