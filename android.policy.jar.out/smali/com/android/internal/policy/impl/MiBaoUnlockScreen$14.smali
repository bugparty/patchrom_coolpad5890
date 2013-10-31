.class Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;
.super Ljava/lang/Object;
.source "MiBaoUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->asyncCheckPassword()V
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
    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mPassword:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$400(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiBaoUnlockScreen$14;->this$0:Lcom/android/internal/policy/impl/MiBaoUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->mError:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$400(Lcom/android/internal/policy/impl/MiBaoUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/MiBaoUnlockScreen;->access$502(I)I

    .line 526
    return-void
.end method
