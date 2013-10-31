.class Lcom/android/internal/policy/impl/LockScreenInfoManager$9;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1626
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1636
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->whichCheckedKey:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v2

    const/4 v3, 0x4

    aget-boolean v2, v2, v3

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mIsRandomUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2202(Lcom/android/internal/policy/impl/LockScreenInfoManager;Z)Z

    .line 1639
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "whichBg"

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1640
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1642
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1643
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenWidgetChoice:Lcom/android/internal/policy/impl/LockScreenWidgetChoice;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2400(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenWidgetChoice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$9;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mWhichWidgetBg:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2300(Lcom/android/internal/policy/impl/LockScreenInfoManager;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/LockScreenWidgetChoice;->showWidgets([ZIZ)V

    .line 1645
    :cond_1
    return-void
.end method
