.class Lcom/android/gallery3d/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xs:Lcom/android/gallery3d/ui/bd;

.field final synthetic xt:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bd;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/gallery3d/ui/co;->xs:Lcom/android/gallery3d/ui/bd;

    iput-object p2, p0, Lcom/android/gallery3d/ui/co;->xt:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/ui/co;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bd;->c(Lcom/android/gallery3d/ui/bd;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/co;->xt:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 269
    return-void
.end method
