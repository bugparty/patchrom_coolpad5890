.class Lcom/android/gallery3d/app/ek;
.super Lcom/android/gallery3d/ui/ag;
.source "SourceFile"


# instance fields
.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/ui/eh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ag;-><init>(Lcom/android/gallery3d/ui/eh;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 322
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 297
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->j(Lcom/android/gallery3d/app/ca;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 301
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->k(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v1}, Lcom/android/gallery3d/app/ca;->k(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v1, v1, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v1, Landroid/app/Activity;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v2, v0}, Lcom/android/gallery3d/app/ca;->b(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/a/ax;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/ca;->eH()V

    .line 308
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 309
    const-string v3, "filepath"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ca;->eH()V

    goto :goto_0

    .line 319
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v1, p0, Lcom/android/gallery3d/app/ek;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v1}, Lcom/android/gallery3d/app/ca;->l(Lcom/android/gallery3d/app/ca;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
