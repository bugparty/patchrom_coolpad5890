.class Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Lcom/android/internal/widget/WaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreenInfoManager$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveViewMethods"
.end annotation


# instance fields
.field private final mWaveView:Lcom/android/internal/widget/WaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;Lcom/android/internal/widget/WaveView;)V
    .locals 0
    .parameter
    .parameter "waveView"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    .line 406
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 444
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 440
    const/4 v0, -0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 419
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->pokeWake(I)V

    .line 423
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 409
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #calls: Lcom/android/internal/policy/impl/LockScreenInfoManager;->requestUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V

    .line 412
    :cond_0
    return-void
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/WaveView;->reset()V

    .line 433
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 438
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method
