.class Lcom/android/internal/policy/impl/LockScreenInfoManager$7;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;->showDialog()V
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
    .line 1493
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x0

    .line 1498
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "survey"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1499
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1500
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iput-boolean v7, v3, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 1504
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 1505
    .local v2, statusManager:Landroid/app/StatusBarManager;
    if-eqz v2, :cond_1

    .line 1506
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 1507
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$7;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecureScreen:Z

    if-nez v3, :cond_1

    .line 1508
    invoke-virtual {v2, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1511
    :cond_1
    return v7
.end method
