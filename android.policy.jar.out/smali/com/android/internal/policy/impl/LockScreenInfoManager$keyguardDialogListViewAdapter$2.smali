.class Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;Landroid/widget/CheckBox;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->this$1:Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1580
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1582
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->this$1:Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$position:I

    aput-boolean v2, v0, v1

    .line 1587
    :goto_0
    return-void

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->this$1:Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$keyguardDialogListViewAdapter$2;->val$position:I

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
