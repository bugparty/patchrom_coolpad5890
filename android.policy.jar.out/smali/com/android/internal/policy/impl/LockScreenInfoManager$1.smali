.class Lcom/android/internal/policy/impl/LockScreenInfoManager$1;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;->requestUnlockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$1;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$1;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->goDistanceUnLockScreen(I)V

    .line 907
    return-void
.end method
