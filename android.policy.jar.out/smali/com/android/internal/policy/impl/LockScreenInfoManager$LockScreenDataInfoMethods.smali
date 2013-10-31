.class Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockScreenDataInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenDataInfoMethods"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "localCityName"
    .parameter "localCityTime"
    .parameter "localCityDate"
    .parameter "appointCityName"
    .parameter "appointCityTime"
    .parameter "appointCityDate"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "......lockscreenInfoManager call back refreshDoubleTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateDoubleTimeData(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method

.method public ringerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 260
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 261
    .local v0, silent:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$802(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 265
    :cond_0
    return-void

    .line 260
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardBackground()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->setKeyguardBitmap()V

    .line 276
    return-void
.end method

.method public showDoubleTime(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "......lockscreenInfoManager call back showDoubleTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->showDoubleTimeWidget(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public showMusicWidget(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->addMusicWidget(Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public showUnreadCalendarNum(I)V
    .locals 5
    .parameter "shownum"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadcalendar:I
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$602(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I

    .line 217
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    const v4, 0x10202c2

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$102(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;)Landroid/view/View;

    .line 218
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 220
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 221
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 223
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadCalendaNum(I)V

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 229
    :cond_0
    return-void
.end method

.method public showUnreadEmailNum(I)V
    .locals 5
    .parameter "shownum"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreademail:I
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$502(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    const v4, 0x10202c2

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$102(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;)Landroid/view/View;

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 201
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 202
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadEmailNum(I)V

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 211
    :cond_0
    return-void
.end method

.method public showUnreadPhoneNum(I)V
    .locals 5
    .parameter "shownum"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadphone:I
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$402(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I

    .line 180
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    const v4, 0x10202c2

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$102(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;)Landroid/view/View;

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 183
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 184
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnReadPhone(I)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 192
    :cond_0
    return-void
.end method

.method public showUnreadSmsNum(I)V
    .locals 5
    .parameter "shownum"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->unreadsms:I
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$002(Lcom/android/internal/policy/impl/LockScreenInfoManager;I)I

    .line 162
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    const v4, 0x10202c2

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$102(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/view/View;)Landroid/view/View;

    .line 163
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidget:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 165
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 166
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$GlowPadViewMethods;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->updateResources()V

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setUnreadSmsNum(I)V

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateMessageBoxData()V

    .line 175
    :cond_0
    return-void
.end method

.method public showWeather(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "bitmap"
    .parameter "weatherPrompt"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->setWeatherBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetManager:Lcom/android/internal/policy/impl/LockScreenWidgetManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->updateWeatherBitmapResourse()V

    .line 238
    :cond_0
    return-void
.end method

.method public unLockWidgetMethodReset(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->ad:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->reset(Z)V

    .line 255
    return-void
.end method

.method public unlockWidgetCommonMethodsPing()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$LockScreenDataInfoMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;->ping()V

    .line 271
    return-void
.end method
