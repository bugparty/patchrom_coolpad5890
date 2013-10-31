.class Lcom/android/internal/policy/impl/LockScreenInfoManager$10;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 1619
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mLockScreenStatusInfo:Lcom/android/internal/policy/impl/LockScreenStatusInfo;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1000(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Lcom/android/internal/policy/impl/LockScreenStatusInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->dispatchOntouchEvent(I)V

    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$10;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->isItemsChecked:[Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$2100(Lcom/android/internal/policy/impl/LockScreenInfoManager;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 1625
    return-void
.end method
