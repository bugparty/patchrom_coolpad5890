.class Lcom/android/gallery3d/app/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eC:I

.field final synthetic eb:Lcom/android/gallery3d/app/da;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/da;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/gallery3d/app/y;->eb:Lcom/android/gallery3d/app/da;

    iput p2, p0, Lcom/android/gallery3d/app/y;->eC:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 694
    iget v0, p0, Lcom/android/gallery3d/app/y;->eC:I

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/gallery3d/app/y;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/da;->a(Lcom/android/gallery3d/app/da;Z)Z

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/y;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0}, Lcom/android/gallery3d/app/da;->i(Lcom/android/gallery3d/app/da;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/y;->eb:Lcom/android/gallery3d/app/da;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/da;->b(Lcom/android/gallery3d/app/da;I)V

    .line 699
    iget v0, p0, Lcom/android/gallery3d/app/y;->eC:I

    if-ne v0, v1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/app/y;->eb:Lcom/android/gallery3d/app/da;

    iget-object v0, v0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0066

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
