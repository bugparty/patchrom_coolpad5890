.class public Lcom/android/gallery3d/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private El:Lcom/android/gallery3d/b/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/gallery3d/b/s;

    invoke-direct {v0}, Lcom/android/gallery3d/b/s;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    return-void
.end method


# virtual methods
.method public d(Lcom/android/gallery3d/b/s;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/b/s;->a(Lcom/android/gallery3d/b/s;)V

    .line 48
    return-void
.end method

.method public e(Lcom/android/gallery3d/b/s;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-static {v0}, Lcom/android/gallery3d/b/s;->b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/b/s;->a(Lcom/android/gallery3d/b/s;)V

    .line 52
    return-void
.end method

.method public f(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-static {p1}, Lcom/android/gallery3d/b/s;->c(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/b/s;->c(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    goto :goto_0
.end method

.method public fR()Lcom/android/gallery3d/b/s;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-static {v0}, Lcom/android/gallery3d/b/s;->c(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-static {v0}, Lcom/android/gallery3d/b/s;->c(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    goto :goto_0
.end method

.method public fS()Lcom/android/gallery3d/b/s;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-static {v0}, Lcom/android/gallery3d/b/s;->b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    invoke-static {v0}, Lcom/android/gallery3d/b/s;->b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    goto :goto_0
.end method

.method public g(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/gallery3d/b/s;->b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/aa;->El:Lcom/android/gallery3d/b/s;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/gallery3d/b/s;->b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    goto :goto_0
.end method
