.class Lcom/android/gallery3d/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nI:Lcom/android/gallery3d/a/p;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/p;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/gallery3d/a/aj;->nI:Lcom/android/gallery3d/a/p;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/a/aj;->nI:Lcom/android/gallery3d/a/p;

    invoke-static {v0}, Lcom/android/gallery3d/a/p;->a(Lcom/android/gallery3d/a/p;)Lcom/android/gallery3d/app/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->dv()Landroid/content/Context;

    move-result-object v0

    .line 138
    const v1, 0x7f0d00ae

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    return-void
.end method
