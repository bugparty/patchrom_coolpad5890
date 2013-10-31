.class public Lcom/android/gallery3d/ui/ef;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# instance fields
.field private Fl:I

.field private Fm:I

.field private Fn:Z

.field private aY:Lcom/android/gallery3d/ui/ah;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ef;->Fn:Z

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/ef;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private u(Z)V
    .locals 3
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ef;->Fn:Z

    if-ne v0, p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ef;->Fn:Z

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->recycle()V

    .line 43
    :cond_1
    new-instance v1, Lcom/android/gallery3d/ui/bm;

    iget-object v2, p0, Lcom/android/gallery3d/ui/ef;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ef;->Fn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/ef;->Fl:I

    :goto_1
    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    .line 45
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->invalidate()V

    goto :goto_0

    .line 43
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/ef;->Fm:I

    goto :goto_1
.end method


# virtual methods
.method public E(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/android/gallery3d/ui/ef;->Fl:I

    .line 50
    iput p2, p0, Lcom/android/gallery3d/ui/ef;->Fm:I

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->recycle()V

    .line 52
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ef;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ef;->Fn:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ef;->aY:Lcom/android/gallery3d/ui/ah;

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->invalidate()V

    .line 55
    return-void

    :cond_1
    move p1, p2

    .line 52
    goto :goto_0
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, -0x100

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 61
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ef;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/ef;->u(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
