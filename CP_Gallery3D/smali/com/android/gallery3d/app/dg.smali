.class Lcom/android/gallery3d/app/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/app/dg;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/dg;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->a(Lcom/android/gallery3d/app/de;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/dg;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->b(Lcom/android/gallery3d/app/de;)Lcom/android/gallery3d/app/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aE()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dg;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->d(Lcom/android/gallery3d/app/de;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/dg;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v1}, Lcom/android/gallery3d/app/de;->c(Lcom/android/gallery3d/app/de;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
