.class Lcom/android/internal/policy/impl/FangdaoUnlockScreen$11;
.super Ljava/lang/Object;
.source "FangdaoUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/FangdaoUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$11;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->access$200(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 273
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 274
    .local v1, len:I
    if-lez v1, :cond_0

    .line 275
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 277
    :cond_0
    return-void
.end method
