.class Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;
.super Landroid/os/Handler;
.source "DMAccountUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DMAccountUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DMAccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DMAccountUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 355
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DMAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DMAccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->mOk:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/DMAccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DMAccountUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->wrongCount:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/DMAccountUnlockScreen;->access$102(Lcom/android/internal/policy/impl/DMAccountUnlockScreen;I)I

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
