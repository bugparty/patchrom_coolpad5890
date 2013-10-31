.class Lcom/android/internal/policy/impl/LockScreenInfoManager$2;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;->setButtonOnClickListener(Landroid/widget/Button;)V
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
    .line 1075
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$2;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$2;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->showDialog()V

    .line 1081
    return-void
.end method
