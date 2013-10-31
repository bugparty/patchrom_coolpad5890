.class Lcom/android/internal/policy/impl/LockScreenInfoManager$5;
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
    .line 1442
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 1448
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "survey"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1449
    .local v2, mSharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1450
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 1451
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v5

    aget-boolean v5, v5, v1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v5

    const/4 v6, 0x5

    aget-boolean v5, v5, v6

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsRandomUnlock:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    .line 1454
    const-string v4, "whichBg"

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1457
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1458
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v6

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/policy/impl/LockScreenWidgetChoice;->showWidgets([ZIZ)V

    .line 1460
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mDialogView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2500(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iput-boolean v7, v4, Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsDialogShoing:Z

    .line 1462
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1700(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 1463
    .local v3, statusManager:Landroid/app/StatusBarManager;
    if-eqz v3, :cond_2

    .line 1464
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v4, v7

    .line 1465
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$5;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v4

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecureScreen:Z

    if-nez v4, :cond_2

    .line 1466
    invoke-virtual {v3, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1469
    :cond_2
    return-void
.end method
