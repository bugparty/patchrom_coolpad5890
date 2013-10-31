.class Lcom/android/gallery3d/app/bl;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;

.field private final eo:[F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ak;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 134
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/bl;->eo:[F

    return-void
.end method


# virtual methods
.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 4
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/app/bl;->eo:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/bl;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v2}, Lcom/android/gallery3d/app/ak;->g(Lcom/android/gallery3d/app/ak;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/bl;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->h(Lcom/android/gallery3d/app/ak;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->i(Lcom/android/gallery3d/app/ak;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/b/y;->a([FFFF)V

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/bl;->eo:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/b;->a([FI)V

    .line 163
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 164
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 165
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->a(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/ef;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/android/gallery3d/ui/ef;->layout(IIII)V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->b(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->eo()V

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/ag;->a(Landroid/app/Activity;)I

    move-result v0

    .line 143
    sub-int v1, p5, p3

    .line 144
    sub-int v2, p4, p2

    .line 146
    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->c(Lcom/android/gallery3d/app/ak;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->d(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/cd;

    move-result-object v3

    invoke-virtual {v3, p2, v0, p4, p5}, Lcom/android/gallery3d/ui/cd;->layout(IIII)V

    .line 152
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->f(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/eo;

    move-result-object v3

    invoke-virtual {v3, v5, v0, v2, v1}, Lcom/android/gallery3d/ui/eo;->layout(IIII)V

    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    iget-object v1, v1, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/android/gallery3d/ui/ek;->F(II)V

    .line 155
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v3}, Lcom/android/gallery3d/app/ak;->f(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/eo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/bl;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v4}, Lcom/android/gallery3d/app/ak;->e(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/be;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/u;)V

    goto :goto_0
.end method
