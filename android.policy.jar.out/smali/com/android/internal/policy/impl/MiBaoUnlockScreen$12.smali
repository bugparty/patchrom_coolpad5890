.class Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;
.super Ljava/lang/Object;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiBaoUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$12;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
