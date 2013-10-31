.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$6;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Yulong.intent.action.STATUS_BAR_EXPAND_VIEW_MUSIC_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "music"

    const-string v2, "play_pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$6;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 861
    return-void
.end method
