.class public abstract Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;
.super Landroid/widget/FrameLayout;
.source "ExtLockScreenLoader.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ExtLockScreenLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtLockScreen"
.end annotation


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCreationOrientation:I

.field private mKeyboardHidden:I

.field private mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->setFocusableInTouchMode(Z)V

    .line 52
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->setDescendantFocusability(I)V

    .line 53
    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 104
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method protected final getBatteryLevel()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final goToUnlockScreen()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 74
    :cond_0
    return-void
.end method

.method protected final isDevicePluggedIn()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->updateConfiguration()V

    .line 113
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 117
    const-string v0, "ExtLockScreenLoader"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->updateConfiguration()V

    .line 120
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onPhoneStateChangedInner(I)V

    .line 135
    return-void
.end method

.method protected abstract onPhoneStateChangedInner(I)V
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onRefreshBatteryInfoInner(ZZI)V

    .line 143
    return-void
.end method

.method protected abstract onRefreshBatteryInfoInner(ZZI)V
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onRefreshCarrierInfoInner(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method protected abstract onRefreshCarrierInfoInner(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onRingerModeChangedInner(I)V

    .line 158
    return-void
.end method

.method protected abstract onRingerModeChangedInner(I)V
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onSimStateChangedInner(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected abstract onSimStateChangedInner(Ljava/lang/String;)V
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->onTimeChangedInner()V

    .line 165
    return-void
.end method

.method protected abstract onTimeChangedInner()V
.end method

.method protected final pokeWakeLock()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 80
    :cond_0
    return-void
.end method

.method protected final pokeWakeLock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 58
    iput-object p2, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 59
    iput-object p3, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mConfiguration:Landroid/content/res/Configuration;

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mKeyboardHidden:I

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;->mCreationOrientation:I

    .line 68
    :cond_1
    return-void
.end method
