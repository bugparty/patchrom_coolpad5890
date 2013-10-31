.class Lcom/android/gallery3d/app/dr;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic EA:Lcom/android/gallery3d/app/dd;

.field private eo:[F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dd;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/dr;->eo:[F

    return-void
.end method


# virtual methods
.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->eo:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/dr;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v2}, Lcom/android/gallery3d/app/dd;->f(Lcom/android/gallery3d/app/dd;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/dr;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v3}, Lcom/android/gallery3d/app/dd;->g(Lcom/android/gallery3d/app/dd;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v3}, Lcom/android/gallery3d/app/dd;->h(Lcom/android/gallery3d/app/dd;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/b/y;->a([FFFF)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->eo:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/b;->a([FI)V

    .line 144
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 145
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 146
    return-void
.end method

.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->a()V

    .line 135
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
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->a(Lcom/android/gallery3d/app/dd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->b(Lcom/android/gallery3d/app/dd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0, v4}, Lcom/android/gallery3d/app/dd;->a(Lcom/android/gallery3d/app/dd;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->c(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/ef;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/android/gallery3d/ui/ef;->layout(IIII)V

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->d(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/app/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->eo()V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 115
    invoke-static {v0}, Lcom/android/gallery3d/app/ag;->a(Landroid/app/Activity;)I

    move-result v2

    .line 116
    sub-int v1, p5, p3

    .line 118
    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    const/4 v0, 0x1

    aget v0, v1, v0

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/dr;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v1}, Lcom/android/gallery3d/app/dd;->e(Lcom/android/gallery3d/app/dd;)Lcom/android/gallery3d/ui/eo;

    move-result-object v1

    sub-int v3, p4, p2

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/gallery3d/ui/eo;->layout(IIII)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 120
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
