.class Lcom/android/gallery3d/app/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;

.field final synthetic eC:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ak;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/gallery3d/app/bn;->bU:Lcom/android/gallery3d/app/ak;

    iput p2, p0, Lcom/android/gallery3d/app/bn;->eC:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 774
    iget v0, p0, Lcom/android/gallery3d/app/bn;->eC:I

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/app/bn;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/ak;->a(Lcom/android/gallery3d/app/ak;Z)Z

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/bn;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->l(Lcom/android/gallery3d/app/ak;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 783
    :cond_1
    :goto_0
    return-void

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/bn;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/ak;->b(Lcom/android/gallery3d/app/ak;I)V

    .line 779
    iget v0, p0, Lcom/android/gallery3d/app/bn;->eC:I

    if-ne v0, v1, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/gallery3d/app/bn;->bU:Lcom/android/gallery3d/app/ak;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0067

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
