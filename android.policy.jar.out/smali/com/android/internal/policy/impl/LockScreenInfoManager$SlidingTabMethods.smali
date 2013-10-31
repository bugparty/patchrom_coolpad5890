.class Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabMethods"
.end annotation


# instance fields
.field private final mSlidingTab:Lcom/android/internal/widget/SlidingTab;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/SlidingTab;)V
    .locals 0
    .parameter
    .parameter "slidingTab"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    .line 330
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 397
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 392
    const/4 v0, -0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 362
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isSilentMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1200(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$802(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1040328

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 370
    :cond_0
    if-eqz p2, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->pokeWake()V

    .line 374
    :cond_1
    return-void

    .line 364
    :cond_2
    const v0, 0x1040329

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v1, 0x2

    .line 350
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goTargetUnLockScreen(I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    if-ne p2, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenInfoManager;->toggleRingMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->pokeWake()V

    goto :goto_0
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    .line 382
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 389
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$900(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 336
    .local v0, vibe:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->mSlidingTab:Lcom/android/internal/widget/SlidingTab;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x10802d6

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x10803aa

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1080393

    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$SlidingTabMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSilentMode:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x10803a6

    :goto_4
    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 346
    return-void

    .line 333
    .end local v0           #vibe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    .restart local v0       #vibe:Z
    :cond_1
    const v1, 0x10802d3

    goto :goto_1

    :cond_2
    const v1, 0x10802d4

    goto :goto_1

    :cond_3
    const v2, 0x10803a7

    goto :goto_2

    :cond_4
    const v3, 0x1080392

    goto :goto_3

    :cond_5
    const v4, 0x10803a5

    goto :goto_4
.end method
