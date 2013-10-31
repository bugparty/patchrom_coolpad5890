.class Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;
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
    .line 337
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 345
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 346
    .local v1, len:I
    if-lez v1, :cond_0

    .line 347
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method
