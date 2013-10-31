.class Lcom/android/gallery3d/app/em;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/de;Lcom/android/gallery3d/app/dg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/em;-><init>(Lcom/android/gallery3d/app/de;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->a(Lcom/android/gallery3d/app/de;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->i(Lcom/android/gallery3d/app/de;)V

    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->b(Lcom/android/gallery3d/app/de;)Lcom/android/gallery3d/app/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aF()V

    .line 406
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->h(Lcom/android/gallery3d/app/de;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/app/em;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->h(Lcom/android/gallery3d/app/de;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    return-void
.end method
