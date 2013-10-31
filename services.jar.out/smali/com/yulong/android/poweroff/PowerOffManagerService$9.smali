.class Lcom/yulong/android/poweroff/PowerOffManagerService$9;
.super Ljava/lang/Thread;
.source "PowerOffManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/poweroff/PowerOffManagerService;->systemReady(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;


# direct methods
.method constructor <init>(Lcom/yulong/android/poweroff/PowerOffManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1642
    const-string v2, "PowerOffManager"

    const-string v3, "systemReady Monitor Thread Run!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const-string v2, "yulong.fbanim.complete"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :goto_0
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isKernelScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    const-string v2, "PowerOffManager"

    const-string v3, "systemReady isKernelScreenOn!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2400(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1650
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isLauncherReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1651
    const-string v2, "PowerOffManager"

    const-string v3, "systemReady isKernelScreenOn isLauncherReady!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2500(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I

    .line 1654
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->setSystemBootComplete()V

    .line 1656
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1658
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V
    invoke-static {v2, v6}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2700(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)V

    .line 1660
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    iget-object v2, v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootAnimation()I

    .line 1663
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :goto_1
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    iget-object v2, v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 1673
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->waitUntilModemInitComplete()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1674
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2900(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1675
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 1676
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1681
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1763
    :goto_2
    return-void

    .line 1664
    :catch_0
    move-exception v0

    .line 1666
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1685
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "PowerOffManager"

    const-string v3, "systemReady Not isKernelScreenOn !!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isLauncherReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1690
    const-string v2, "PowerOffManager"

    const-string v3, "systemReady Not isKernelScreenOn isLauncherReady!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->waitUntilModemInitComplete()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1697
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->isKernelScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1698
    const-string v2, "PowerOffManager"

    const-string v3, "isKernelScreenOn!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_NORMAL:I

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2500(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I

    .line 1700
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->setSystemBootComplete()V

    .line 1702
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->userActivityWithBackLight()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3300(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1704
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1706
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->setSystemSoundMute(Z)V
    invoke-static {v2, v6}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2700(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)V

    .line 1708
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    iget-object v2, v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->startBootAnimation()I

    .line 1711
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1717
    :goto_3
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    iget-object v2, v2, Lcom/yulong/android/poweroff/PowerOffManagerService;->mSocket:Lcom/yulong/android/poweroff/PowerOffSocket;

    invoke-virtual {v2}, Lcom/yulong/android/poweroff/PowerOffSocket;->clearSystemState()I

    .line 1721
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->waitUntilModemInitComplete()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1722
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->notifyModemStartNet()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2900(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1723
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3000(Lcom/yulong/android/poweroff/PowerOffManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 1724
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemBootIntent()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1729
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1712
    :catch_1
    move-exception v0

    .line 1714
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1733
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Lcom/yulong/android/poweroff/SilenceReboot;->setSystemBootComplete()V

    .line 1735
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    sget v3, Lcom/yulong/android/poweroff/PowerOffManager;->SYSTEM_STATE_SHUTDOWN:I

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updateSystemState(I)I
    invoke-static {v2, v3}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2500(Lcom/yulong/android/poweroff/PowerOffManagerService;I)I

    .line 1736
    const-string v2, "PowerOffManager"

    const-string v3, "updateSystemState!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-static {}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3400()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1739
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1742
    :cond_2
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->scheduleAlarmTimer()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3500(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1743
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->sendSystemShutIntent()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1744
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->scheduleLongIdleShutSystemTimer()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3700(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1748
    const-wide/16 v2, 0x32

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1754
    :goto_4
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->shutBluetoothandWifi()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3800(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1756
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->finishSystemInit()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2600(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1757
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #setter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mNeedModemInit:Z
    invoke-static {v2, v5}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3902(Lcom/yulong/android/poweroff/PowerOffManagerService;Z)Z

    .line 1758
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #getter for: Lcom/yulong/android/poweroff/PowerOffManagerService;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$3200(Lcom/yulong/android/poweroff/PowerOffManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1760
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->updatePowerChargingState()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$2100(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    .line 1761
    iget-object v2, p0, Lcom/yulong/android/poweroff/PowerOffManagerService$9;->this$0:Lcom/yulong/android/poweroff/PowerOffManagerService;

    #calls: Lcom/yulong/android/poweroff/PowerOffManagerService;->gotoSleepWithBackLight()V
    invoke-static {v2}, Lcom/yulong/android/poweroff/PowerOffManagerService;->access$1000(Lcom/yulong/android/poweroff/PowerOffManagerService;)V

    goto/16 :goto_2

    .line 1749
    :catch_2
    move-exception v1

    .line 1751
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 1768
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1769
    const-string v2, "PowerOffManager"

    const-string v3, "Silence Reboot waiting 500ms for Boot Completed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1770
    :catch_3
    move-exception v0

    .line 1772
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
