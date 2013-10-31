.class Lcom/android/gallery3d/ui/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ak;


# instance fields
.field final synthetic BN:Lcom/android/gallery3d/ui/ap;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/ui/er;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dx;-><init>(Lcom/android/gallery3d/ui/ap;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->h(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cx;->onRelease()V

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->i(Lcom/android/gallery3d/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ap;->a(Lcom/android/gallery3d/ui/ap;Z)Z

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->c(Lcom/android/gallery3d/ui/ap;)I

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/gallery3d/ui/dx;->BN:Lcom/android/gallery3d/ui/ap;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ap;->d(Lcom/android/gallery3d/ui/ap;)Lcom/android/gallery3d/ui/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/n;->Y()V

    goto :goto_0
.end method
