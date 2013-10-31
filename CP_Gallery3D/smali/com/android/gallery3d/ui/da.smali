.class Lcom/android/gallery3d/ui/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xs:Lcom/android/gallery3d/ui/bd;

.field final synthetic zz:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bd;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/ui/da;->xs:Lcom/android/gallery3d/ui/bd;

    iput p2, p0, Lcom/android/gallery3d/ui/da;->zz:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/ui/da;->xs:Lcom/android/gallery3d/ui/bd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/bd;->a(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/ui/da;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bd;->b(Lcom/android/gallery3d/ui/bd;)Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/da;->zz:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/bk;->a(Landroid/view/Menu;I)V

    .line 219
    return-void
.end method
