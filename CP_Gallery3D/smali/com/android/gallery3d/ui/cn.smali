.class Lcom/android/gallery3d/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic xs:Lcom/android/gallery3d/ui/bd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/gallery3d/ui/cn;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/cn;->n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public n(Lcom/android/gallery3d/b/j;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/ui/cn;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/bd;->a(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/j;)V

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/ui/cn;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/bd;->b(Lcom/android/gallery3d/ui/bd;Lcom/android/gallery3d/b/j;)V

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method
