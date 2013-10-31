.class Lcom/android/internal/policy/impl/LockScreen$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

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
    .line 235
    const-string v0, "LockScreen"

    const-string v1, "...... call back OnrefreshDoubleTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->refreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenInfoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenInfoManager:Lcom/android/internal/policy/impl/LockScreenInfoManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->updateTargets()V

    .line 174
    :cond_0
    return-void
.end method

.method public onDualStateChanged(Z)V
    .locals 2
    .parameter "isManyou"

    .prologue
    .line 243
    const-string v0, "LockScreen"

    const-string v1, "......lockscreen call back onDualStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showDoubleTime(Z)V

    .line 245
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->ringerModeChanged(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public onSetKeyguardBg()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->setKeyguardBackground()V

    .line 183
    return-void
.end method

.method public onShowCalendarNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showUnreadCalendarNum(I)V

    .line 227
    return-void
.end method

.method public onShowEmailNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showUnreadEmailNum(I)V

    .line 220
    return-void
.end method

.method public onShowMusic(Z)V
    .locals 1
    .parameter "mshowmusic"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showMusicWidget(Z)V

    .line 180
    return-void
.end method

.method public onShowPhoneNum(I)V
    .locals 1
    .parameter "shownum"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showUnreadPhoneNum(I)V

    .line 213
    return-void
.end method

.method public onShowSmsNum(I)V
    .locals 3
    .parameter "shownum"

    .prologue
    .line 204
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------onShowSmsNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showUnreadSmsNum(I)V

    .line 206
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
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->cityNameSave:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockScreen;->access$202(Lcom/android/internal/policy/impl/LockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...........cityName1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...........strExpDetail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;->getWeatherBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 198
    .local v6, bit:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockScreenSurfaceData:Lcom/android/internal/policy/impl/LockScreenDataInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreenDataInfo;

    move-result-object v0

    invoke-interface {v0, v6, p6}, Lcom/android/internal/policy/impl/LockScreenDataInfo;->showWeather(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 199
    return-void
.end method
