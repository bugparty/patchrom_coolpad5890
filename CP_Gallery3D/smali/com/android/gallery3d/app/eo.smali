.class Lcom/android/gallery3d/app/eo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/cx;


# instance fields
.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 275
    return-void
.end method

.method public I()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->g(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/app/dt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->g(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/app/dt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/a/ax;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->h(Lcom/android/gallery3d/app/ca;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    goto :goto_0
.end method

.method public a(ILcom/android/gallery3d/a/dd;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/cc;->ak(I)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;I)I

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->f(Lcom/android/gallery3d/app/ca;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index-hint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    if-eqz p2, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->f(Lcom/android/gallery3d/app/ca;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media-item-path"

    invoke-virtual {p2}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->g(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/app/dt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/a/ax;)V

    .line 253
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v2}, Lcom/android/gallery3d/app/ca;->f(Lcom/android/gallery3d/app/ca;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/ca;->a(ILandroid/content/Intent;)V

    .line 254
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->f(Lcom/android/gallery3d/app/ca;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media-item-path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/eo;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->i(Lcom/android/gallery3d/app/ca;)V

    .line 280
    :cond_0
    return-void
.end method
