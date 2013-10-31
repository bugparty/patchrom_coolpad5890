.class Lcom/android/internal/policy/impl/PatternUnlockScreen$3;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "PatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public OnrefreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    .line 290
    const-string v0, "UnlockScreen"

    const-string v1, "...... call back OnrefreshDoubleTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateDoubleTimeData(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onDualStateChanged(Z)V
    .locals 2
    .parameter "isManyou"

    .prologue
    .line 301
    const-string v0, "UnlockScreen"

    const-string v1, "......lockscreen call back onDualStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showDoubleTimeWidget(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "tzAlbumArtP"
    .parameter "bPlayingMusicP"
    .parameter "strSongNameP"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;->onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V

    .line 225
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadCalendaNum(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 282
    :cond_0
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadEmailNum(I)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 273
    :cond_0
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 1
    .parameter "mshowmusic"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->addMusicWidget(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public onShowPhoneNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnReadPhone(I)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 264
    :cond_0
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadSmsNum(I)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 255
    :cond_0
    return-void
.end method

.method public onWeatherInfoUpated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "cityName"
    .parameter "strMinDegree"
    .parameter "strMaxDegree"
    .parameter "strWeatherRdes"
    .parameter "weatherType"
    .parameter "strExpDetail"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->cityNameSave:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$302(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getWeatherBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 242
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, v6, p6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setWeatherBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateWeatherBitmapResourse()V

    .line 246
    :cond_0
    return-void
.end method
