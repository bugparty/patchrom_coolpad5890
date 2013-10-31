.class Lcom/android/gallery3d/b/ad;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Fo:Lcom/android/gallery3d/b/o;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/o;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x7d0

    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/b/ad;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {v0}, Lcom/android/gallery3d/b/o;->a(Lcom/android/gallery3d/b/o;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/b/o;->a(Lcom/android/gallery3d/b/o;J)J

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {v0}, Lcom/android/gallery3d/b/o;->b(Lcom/android/gallery3d/b/o;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/b/ad;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {v0}, Lcom/android/gallery3d/b/o;->a(Lcom/android/gallery3d/b/o;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {v2}, Lcom/android/gallery3d/b/o;->a(Lcom/android/gallery3d/b/o;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 66
    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/b/o;->a(Lcom/android/gallery3d/b/o;J)J

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/b/ad;->Fo:Lcom/android/gallery3d/b/o;

    invoke-static {v0}, Lcom/android/gallery3d/b/o;->b(Lcom/android/gallery3d/b/o;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 70
    :cond_1
    sub-long v0, v7, v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/gallery3d/b/ad;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
