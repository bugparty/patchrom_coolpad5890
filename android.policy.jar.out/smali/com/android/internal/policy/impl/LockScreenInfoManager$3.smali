.class Lcom/android/internal/policy/impl/LockScreenInfoManager$3;
.super Ljava/lang/Object;
.source "LockScreenInfoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenInfoManager;->setAudio(Ljava/lang/String;)V
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
    .line 1235
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    #getter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1800(Lcom/android/internal/policy/impl/LockScreenInfoManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenInfoManager$3;->this$0:Lcom/android/internal/policy/impl/LockScreenInfoManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockScreenInfoManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenInfoManager;->access$1802(Lcom/android/internal/policy/impl/LockScreenInfoManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1244
    :cond_0
    return-void
.end method
