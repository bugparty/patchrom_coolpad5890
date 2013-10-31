.class Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;
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
    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    const/4 v1, 0x4

    #setter for: Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->digit:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->access$102(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;I)I

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->access$200(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/FangdaoUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/FangdaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->digit:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/FangdaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/FangdaoUnlockScreen;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method
