.class Lcom/android/gallery3d/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic hQ:Ljava/util/HashSet;

.field final synthetic hR:Lcom/android/gallery3d/a/cj;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/cj;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/gallery3d/a/x;->hR:Lcom/android/gallery3d/a/cj;

    iput-object p2, p0, Lcom/android/gallery3d/a/x;->hQ:Ljava/util/HashSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/a/x;->hQ:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method
