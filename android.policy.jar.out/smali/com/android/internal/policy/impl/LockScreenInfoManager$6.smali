.class Lcom/android/internal/policy/impl/LockScreenInfoManager$6;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1472
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 1477
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "survey"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1478
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1479
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDefaultListItemValues:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2600(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iput-boolean v7, v3, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 1483
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 1484
    .local v2, statusManager:Landroid/app/StatusBarManager;
    if-eqz v2, :cond_1

    .line 1485
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v3, v7

    .line 1486
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecureScreen:Z

    if-nez v3, :cond_1

    .line 1487
    invoke-virtual {v2, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1490
    :cond_1
    return-void
.end method
