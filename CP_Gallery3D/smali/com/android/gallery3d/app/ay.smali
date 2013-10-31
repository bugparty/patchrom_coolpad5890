.class Lcom/android/gallery3d/app/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field final synthetic or:Lcom/android/gallery3d/app/eg;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/eg;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/ay;->or:Lcom/android/gallery3d/app/eg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ay;->i(Lcom/android/gallery3d/b/j;)Lcom/android/gallery3d/app/ck;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/android/gallery3d/b/j;)Lcom/android/gallery3d/app/ck;
    .locals 1
    .parameter

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/b/j;->af(I)Z

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/app/ay;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->j(Lcom/android/gallery3d/app/eg;)Lcom/android/gallery3d/app/ck;

    move-result-object v0

    return-object v0
.end method
