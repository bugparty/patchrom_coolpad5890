.class Lcom/android/gallery3d/app/en;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->a()V

    .line 162
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->b(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/ap;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/android/gallery3d/ui/ap;->layout(IIII)V

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/android/gallery3d/ui/ek;->F(II)V

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    sub-int v1, p4, p2

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/ui/cc;->measure(II)V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cc;->getMeasuredHeight()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v1}, Lcom/android/gallery3d/app/ca;->c(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cc;

    move-result-object v1

    sub-int v2, p5, p3

    sub-int v0, v2, v0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/android/gallery3d/ui/cc;->layout(IIII)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->d(Lcom/android/gallery3d/app/ca;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->e(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/ui/cd;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/app/en;->nS:Lcom/android/gallery3d/app/ca;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/ag;->a(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {v1, p2, v0, p4, p5}, Lcom/android/gallery3d/ui/cd;->layout(IIII)V

    .line 182
    :cond_1
    return-void
.end method
