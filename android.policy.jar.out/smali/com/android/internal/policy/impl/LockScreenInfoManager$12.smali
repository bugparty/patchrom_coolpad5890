.class Lcom/android/internal/policy/impl/LockScreenInfoManager$12;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;->showMultiChoiceDialog()V
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
    .line 1668
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1673
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/LockScreenStatusInfo;->sendBroadCastStatuBar(Z)V

    .line 1674
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1675
    .local v0, statusManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v4

    .line 1677
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecureScreen:Z

    if-nez v1, :cond_0

    .line 1678
    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1682
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$12;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iput-boolean v5, v1, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 1683
    return-void
.end method
