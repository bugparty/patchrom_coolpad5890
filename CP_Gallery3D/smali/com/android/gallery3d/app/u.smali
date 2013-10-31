.class Lcom/android/gallery3d/app/u;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic eb:Lcom/android/gallery3d/app/da;

.field private final eo:[F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 127
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/u;->eo:[F

    return-void
.end method


# virtual methods
.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/u;->eo:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/b;->a([FI)V

    .line 156
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 157
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 158
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

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->a(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/ef;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/android/gallery3d/ui/ef;->layout(IIII)V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/ag;->a(Landroid/app/Activity;)I

    move-result v0

    .line 136
    sub-int v1, p5, p3

    .line 137
    sub-int v2, p4, p2

    .line 139
    iget-object v3, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v3}, Lcom/android/gallery3d/app/da;->b(Lcom/android/gallery3d/app/da;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v3}, Lcom/android/gallery3d/app/da;->c(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/cd;

    move-result-object v3

    invoke-virtual {v3, p2, v0, p4, p5}, Lcom/android/gallery3d/ui/cd;->layout(IIII)V

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v3}, Lcom/android/gallery3d/app/da;->e(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/bf;

    move-result-object v3

    invoke-virtual {v3, v5, v0, v2, v1}, Lcom/android/gallery3d/ui/bf;->layout(IIII)V

    .line 146
    iget-object v1, p0, Lcom/android/gallery3d/app/u;->eo:[F

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v4}, Lcom/android/gallery3d/app/da;->f(Lcom/android/gallery3d/app/da;)F

    move-result v4

    neg-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/b/y;->a([FFFF)V

    .line 148
    iget-object v1, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    iget-object v1, v1, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/android/gallery3d/ui/ek;->F(II)V

    .line 150
    return-void

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v3}, Lcom/android/gallery3d/app/da;->e(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/bf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/u;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v4}, Lcom/android/gallery3d/app/da;->d(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/be;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    goto :goto_0
.end method
