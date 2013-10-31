.class Lcom/android/gallery3d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ci:Lcom/android/gallery3d/a/h;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/gallery3d/a/j;->ci:Lcom/android/gallery3d/a/h;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/a/j;->ci:Lcom/android/gallery3d/a/h;

    invoke-static {v0}, Lcom/android/gallery3d/a/h;->a(Lcom/android/gallery3d/a/h;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0065

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    return-void
.end method
