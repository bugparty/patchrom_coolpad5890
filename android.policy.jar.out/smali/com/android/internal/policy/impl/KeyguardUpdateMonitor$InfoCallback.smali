.class public interface abstract Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoCallback"
.end annotation


# virtual methods
.method public abstract OnrefreshDoubleTime(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract onClockVisibilityChanged()V
.end method

.method public abstract onDevicePolicyManagerStateChanged()V
.end method

.method public abstract onDeviceProvisioned()V
.end method

.method public abstract onDualStateChanged(Z)V
.end method

.method public abstract onMusicInfoUpated(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract onPhoneStateChanged(I)V
.end method

.method public abstract onRefreshBatteryInfo(ZZI)V
.end method

.method public abstract onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract onRingerModeChanged(I)V
.end method

.method public abstract onSetKeyguardBg()V
.end method

.method public abstract onShowCalendarNum(I)V
.end method

.method public abstract onShowEmailNum(I)V
.end method

.method public abstract onShowMusic(Z)V
.end method

.method public abstract onShowPhoneNum(I)V
.end method

.method public abstract onShowSmsNum(I)V
.end method

.method public abstract onStatusBarStartUp()V
.end method

.method public abstract onTimeChanged()V
.end method

.method public abstract onUserChanged(I)V
.end method

.method public abstract onWeatherInfoUpated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method
