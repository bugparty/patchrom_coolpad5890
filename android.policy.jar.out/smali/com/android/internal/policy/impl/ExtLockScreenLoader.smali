.class public Lcom/android/internal/policy/impl/ExtLockScreenLoader;
.super Ljava/lang/Object;
.source "ExtLockScreenLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCKSCREEN_PKG:Ljava/lang/String; = "com.yulong.android.lockscreen"

.field private static final LOGE:Z = true

.field private static final TAG:Ljava/lang/String; = "ExtLockScreenLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getLockScreen(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;
    .locals 10
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    .line 20
    const/4 v2, 0x0

    .line 22
    .local v2, extLockScreen:Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;
    :try_start_0
    const-string v6, "com.yulong.android.lockscreen"

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 24
    .local v4, lockscreenContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.yulong.android.lockscreen.LockscreenManager"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 26
    .local v3, lmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getLockScreen"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 27
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/policy/impl/ExtLockScreenLoader$ExtLockScreen;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-eqz v2, :cond_0

    .line 35
    .end local v3           #lmClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #lockscreenContext:Landroid/content/Context;
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v1

    .line 33
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
