.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;
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
    .line 808
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Yulong.intent.action.STATUS_BAR_EXPAND_VIEW_MUSIC_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "music"

    const-string v2, "pre"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->mContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$1300(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 822
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strSongName is keyguard3 is gothrough="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->strSongName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2700(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tzAlbumArt is keyguard3 is gothrough="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$4;->this$0:Lcom/android/internal/policy/impl/LockScreenWidgetManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenWidgetManager;->tzAlbumArt:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreenWidgetManager;->access$2800(Lcom/android/internal/policy/impl/LockScreenWidgetManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method
